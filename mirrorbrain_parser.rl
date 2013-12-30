# vim: ft=ragel
require 'ostruct'
require 'yaml'

#LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\" \        
#            want:%{WANT}e give:%{GIVE}e r:%{MB_REALM}e %{X-MirrorBrain-Mirror}o \
#            %{MB_CONTINENT_CODE}e:%{MB_COUNTRY_CODE}e ASN:%{ASN}e P:%{PFX}e \    
#            size:%{MB_FILESIZE}e %{Range}i" combined_redirect                    
#
#
#192.168.122.1 - - [29/Dec/2013:18:54:41 +0100] "GET /congress/2013/mp4/30c3-5415-de-en-Der_tiefe_Staat_h264-iprod.mp4.torrent HTTP/1.0" 200 11668 "-" "Transmission/2.77"     want:torrent give:torrent r:- -     EU:DE ASN:- P:-     size:126539847 -

$_VERBOSE=true
$DEBUG=false

%%{
  machine mirrorbrain;

  # action
  action mark { marker = p }

  action setDate { @result.date = data[marker..p-1] }
  action setIP { @result.ip = data[marker..p-1] }
  action setRequest { @result.request = data[marker..p-1] }
  action setReturn { @result.return_code = data[marker..p-1] }
  action setSize { @result.size = data[marker..p-1] }
  action setReferer { @result.referer = data[marker..p-1] }
  action setAgent { @result.agent = data[marker..p-1] }
  action setRequestType { @result.request_type = data[marker..p-1] }
  action setGivenType { @result.given_type = data[marker..p-1] }
  action setRegion { @result.region = data[marker..p-1] }
  action setMirror { @result.mirror = data[marker..p-1] }
  action setCountry { @result.country = data[marker..p-1] }
  action setASN { @result.asn = data[marker..p-1] }
  action setNet { @result.net = data[marker..p-1] }
  action setRedirSize { @result.redir_size = data[marker..p-1] }
  action setRedirBytes { @result.redir_bytes = data[marker..p-1] }

  action LogLineFinished {
    @result.date = date
    @result.request = request
  }

  ws = ' ';
  ws0 = ' '{0,};
  eol = /[\r\n]/ | '\r\n';
  date = [^\]]+                                                      >mark %setDate;
  request = [^"]+                                                    >mark %setRequest;
  return = digit+                                                    >mark %setReturn;
  size = digit+                                                      >mark %setSize;
  referer = [^"]+                                                    >mark %setReferer;
  useragent = [^"]+                                                  >mark %setAgent;
  request_type = ( 'file' | 'torrent' | 'redirect' )                 >mark %setRequestType;
  give = ( 'file' | 'torrent' | 'redirect' )                         >mark %setGivenType;
  region = 'r:' alnum+                                               >mark %setRegion;
  mirror = alnum+                                                    >mark %setMirror;
  country = alnum+ ":" alnum+                                        >mark %setCountry;
  asn = 'ASN:' alnum+                                                >mark %setASN;
  ip = [0-9\.]+                                                      >mark %setIP;
  net = 'P:' ip                                                      >mark %setNet; 
  redir_size = 'size:' digit+                                        >mark %setRedirSize;
  redir_bytes = 'bytes:' digit+ '-'?                                 >mark %setRedirBytes;

  log_line = ip ws '-' ws '-' ws '[' date ']' ws '"' request '"' ws 
             return ws size ws '"' referer '"' ws '"' useragent '"' 
             ws ws0 'want:' request_type ws 'give:' give ws region ws
             mirror ws ws0 country ws asn ws net ws ws0 redir_size ws
             redir_bytes eol @LogLineFinished;

  main := log_line;

}%%

module Mirrorbrain
  class Tokenizer

    def initialize
      @result = OpenStruct.new

      %% write data;
    end

    def run(data)
      %% write init;
      %% write exec;

      @result
    end

  end
end

tokenizer = Mirrorbrain::Tokenizer.new
while gets do
  puts tokenizer.run($_).to_yaml
end
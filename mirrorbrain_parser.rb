
# line 1 "mirrorbrain_parser.rl"
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


# line 72 "mirrorbrain_parser.rl"


module Mirrorbrain
  class Tokenizer

    def initialize
      @result = OpenStruct.new

      
# line 30 "mirrorbrain_parser.rb"
class << self
	attr_accessor :_mirrorbrain_actions
	private :_mirrorbrain_actions, :_mirrorbrain_actions=
end
self._mirrorbrain_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 12, 1, 13, 1, 15, 1, 
	17, 2, 2, 14, 2, 16, 17, 3, 
	0, 16, 17
]

class << self
	attr_accessor :_mirrorbrain_key_offsets
	private :_mirrorbrain_key_offsets, :_mirrorbrain_key_offsets=
end
self._mirrorbrain_key_offsets = [
	0, 0, 3, 7, 8, 9, 10, 11, 
	12, 13, 14, 15, 16, 17, 18, 19, 
	21, 24, 26, 29, 30, 31, 32, 33, 
	34, 35, 36, 37, 39, 40, 41, 42, 
	43, 46, 47, 48, 49, 50, 51, 52, 
	53, 54, 55, 58, 59, 60, 61, 62, 
	63, 64, 70, 77, 83, 90, 97, 104, 
	110, 117, 118, 119, 120, 121, 127, 134, 
	135, 136, 139, 143, 145, 146, 147, 148, 
	149, 151, 154, 155, 156, 157, 158, 159, 
	160, 162, 167, 169, 170, 171, 172, 173, 
	174, 175, 176, 177, 178, 179, 180, 181, 
	182, 183, 184, 185, 186, 187, 188, 189, 
	190, 191, 192, 193, 193
]

class << self
	attr_accessor :_mirrorbrain_trans_keys
	private :_mirrorbrain_trans_keys, :_mirrorbrain_trans_keys=
end
self._mirrorbrain_trans_keys = [
	46, 48, 57, 32, 46, 48, 57, 45, 
	32, 45, 32, 91, 93, 93, 32, 34, 
	34, 34, 32, 48, 57, 32, 48, 57, 
	48, 57, 32, 48, 57, 34, 34, 34, 
	32, 34, 34, 34, 32, 32, 119, 97, 
	110, 116, 58, 102, 114, 116, 105, 108, 
	101, 32, 103, 105, 118, 101, 58, 102, 
	114, 116, 105, 108, 101, 32, 114, 58, 
	48, 57, 65, 90, 97, 122, 32, 48, 
	57, 65, 90, 97, 122, 48, 57, 65, 
	90, 97, 122, 32, 48, 57, 65, 90, 
	97, 122, 32, 48, 57, 65, 90, 97, 
	122, 58, 48, 57, 65, 90, 97, 122, 
	48, 57, 65, 90, 97, 122, 32, 48, 
	57, 65, 90, 97, 122, 65, 83, 78, 
	58, 48, 57, 65, 90, 97, 122, 32, 
	48, 57, 65, 90, 97, 122, 80, 58, 
	46, 48, 57, 32, 46, 48, 57, 32, 
	115, 105, 122, 101, 58, 48, 57, 32, 
	48, 57, 98, 121, 116, 101, 115, 58, 
	48, 57, 10, 13, 45, 48, 57, 10, 
	13, 101, 100, 105, 114, 101, 99, 116, 
	111, 114, 114, 101, 110, 101, 100, 105, 
	114, 101, 99, 116, 111, 114, 114, 101, 
	110, 10, 0
]

class << self
	attr_accessor :_mirrorbrain_single_lengths
	private :_mirrorbrain_single_lengths, :_mirrorbrain_single_lengths=
end
self._mirrorbrain_single_lengths = [
	0, 1, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 0, 
	1, 0, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 2, 1, 1, 1, 1, 
	3, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 3, 1, 1, 1, 1, 1, 
	1, 0, 1, 0, 1, 1, 1, 0, 
	1, 1, 1, 1, 1, 0, 1, 1, 
	1, 1, 2, 2, 1, 1, 1, 1, 
	0, 1, 1, 1, 1, 1, 1, 1, 
	0, 3, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 0, 1
]

class << self
	attr_accessor :_mirrorbrain_range_lengths
	private :_mirrorbrain_range_lengths, :_mirrorbrain_range_lengths=
end
self._mirrorbrain_range_lengths = [
	0, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	1, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 3, 3, 3, 3, 3, 3, 3, 
	3, 0, 0, 0, 0, 3, 3, 0, 
	0, 1, 1, 0, 0, 0, 0, 0, 
	1, 1, 0, 0, 0, 0, 0, 0, 
	1, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_mirrorbrain_index_offsets
	private :_mirrorbrain_index_offsets, :_mirrorbrain_index_offsets=
end
self._mirrorbrain_index_offsets = [
	0, 0, 3, 7, 9, 11, 13, 15, 
	17, 19, 21, 23, 25, 27, 29, 31, 
	33, 36, 38, 41, 43, 45, 47, 49, 
	51, 53, 55, 57, 60, 62, 64, 66, 
	68, 72, 74, 76, 78, 80, 82, 84, 
	86, 88, 90, 94, 96, 98, 100, 102, 
	104, 106, 110, 115, 119, 124, 129, 134, 
	138, 143, 145, 147, 149, 151, 155, 160, 
	162, 164, 167, 171, 174, 176, 178, 180, 
	182, 184, 187, 189, 191, 193, 195, 197, 
	199, 201, 206, 209, 211, 213, 215, 217, 
	219, 221, 223, 225, 227, 229, 231, 233, 
	235, 237, 239, 241, 243, 245, 247, 249, 
	251, 253, 255, 257, 258
]

class << self
	attr_accessor :_mirrorbrain_indicies
	private :_mirrorbrain_indicies, :_mirrorbrain_indicies=
end
self._mirrorbrain_indicies = [
	0, 0, 1, 2, 3, 3, 1, 4, 
	1, 5, 1, 6, 1, 7, 1, 8, 
	1, 1, 9, 11, 10, 12, 1, 13, 
	1, 1, 14, 16, 15, 17, 1, 18, 
	1, 19, 20, 1, 21, 1, 22, 23, 
	1, 24, 1, 1, 25, 27, 26, 28, 
	1, 29, 1, 1, 30, 32, 31, 33, 
	1, 33, 34, 1, 35, 1, 36, 1, 
	37, 1, 38, 1, 39, 40, 41, 1, 
	42, 1, 43, 1, 44, 1, 45, 1, 
	46, 1, 47, 1, 48, 1, 49, 1, 
	50, 1, 51, 52, 53, 1, 54, 1, 
	55, 1, 56, 1, 57, 1, 58, 1, 
	59, 1, 60, 60, 60, 1, 61, 62, 
	62, 62, 1, 63, 63, 63, 1, 64, 
	65, 65, 65, 1, 66, 67, 67, 67, 
	1, 68, 67, 67, 67, 1, 69, 69, 
	69, 1, 70, 71, 71, 71, 1, 72, 
	1, 73, 1, 74, 1, 75, 1, 76, 
	76, 76, 1, 77, 78, 78, 78, 1, 
	79, 1, 80, 1, 81, 81, 1, 82, 
	83, 83, 1, 84, 85, 1, 86, 1, 
	87, 1, 88, 1, 89, 1, 90, 1, 
	91, 92, 1, 93, 1, 94, 1, 95, 
	1, 96, 1, 97, 1, 98, 1, 99, 
	1, 100, 101, 102, 99, 1, 103, 104, 
	1, 105, 1, 106, 1, 107, 1, 108, 
	1, 109, 1, 110, 1, 56, 1, 111, 
	1, 112, 1, 113, 1, 114, 1, 110, 
	1, 115, 1, 116, 1, 117, 1, 118, 
	1, 119, 1, 120, 1, 44, 1, 121, 
	1, 122, 1, 123, 1, 124, 1, 120, 
	1, 1, 125, 1, 0
]

class << self
	attr_accessor :_mirrorbrain_trans_targs
	private :_mirrorbrain_trans_targs, :_mirrorbrain_trans_targs=
end
self._mirrorbrain_trans_targs = [
	2, 0, 3, 2, 4, 5, 6, 7, 
	8, 9, 9, 10, 11, 12, 13, 13, 
	14, 15, 16, 17, 16, 18, 19, 18, 
	20, 21, 21, 22, 23, 24, 25, 25, 
	26, 27, 28, 29, 30, 31, 32, 33, 
	95, 102, 34, 35, 36, 37, 38, 39, 
	40, 41, 42, 43, 83, 90, 44, 45, 
	46, 47, 48, 49, 50, 51, 50, 52, 
	53, 52, 53, 54, 55, 56, 57, 56, 
	58, 59, 60, 61, 62, 63, 62, 64, 
	65, 66, 67, 66, 67, 68, 69, 70, 
	71, 72, 73, 74, 73, 75, 76, 77, 
	78, 79, 80, 81, 107, 108, 82, 107, 
	108, 84, 85, 86, 87, 88, 89, 91, 
	92, 93, 94, 96, 97, 98, 99, 100, 
	101, 103, 104, 105, 106, 107
]

class << self
	attr_accessor :_mirrorbrain_trans_actions
	private :_mirrorbrain_trans_actions, :_mirrorbrain_trans_actions=
end
self._mirrorbrain_trans_actions = [
	1, 0, 5, 0, 0, 0, 0, 0, 
	0, 1, 0, 3, 0, 0, 1, 0, 
	7, 0, 1, 9, 0, 1, 11, 0, 
	0, 1, 0, 13, 0, 0, 1, 0, 
	15, 0, 0, 0, 0, 0, 0, 1, 
	1, 1, 0, 0, 0, 17, 0, 0, 
	0, 0, 0, 1, 1, 1, 0, 0, 
	0, 19, 0, 0, 1, 21, 0, 1, 
	23, 0, 0, 0, 0, 1, 25, 0, 
	0, 0, 0, 0, 1, 27, 0, 0, 
	0, 1, 33, 0, 0, 0, 0, 0, 
	0, 0, 1, 29, 0, 0, 0, 0, 
	0, 0, 0, 0, 39, 39, 1, 36, 
	36, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 31
]

class << self
	attr_accessor :mirrorbrain_start
end
self.mirrorbrain_start = 1;
class << self
	attr_accessor :mirrorbrain_first_final
end
self.mirrorbrain_first_final = 107;
class << self
	attr_accessor :mirrorbrain_error
end
self.mirrorbrain_error = 0;

class << self
	attr_accessor :mirrorbrain_en_main
end
self.mirrorbrain_en_main = 1;


# line 81 "mirrorbrain_parser.rl"
    end

    def run(data)
      
# line 270 "mirrorbrain_parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = mirrorbrain_start
end

# line 85 "mirrorbrain_parser.rl"
      
# line 279 "mirrorbrain_parser.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _mirrorbrain_key_offsets[cs]
	_trans = _mirrorbrain_index_offsets[cs]
	_klen = _mirrorbrain_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _mirrorbrain_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _mirrorbrain_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _mirrorbrain_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _mirrorbrain_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _mirrorbrain_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _mirrorbrain_indicies[_trans]
	cs = _mirrorbrain_trans_targs[_trans]
	if _mirrorbrain_trans_actions[_trans] != 0
		_acts = _mirrorbrain_trans_actions[_trans]
		_nacts = _mirrorbrain_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _mirrorbrain_actions[_acts - 1]
when 0 then
# line 20 "mirrorbrain_parser.rl"
		begin
 marker = p 		end
when 1 then
# line 22 "mirrorbrain_parser.rl"
		begin
 @result.date = data[marker..p-1] 		end
when 2 then
# line 23 "mirrorbrain_parser.rl"
		begin
 @result.ip = data[marker..p-1] 		end
when 3 then
# line 24 "mirrorbrain_parser.rl"
		begin
 @result.request = data[marker..p-1] 		end
when 4 then
# line 25 "mirrorbrain_parser.rl"
		begin
 @result.return_code = data[marker..p-1] 		end
when 5 then
# line 26 "mirrorbrain_parser.rl"
		begin
 @result.size = data[marker..p-1] 		end
when 6 then
# line 27 "mirrorbrain_parser.rl"
		begin
 @result.referer = data[marker..p-1] 		end
when 7 then
# line 28 "mirrorbrain_parser.rl"
		begin
 @result.agent = data[marker..p-1] 		end
when 8 then
# line 29 "mirrorbrain_parser.rl"
		begin
 @result.request_type = data[marker..p-1] 		end
when 9 then
# line 30 "mirrorbrain_parser.rl"
		begin
 @result.given_type = data[marker..p-1] 		end
when 10 then
# line 31 "mirrorbrain_parser.rl"
		begin
 @result.region = data[marker..p-1] 		end
when 11 then
# line 32 "mirrorbrain_parser.rl"
		begin
 @result.mirror = data[marker..p-1] 		end
when 12 then
# line 33 "mirrorbrain_parser.rl"
		begin
 @result.country = data[marker..p-1] 		end
when 13 then
# line 34 "mirrorbrain_parser.rl"
		begin
 @result.asn = data[marker..p-1] 		end
when 14 then
# line 35 "mirrorbrain_parser.rl"
		begin
 @result.net = data[marker..p-1] 		end
when 15 then
# line 36 "mirrorbrain_parser.rl"
		begin
 @result.redir_size = data[marker..p-1] 		end
when 16 then
# line 37 "mirrorbrain_parser.rl"
		begin
 @result.redir_bytes = data[marker..p-1] 		end
when 17 then
# line 39 "mirrorbrain_parser.rl"
		begin

    @result.date = date
    @result.request = request
  		end
# line 435 "mirrorbrain_parser.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 86 "mirrorbrain_parser.rl"

      @result
    end

  end
end

tokenizer = Mirrorbrain::Tokenizer.new
while gets do
  puts tokenizer.run($_).to_yaml
end

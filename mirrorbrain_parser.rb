
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


# line 80 "mirrorbrain_parser.rl"


module Mirrorbrain
  class Tokenizer

    def initialize
      @result = OpenStruct.new
      @result.parsed = false

      
# line 31 "mirrorbrain_parser.rb"
class << self
	attr_accessor :_mirrorbrain_actions
	private :_mirrorbrain_actions, :_mirrorbrain_actions=
end
self._mirrorbrain_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 12, 1, 13, 1, 14, 1, 
	15, 1, 16, 1, 17, 1, 19, 2, 
	18, 19
]

class << self
	attr_accessor :_mirrorbrain_key_offsets
	private :_mirrorbrain_key_offsets, :_mirrorbrain_key_offsets=
end
self._mirrorbrain_key_offsets = [
	0, 0, 3, 7, 8, 9, 10, 11, 
	12, 13, 14, 15, 16, 19, 20, 21, 
	22, 23, 24, 25, 26, 27, 28, 29, 
	30, 31, 33, 34, 35, 37, 40, 42, 
	45, 46, 47, 48, 49, 50, 51, 52, 
	53, 55, 56, 57, 58, 59, 63, 64, 
	65, 66, 67, 68, 69, 73, 74, 75, 
	76, 83, 84, 85, 86, 94, 95, 102, 
	103, 104, 105, 106, 107, 114, 115, 116, 
	117, 119, 122, 124, 125, 126, 127, 128, 
	131, 132, 134, 136, 137, 138, 139, 140, 
	141, 144, 149, 152, 159, 166, 173, 180, 
	181, 182, 183, 184, 185, 186, 187, 188, 
	189, 190, 191, 192, 193, 194, 195, 196, 
	197, 198, 199, 200, 201, 202, 203, 204, 
	205, 206, 207, 208, 209, 210, 211, 212, 
	213, 214, 215, 215
]

class << self
	attr_accessor :_mirrorbrain_trans_keys
	private :_mirrorbrain_trans_keys, :_mirrorbrain_trans_keys=
end
self._mirrorbrain_trans_keys = [
	46, 48, 57, 32, 46, 48, 57, 45, 
	32, 45, 32, 91, 93, 93, 32, 34, 
	71, 72, 80, 69, 84, 32, 32, 32, 
	72, 84, 84, 80, 47, 49, 46, 48, 
	49, 34, 32, 48, 57, 32, 48, 57, 
	48, 57, 32, 48, 57, 34, 34, 34, 
	32, 34, 34, 34, 32, 32, 119, 97, 
	110, 116, 58, 45, 102, 114, 116, 32, 
	103, 105, 118, 101, 58, 45, 102, 114, 
	116, 32, 114, 58, 45, 48, 57, 65, 
	90, 97, 122, 32, 32, 32, 32, 45, 
	48, 57, 65, 90, 97, 122, 58, 45, 
	48, 57, 65, 90, 97, 122, 32, 65, 
	83, 78, 58, 45, 48, 57, 65, 90, 
	97, 122, 32, 80, 58, 46, 57, 32, 
	46, 57, 32, 115, 105, 122, 101, 58, 
	45, 48, 57, 32, 45, 98, 10, 13, 
	121, 116, 101, 115, 61, 45, 48, 57, 
	10, 13, 45, 48, 57, 32, 48, 57, 
	32, 48, 57, 65, 90, 97, 122, 32, 
	48, 57, 65, 90, 97, 122, 58, 48, 
	57, 65, 90, 97, 122, 32, 48, 57, 
	65, 90, 97, 122, 105, 108, 101, 101, 
	100, 105, 114, 101, 99, 116, 111, 114, 
	114, 101, 110, 105, 108, 101, 101, 100, 
	105, 114, 101, 99, 116, 111, 114, 114, 
	101, 110, 69, 65, 68, 79, 83, 10, 
	0
]

class << self
	attr_accessor :_mirrorbrain_single_lengths
	private :_mirrorbrain_single_lengths, :_mirrorbrain_single_lengths=
end
self._mirrorbrain_single_lengths = [
	0, 1, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 3, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 0, 1, 1, 0, 1, 0, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 1, 1, 1, 1, 4, 1, 1, 
	1, 1, 1, 1, 4, 1, 1, 1, 
	1, 1, 1, 1, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	0, 1, 2, 1, 1, 1, 1, 1, 
	1, 2, 2, 1, 1, 1, 1, 1, 
	1, 3, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 0, 1
]

class << self
	attr_accessor :_mirrorbrain_range_lengths
	private :_mirrorbrain_range_lengths, :_mirrorbrain_range_lengths=
end
self._mirrorbrain_range_lengths = [
	0, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 1, 1, 1, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	3, 0, 0, 0, 3, 0, 3, 0, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	1, 1, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 1, 1, 3, 3, 3, 3, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0
]

class << self
	attr_accessor :_mirrorbrain_index_offsets
	private :_mirrorbrain_index_offsets, :_mirrorbrain_index_offsets=
end
self._mirrorbrain_index_offsets = [
	0, 0, 3, 7, 9, 11, 13, 15, 
	17, 19, 21, 23, 25, 29, 31, 33, 
	35, 37, 39, 41, 43, 45, 47, 49, 
	51, 53, 55, 57, 59, 61, 64, 66, 
	69, 71, 73, 75, 77, 79, 81, 83, 
	85, 88, 90, 92, 94, 96, 101, 103, 
	105, 107, 109, 111, 113, 118, 120, 122, 
	124, 129, 131, 133, 135, 141, 143, 148, 
	150, 152, 154, 156, 158, 163, 165, 167, 
	169, 171, 174, 177, 179, 181, 183, 185, 
	188, 190, 193, 196, 198, 200, 202, 204, 
	206, 209, 214, 217, 222, 227, 232, 237, 
	239, 241, 243, 245, 247, 249, 251, 253, 
	255, 257, 259, 261, 263, 265, 267, 269, 
	271, 273, 275, 277, 279, 281, 283, 285, 
	287, 289, 291, 293, 295, 297, 299, 301, 
	303, 305, 307, 308
]

class << self
	attr_accessor :_mirrorbrain_trans_targs
	private :_mirrorbrain_trans_targs, :_mirrorbrain_trans_targs=
end
self._mirrorbrain_trans_targs = [
	2, 2, 0, 3, 2, 2, 0, 4, 
	0, 5, 0, 6, 0, 7, 0, 8, 
	0, 0, 9, 10, 9, 11, 0, 12, 
	0, 13, 125, 128, 0, 14, 0, 15, 
	0, 16, 0, 0, 17, 18, 17, 19, 
	0, 20, 0, 21, 0, 22, 0, 23, 
	0, 24, 0, 25, 0, 26, 0, 27, 
	0, 28, 0, 29, 0, 30, 29, 0, 
	31, 0, 32, 31, 0, 33, 0, 0, 
	34, 35, 34, 36, 0, 37, 0, 0, 
	38, 39, 38, 40, 0, 40, 41, 0, 
	42, 0, 43, 0, 44, 0, 45, 0, 
	46, 110, 113, 120, 0, 47, 0, 48, 
	0, 49, 0, 50, 0, 51, 0, 52, 
	0, 53, 95, 98, 105, 0, 54, 0, 
	55, 0, 56, 0, 57, 94, 94, 94, 
	0, 58, 0, 0, 59, 60, 59, 60, 
	61, 93, 93, 93, 0, 62, 0, 63, 
	92, 92, 92, 0, 64, 0, 65, 0, 
	66, 0, 67, 0, 68, 0, 69, 91, 
	91, 91, 0, 70, 0, 71, 0, 72, 
	0, 73, 0, 74, 73, 0, 74, 75, 
	0, 76, 0, 77, 0, 78, 0, 79, 
	0, 80, 90, 0, 81, 0, 82, 83, 
	0, 130, 131, 0, 84, 0, 85, 0, 
	86, 0, 87, 0, 88, 0, 89, 89, 
	0, 130, 131, 89, 89, 0, 81, 90, 
	0, 70, 91, 91, 91, 0, 64, 92, 
	92, 92, 0, 62, 93, 93, 93, 0, 
	58, 94, 94, 94, 0, 96, 0, 97, 
	0, 53, 0, 99, 0, 100, 0, 101, 
	0, 102, 0, 103, 0, 104, 0, 53, 
	0, 106, 0, 107, 0, 108, 0, 109, 
	0, 104, 0, 111, 0, 112, 0, 46, 
	0, 114, 0, 115, 0, 116, 0, 117, 
	0, 118, 0, 119, 0, 46, 0, 121, 
	0, 122, 0, 123, 0, 124, 0, 119, 
	0, 126, 0, 127, 0, 15, 0, 129, 
	0, 14, 0, 0, 130, 0, 0
]

class << self
	attr_accessor :_mirrorbrain_trans_actions
	private :_mirrorbrain_trans_actions, :_mirrorbrain_trans_actions=
end
self._mirrorbrain_trans_actions = [
	1, 1, 0, 5, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 3, 0, 0, 0, 0, 
	0, 1, 1, 1, 0, 0, 0, 0, 
	0, 7, 0, 0, 1, 9, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 11, 
	0, 0, 0, 1, 0, 13, 0, 0, 
	1, 0, 15, 0, 0, 0, 0, 0, 
	1, 17, 0, 0, 0, 0, 0, 0, 
	1, 19, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 1, 1, 1, 0, 21, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 1, 1, 0, 23, 0, 
	0, 0, 0, 0, 1, 1, 1, 1, 
	0, 25, 0, 0, 1, 27, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	1, 1, 1, 0, 29, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 1, 
	1, 1, 0, 31, 0, 0, 0, 0, 
	0, 1, 0, 33, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 0, 35, 0, 1, 1, 
	0, 39, 39, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 39, 39, 0, 0, 0, 35, 0, 
	0, 31, 0, 0, 0, 0, 29, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	25, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 37, 0, 0
]

class << self
	attr_accessor :mirrorbrain_start
end
self.mirrorbrain_start = 1;
class << self
	attr_accessor :mirrorbrain_first_final
end
self.mirrorbrain_first_final = 130;
class << self
	attr_accessor :mirrorbrain_error
end
self.mirrorbrain_error = 0;

class << self
	attr_accessor :mirrorbrain_en_main
end
self.mirrorbrain_en_main = 1;


# line 90 "mirrorbrain_parser.rl"
    end

    def run(data)
      
# line 292 "mirrorbrain_parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = mirrorbrain_start
end

# line 94 "mirrorbrain_parser.rl"
      
# line 301 "mirrorbrain_parser.rb"
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
 @result.request_method = data[marker..p-1] 		end
when 4 then
# line 25 "mirrorbrain_parser.rl"
		begin
 @result.request_path = data[marker..p-1] 		end
when 5 then
# line 26 "mirrorbrain_parser.rl"
		begin
 @result.request_proto = data[marker..p-1] 		end
when 6 then
# line 27 "mirrorbrain_parser.rl"
		begin
 @result.return_code = data[marker..p-1] 		end
when 7 then
# line 28 "mirrorbrain_parser.rl"
		begin
 @result.size = data[marker..p-1] 		end
when 8 then
# line 29 "mirrorbrain_parser.rl"
		begin
 @result.referer = data[marker..p-1] 		end
when 9 then
# line 30 "mirrorbrain_parser.rl"
		begin
 @result.agent = data[marker..p-1] 		end
when 10 then
# line 31 "mirrorbrain_parser.rl"
		begin
 @result.request_type = data[marker..p-1] 		end
when 11 then
# line 32 "mirrorbrain_parser.rl"
		begin
 @result.given_type = data[marker..p-1] 		end
when 12 then
# line 33 "mirrorbrain_parser.rl"
		begin
 @result.region = data[marker..p-1] 		end
when 13 then
# line 34 "mirrorbrain_parser.rl"
		begin
 @result.mirror = data[marker..p-1] 		end
when 14 then
# line 35 "mirrorbrain_parser.rl"
		begin
 @result.country = data[marker..p-1] 		end
when 15 then
# line 36 "mirrorbrain_parser.rl"
		begin
 @result.asn = data[marker..p-1] 		end
when 16 then
# line 37 "mirrorbrain_parser.rl"
		begin
 @result.net = data[marker..p-1] 		end
when 17 then
# line 38 "mirrorbrain_parser.rl"
		begin
 @result.redir_size = data[marker..p-1] 		end
when 18 then
# line 39 "mirrorbrain_parser.rl"
		begin
 @result.redir_bytes = data[marker..p-1] 		end
when 19 then
# line 41 "mirrorbrain_parser.rl"
		begin

    @result.parsed = true
  		end
# line 463 "mirrorbrain_parser.rb"
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

# line 95 "mirrorbrain_parser.rl"

      @result
    end

  end
end

CONG = /\/congress\/2013\//

tokenizer = Mirrorbrain::Tokenizer.new
sums = Hash.new { |h,k| h[k] = 0 }
while gets do
  r = tokenizer.run($_)
  next unless r.request_method == 'GET'
  next unless r.given_type == 'redirect'
  next unless CONG.match r.request_path
  #puts [r.mirror, r.redir_size].join(',')
  sums[r.mirror] += r.redir_size.to_i
end

sums.each { |m,s| 
  printf "%s = %d mb\n", m, s/1024/1024
}

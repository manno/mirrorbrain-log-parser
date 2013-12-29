
# line 1 "mirrorbrain_parser.rl"
# vim: ft=ragel
require 'ostruct'

$_VERBOSE=true
$DEBUG=false

#192.168.122.1 - - [29/Dec/2013:18:54:41 +0100] "GET /congress/2013/mp4/30c3-5415-de-en-Der_tiefe_Staat_h264-iprod.mp4.torrent HTTP/1.0" 200 11668 "-" "Transmission/2.77"     want:torrent give:torrent r:- -     EU:DE ASN:- P:-     size:126539847 -
#192.168.122.1 - - [29/Dec/2013:18:54:42 +0100] "GET /congress/2013/mp4/30c3-5529-en-Hardening_hardware_and_choosing_a_goodBIOS_h264-hq.mp4 HTTP/1.0" 302 297 "http://media.ccc.de/browse/congress/2013/30C3_-_5529_-_en_-_saal_2_-_201312271830_-_hardening_hardware_and_choosing_a_goodbios_-_peter_stuge.html" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36"     want:file give:redirect r:region c3media.vsos.ethz.ch     EU:AT ASN:1853 P:193.170.0.0/15     size:225198139 bytes=29927145-
#


#LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\" \        
#            want:%{WANT}e give:%{GIVE}e r:%{MB_REALM}e %{X-MirrorBrain-Mirror}o \
#            %{MB_CONTINENT_CODE}e:%{MB_COUNTRY_CODE}e ASN:%{ASN}e P:%{PFX}e \    
#            size:%{MB_FILESIZE}e %{Range}i" combined_redirect                    

module Mirrorbrain
  module Parser

    
# line 55 "mirrorbrain_parser.rl"


    
# line 28 "mirrorbrain_parser.rb"
class << self
	attr_accessor :_mirrorbrain_key_offsets
	private :_mirrorbrain_key_offsets, :_mirrorbrain_key_offsets=
end
self._mirrorbrain_key_offsets = [
	0, 0, 1, 2, 3, 4, 5, 6, 
	7, 8, 9, 10, 11, 12, 13, 14, 
	15, 16, 17, 18, 19, 20, 21, 22, 
	23, 24, 25, 26, 27, 28, 29, 30, 
	31, 32, 33, 34, 35, 36, 37, 38, 
	39, 40, 41, 42, 43, 44, 45, 46, 
	47, 48, 49, 50, 51, 52, 53, 54, 
	55, 56, 57, 58, 59, 60, 61, 62, 
	63, 64, 65, 66, 67, 68, 70, 71, 
	72, 73, 79, 86, 94, 102, 110, 118, 
	119, 120, 121, 122, 123, 125, 128, 130, 
	133, 134, 135, 136, 137, 138, 140, 146, 
	153, 154, 155, 161, 168, 169, 170, 171, 
	172, 173, 174, 176, 177, 178, 179, 180, 
	181, 182, 183, 184, 185, 187, 188, 189, 
	190, 191, 192, 193, 199, 206, 212, 219, 
	226, 233, 239, 246, 247, 248, 249, 250, 
	256, 263, 264, 265, 266, 267, 268, 269, 
	270, 271, 272, 273, 274, 275, 276, 277, 
	278, 279, 280, 281, 282, 283, 284, 285, 
	287, 288, 289, 290, 291, 293, 296, 297, 
	298, 299, 300, 301, 302, 304, 305, 306, 
	307, 308, 309, 310, 311, 312, 313, 314, 
	315, 316, 317, 318, 319, 322
]

class << self
	attr_accessor :_mirrorbrain_trans_keys
	private :_mirrorbrain_trans_keys, :_mirrorbrain_trans_keys=
end
self._mirrorbrain_trans_keys = [
	100, 123, 52, 125, 46, 100, 123, 52, 
	125, 46, 100, 123, 52, 125, 46, 100, 
	123, 52, 125, 32, 45, 32, 45, 32, 
	91, 100, 123, 49, 44, 50, 125, 47, 
	119, 47, 100, 123, 52, 125, 58, 100, 
	123, 49, 44, 50, 125, 58, 100, 123, 
	49, 44, 50, 125, 58, 100, 123, 49, 
	44, 50, 125, 32, 43, 100, 123, 52, 
	125, 93, 32, 34, 71, 80, 69, 84, 
	47, 48, 57, 65, 90, 97, 122, 72, 
	48, 57, 65, 90, 97, 122, 72, 84, 
	48, 57, 65, 90, 97, 122, 72, 84, 
	48, 57, 65, 90, 97, 122, 72, 80, 
	48, 57, 65, 90, 97, 122, 47, 72, 
	48, 57, 65, 90, 97, 122, 49, 46, 
	48, 34, 32, 48, 57, 32, 48, 57, 
	48, 57, 32, 48, 57, 34, 104, 116, 
	116, 112, 47, 115, 48, 57, 65, 90, 
	97, 122, 34, 48, 57, 65, 90, 97, 
	122, 32, 34, 48, 57, 65, 90, 97, 
	122, 34, 48, 57, 65, 90, 97, 122, 
	32, 119, 97, 110, 116, 58, 102, 116, 
	105, 108, 101, 32, 103, 105, 118, 101, 
	58, 102, 116, 105, 108, 101, 32, 114, 
	58, 48, 57, 65, 90, 97, 122, 32, 
	48, 57, 65, 90, 97, 122, 48, 57, 
	65, 90, 97, 122, 32, 48, 57, 65, 
	90, 97, 122, 32, 48, 57, 65, 90, 
	97, 122, 58, 48, 57, 65, 90, 97, 
	122, 48, 57, 65, 90, 97, 122, 32, 
	48, 57, 65, 90, 97, 122, 65, 83, 
	78, 58, 48, 57, 65, 90, 97, 122, 
	32, 48, 57, 65, 90, 97, 122, 80, 
	58, 100, 123, 52, 125, 46, 100, 123, 
	52, 125, 46, 100, 123, 52, 125, 46, 
	100, 123, 52, 125, 32, 32, 115, 105, 
	122, 101, 58, 48, 57, 32, 48, 57, 
	98, 121, 116, 101, 115, 58, 48, 57, 
	111, 114, 114, 101, 110, 116, 111, 114, 
	114, 101, 110, 116, 47, 79, 83, 45, 
	48, 57, 0
]

class << self
	attr_accessor :_mirrorbrain_single_lengths
	private :_mirrorbrain_single_lengths, :_mirrorbrain_single_lengths=
end
self._mirrorbrain_single_lengths = [
	0, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 2, 1, 1, 
	1, 0, 1, 2, 2, 2, 2, 1, 
	1, 1, 1, 1, 0, 1, 0, 1, 
	1, 1, 1, 1, 1, 2, 0, 1, 
	1, 1, 0, 1, 1, 1, 1, 1, 
	1, 1, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 2, 1, 1, 1, 
	1, 1, 1, 0, 1, 0, 1, 1, 
	1, 0, 1, 1, 1, 1, 1, 0, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 2, 
	1, 1, 1, 1, 0, 1, 1, 1, 
	1, 1, 1, 1, 0, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 0
]

class << self
	attr_accessor :_mirrorbrain_range_lengths
	private :_mirrorbrain_range_lengths, :_mirrorbrain_range_lengths=
end
self._mirrorbrain_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 3, 3, 3, 3, 3, 3, 0, 
	0, 0, 0, 0, 1, 1, 1, 1, 
	0, 0, 0, 0, 0, 0, 3, 3, 
	0, 0, 3, 3, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 3, 3, 3, 3, 3, 
	3, 3, 3, 0, 0, 0, 0, 3, 
	3, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 1, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0
]

class << self
	attr_accessor :_mirrorbrain_index_offsets
	private :_mirrorbrain_index_offsets, :_mirrorbrain_index_offsets=
end
self._mirrorbrain_index_offsets = [
	0, 0, 2, 4, 6, 8, 10, 12, 
	14, 16, 18, 20, 22, 24, 26, 28, 
	30, 32, 34, 36, 38, 40, 42, 44, 
	46, 48, 50, 52, 54, 56, 58, 60, 
	62, 64, 66, 68, 70, 72, 74, 76, 
	78, 80, 82, 84, 86, 88, 90, 92, 
	94, 96, 98, 100, 102, 104, 106, 108, 
	110, 112, 114, 116, 118, 120, 122, 124, 
	126, 128, 130, 132, 134, 136, 139, 141, 
	143, 145, 149, 154, 160, 166, 172, 178, 
	180, 182, 184, 186, 188, 190, 193, 195, 
	198, 200, 202, 204, 206, 208, 211, 215, 
	220, 222, 224, 228, 233, 235, 237, 239, 
	241, 243, 245, 248, 250, 252, 254, 256, 
	258, 260, 262, 264, 266, 269, 271, 273, 
	275, 277, 279, 281, 285, 290, 294, 299, 
	304, 309, 313, 318, 320, 322, 324, 326, 
	330, 335, 337, 339, 341, 343, 345, 347, 
	349, 351, 353, 355, 357, 359, 361, 363, 
	365, 367, 369, 371, 373, 375, 377, 379, 
	382, 384, 386, 388, 390, 392, 395, 397, 
	399, 401, 403, 405, 407, 409, 411, 413, 
	415, 417, 419, 421, 423, 425, 427, 429, 
	431, 433, 435, 437, 439, 442
]

class << self
	attr_accessor :_mirrorbrain_trans_targs
	private :_mirrorbrain_trans_targs, :_mirrorbrain_trans_targs=
end
self._mirrorbrain_trans_targs = [
	2, 0, 3, 0, 4, 0, 5, 0, 
	6, 0, 7, 0, 8, 0, 9, 0, 
	10, 0, 11, 0, 12, 0, 13, 0, 
	14, 0, 15, 0, 16, 0, 17, 0, 
	18, 0, 19, 0, 20, 0, 21, 0, 
	22, 0, 23, 0, 24, 0, 25, 0, 
	26, 0, 27, 0, 28, 0, 29, 0, 
	30, 0, 31, 0, 32, 0, 33, 0, 
	34, 0, 35, 0, 36, 0, 37, 0, 
	38, 0, 39, 0, 40, 0, 41, 0, 
	42, 0, 43, 0, 44, 0, 45, 0, 
	46, 0, 47, 0, 48, 0, 49, 0, 
	50, 0, 51, 0, 52, 0, 53, 0, 
	54, 0, 55, 0, 56, 0, 57, 0, 
	58, 0, 59, 0, 60, 0, 61, 0, 
	62, 0, 63, 0, 64, 0, 65, 0, 
	66, 0, 67, 0, 68, 0, 69, 0, 
	70, 186, 0, 71, 0, 72, 0, 73, 
	0, 74, 74, 74, 0, 75, 74, 74, 
	74, 0, 75, 76, 74, 74, 74, 0, 
	75, 77, 74, 74, 74, 0, 75, 78, 
	74, 74, 74, 0, 79, 75, 74, 74, 
	74, 0, 80, 0, 81, 0, 82, 0, 
	83, 0, 84, 0, 85, 0, 86, 85, 
	0, 87, 0, 88, 87, 0, 89, 0, 
	90, 0, 91, 0, 92, 0, 93, 0, 
	94, 185, 0, 95, 95, 95, 0, 96, 
	95, 95, 95, 0, 97, 0, 98, 0, 
	99, 99, 99, 0, 100, 99, 99, 99, 
	0, 101, 0, 102, 0, 103, 0, 104, 
	0, 105, 0, 106, 0, 107, 179, 0, 
	108, 0, 109, 0, 110, 0, 111, 0, 
	112, 0, 113, 0, 114, 0, 115, 0, 
	116, 0, 117, 173, 0, 118, 0, 119, 
	0, 120, 0, 121, 0, 122, 0, 123, 
	0, 124, 124, 124, 0, 125, 124, 124, 
	124, 0, 126, 126, 126, 0, 127, 126, 
	126, 126, 0, 127, 128, 128, 128, 0, 
	129, 128, 128, 128, 0, 130, 130, 130, 
	0, 131, 130, 130, 130, 0, 132, 0, 
	133, 0, 134, 0, 135, 0, 136, 136, 
	136, 0, 137, 136, 136, 136, 0, 138, 
	0, 139, 0, 140, 0, 141, 0, 142, 
	0, 143, 0, 144, 0, 145, 0, 146, 
	0, 147, 0, 148, 0, 149, 0, 150, 
	0, 151, 0, 152, 0, 153, 0, 154, 
	0, 155, 0, 156, 0, 157, 0, 158, 
	0, 159, 0, 159, 160, 0, 161, 0, 
	162, 0, 163, 0, 164, 0, 165, 0, 
	166, 165, 0, 167, 0, 168, 0, 169, 
	0, 170, 0, 171, 0, 172, 0, 188, 
	0, 174, 0, 175, 0, 176, 0, 177, 
	0, 178, 0, 120, 0, 180, 0, 181, 
	0, 182, 0, 183, 0, 184, 0, 110, 
	0, 94, 0, 187, 0, 71, 0, 189, 
	188, 0, 0, 0
]

class << self
	attr_accessor :mirrorbrain_start
end
self.mirrorbrain_start = 1;
class << self
	attr_accessor :mirrorbrain_first_final
end
self.mirrorbrain_first_final = 188;
class << self
	attr_accessor :mirrorbrain_error
end
self.mirrorbrain_error = 0;

class << self
	attr_accessor :mirrorbrain_en_main
end
self.mirrorbrain_en_main = 1;


# line 58 "mirrorbrain_parser.rl"

    def Parser.parse(data)
      @result = OpenStruct.new

      
# line 289 "mirrorbrain_parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = mirrorbrain_start
end

# line 63 "mirrorbrain_parser.rl"
      
# line 298 "mirrorbrain_parser.rb"
begin
	_klen, _trans, _keys = nil
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

# line 64 "mirrorbrain_parser.rl"

      @result
    end

  end
end

while gets do
  p Mirrorbrain::Parser.parse($_)
end

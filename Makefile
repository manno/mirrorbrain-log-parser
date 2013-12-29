all:
	ragel -s -R mirrorbrain_parser.rl
	ruby mirrorbrain_parser.rb example.log 

#
# Proyecto Traductores
# 
# Integrantes:
# 	Andres Navarro      11-10688
# 	Marisela Del Valle  11-10217
#
# Fecha Ultima Modificacion: 
# 	30/04/2015

require "./Token.rb"
require "./InvalidWord.rb"



class Lexer

	def initialize
		@tokens = Array.new
		@invalids = Array.new
	end

	def get_tokens
		return @tokens
	end

	def get_invalids
		return @invalids
	end

	def print_tokens
		@tokens.each do |token|
			print "token #{token.get_type} value (#{token.get_value}) "
			puts "at line: #{token.get_nline}, column: #{token.get_ncolumn}" 
		end
	end

	def print_invalids
		@invalids.each do |invalids|
			print "Error: Unexpected character: \"#{invalids.get_value}\" "
			puts "at line: #{invalids.get_nline}, column: #{invalids.get_ncolumn}"  
		end
	end
	
	def read(file)
		nline = 0
		comment = false
		file.each_line do |line|
			nline +=1
			ncolumn = 1

			while line != ""				
				case line

				when /^(\{\-|\-\})/
					word = line[/^(\{\-|\-\})/]
					if word == "\{\-"
						comment = true
					elsif word == "\-\}"
						comment = false 
					end
					line = line.partition(word).last
					ncolumn += word.size()

				when /^(true|false|read|write)/
					word = line[/^(true|false|read|write)/]
					line = line.partition(word).last
					if !comment then
						if word == "true" 
							@tokens << Token.new("TRUE",word,nline,ncolumn)
						elsif word == "false" 
							@tokens << Token.new("FALSE",word,nline,ncolumn)
						elsif word == "read"
							@tokens << Token.new("READ",word,nline,ncolumn)
						elsif word == "write"
							@tokens << Token.new("WRITE",word,nline,ncolumn)
					 	end
					 end
					 ncolumn += word.size()
					 
				when /^[a-zA-Z][a-zA-Z0-9_]*/
					word = line[/^[a-zA-Z][a-zA-Z0-9_]*/]
					line = line.partition(word).last
					if !comment then
						@tokens << Token.new("INDENTIFIER",word,nline,ncolumn)
					end
					ncolumn += word.size()

				when /^[0-9][0-9]*/
					word = line[/^[0-9][0-9]*/]
					line = line.partition(word).last
					if !comment then
						@tokens << Token.new("NUMBER",word,nline,ncolumn)
					end
					ncolumn += word.size()

				when /^(\\\/|\/\\|\^)/
					word = line[/^(\\\/|\/\\|\^)/]
					line = line.partition(word).last
					if !comment then
						if word == "\^" 
							 @tokens << Token.new("BOOLEAN OPERATION",word,nline,ncolumn)
						elsif word == "\\\/" 
							@tokens << Token.new("BOOLEAN OPERATION",word,nline,ncolumn)
						elsif word == "\/\\" 
							@tokens << Token.new("BOOLEAN OPERATION",word,nline,ncolumn)
						end
					end
					ncolumn += word.size()
					
				when /^(<(\||\\|\/|\-|\_|\s)>|#)/
					word = line[/^(<(\||\\|\/|\-|\_|\s)>|#)/]
					line = line.partition(word).last
					if !comment then
						if word == "#" then 
							@tokens << Token.new("CANVAS",word,nline,ncolumn)
						else
							@tokens << Token.new("CANVAS",word[1],nline,ncolumn)
						end
					end
					ncolumn += word.size()

				when /^(>=|<=|!=|>|<|=)/
					word = line[/^(>=|<=|!=|>|<|=)/]
					line = line.partition(word).last
					if !comment then
						if word == ">="
							@tokens << Token.new("MORE EQUAL",word,nline,ncolumn)
						elsif word == "<="
							@tokens << Token.new("LESS EQUAL",word,nline,ncolumn)
						elsif word == "!="
							@tokens << Token.new("INEQUAL",word,nline,ncolumn)
						elsif word == ">"
							@tokens << Token.new("MORE",word,nline,ncolumn)
						elsif word == "<"
							@tokens << Token.new("LESS",word,nline,ncolumn)
						elsif word == "="
							@tokens << Token.new("EQUAL",word,nline,ncolumn)
						end
					end
					ncolumn += word.size()

				when /^[!%@]/
					word = line[/^[!%@]/]
					line = line.partition(word).last
					if !comment then
						if word == "!"
							@tokens << Token.new("EXCLAMATION MARK",word,nline,ncolumn)
						elsif word == "%"
							@tokens << Token.new("PERCENT",word,nline,ncolumn)
						elsif word == "@"
							@tokens << Token.new("AT",word,nline,ncolumn)
						end
					end
					ncolumn += word.size()

				when /^(\+|-|\*|\/)/
					word = line[/^(\+|-|\*|\/)/]
					line = line.partition(word).last
					if !comment then
						if word == "\+"
							@tokens << Token.new("PLUS",word,nline,ncolumn)
						elsif word == "-"
							@tokens << Token.new("MINUS",word,nline,ncolumn)
						elsif word == "\*"
							@tokens << Token.new("TIMES",word,nline,ncolumn)
						elsif word == "\/"
							@tokens << Token.new("OBELUS",word,nline,ncolumn)
						
						end
					end
					ncolumn += word.size()

				when /^[:|$']/
					word = line[/^[:|$']/]
					line = line.partition(word).last
					if !comment then
						if word == ":"
							@tokens << Token.new("COLON",word,nline,ncolumn)
						elsif word == "|"
							@tokens << Token.new("PIPE",word,nline,ncolumn)
						elsif word == "$"
							@tokens << Token.new("DOLLAR",word,nline,ncolumn)
						elsif word == "'"
							@tokens << Token.new("APOSTROPHE",word,nline,ncolumn)
						end
					end
					ncolumn += word.size()

				when /^(\{|\}|\[|\]|\(|\)|\?|;|\.\.)/
					word = line[/^(\{|\}|\[|\]|\(|\)|\?|;|\.\.)/]
					line = line.partition(word).last
					if !comment then
						if word == "{"
							@tokens << Token.new("LCURLY",word,nline,ncolumn)
						elsif word == "}"
							@tokens << Token.new("RCURLY",word,nline,ncolumn)
						elsif word == "["
							@tokens << Token.new("LBRACKET",word,nline,ncolumn)
						elsif word == "]"
							@tokens << Token.new("RBRACKET",word,nline,ncolumn)
						elsif word == "("
							@tokens << Token.new("LPARENTHESIS",word,nline,ncolumn)
						elsif word == ")"
							@tokens << Token.new("RPARENTHESIS",word,nline,ncolumn)
						elsif word == "?"
							@tokens << Token.new("INTERROGATION MARK",word,nline,ncolumn)
						elsif word == ";"
							@tokens << Token.new("SEMI COLON",word,nline,ncolumn)
						elsif word == "\.\."
							@tokens << Token.new("DOUBLE DOT",word,nline,ncolumn)
						end
					end
					ncolumn += word.size()

				when /^\s/
					line = line.partition(/^\s/).last
					ncolumn += 1

				when /^[^\s\w-]+/
					word = line[/^[^\s\w-]+/]
					line = line.partition(word).last
					if !comment then
						@invalids << InvalidWord.new(word,nline,ncolumn)
					end
					ncolumn += word.size()

				else
					word = line[/^\S+/]
					line = line.partition(word).last
					if !comment then
						@invalids << InvalidWord.new(word,nline,ncolumn)
					end
					ncolumn += word.size()
				end
			end
		end	
	end
end
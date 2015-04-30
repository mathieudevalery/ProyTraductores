#
# Proyecto Traductores
# 
# Integrantes:
# 	Andres Navarro      11-10688
# 	Marisela Del Valle  11-10217
#
# Fecha Ultima Modificacion: 
# 	29/04/2015

require "./Lexer.rb"

name_file = ARGV[0]
file = open(name_file,"r")
puts "./lanscii #{name_file}"
token = Lexer.new
token.read(file)
if token.get_invalids.size > 0 
	token.print_invalids
else 
	token.print_tokens
end

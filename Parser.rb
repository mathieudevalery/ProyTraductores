#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'
class Parser < Racc::Parser

module_eval(<<'...end Parser.y/module_eval...', 'Parser.y', 170)

require "./Clases.rb"
require "./Table.rb"
	# Inicializacion de la clase parser cuyo parametro de entrada es el arreglo de tokens
	def initialize(tokens)
		@tokens = tokens
		@AST = nil
	end

	# Metodo principal del parser realiza el analisis sintactico 
	def parser
		do_parse
	end
	# Metodo que itera sobre el arreglo de tokens
	def next_token
		@tokens.next_token
	end
...end Parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    26,    26,    98,    26,    26,    26,    26,    23,    11,    26,
    43,     9,    53,    54,    55,    51,    52,    63,    62,    64,
    65,    66,    67,    58,    56,    57,    61,    11,    60,    59,
     9,    53,    54,    55,    11,     8,    10,    11,    25,    97,
   105,   106,    99,   109,    76,    92,    22,     4,    13,    14,
    11,    31,    11,    75,     8,    10,     3,     3,    21,   nil,
    20,   nil,    33,    31,   nil,    39,    40,   nil,   nil,    11,
    38,    42,    41,   nil,    33,    31,   nil,    39,    40,    32,
   nil,    11,    38,    42,    41,   nil,    33,    31,   nil,    39,
    40,    32,   nil,    11,    38,    42,    41,   nil,    33,    31,
   nil,    39,    40,    32,   nil,    11,    38,    42,    41,   nil,
    33,    31,   nil,    39,    40,    32,   nil,    11,    38,    42,
    41,   nil,    33,    31,   nil,    39,    40,    32,   nil,    11,
    38,    42,    41,   nil,    33,    31,   nil,    39,    40,    32,
   nil,    11,    38,    42,    41,   nil,    33,    31,   nil,    39,
    40,    32,   nil,    11,    38,    42,    41,   nil,    33,    31,
   nil,    39,    40,    32,   nil,    11,    38,    42,    41,   nil,
    33,    31,   nil,    39,    40,    32,   nil,    11,    38,    42,
    41,   nil,    33,    31,   nil,    39,    40,    32,   nil,    11,
    38,    42,    41,   nil,    33,    31,   nil,    39,    40,    32,
   nil,    11,    38,    42,    41,   nil,    33,    31,   nil,    39,
    40,    32,   nil,    11,    38,    42,    41,   nil,    33,    31,
   nil,    39,    40,    32,   nil,    11,    38,    42,    41,   nil,
    33,    31,   nil,    39,    40,    32,   nil,    11,    38,    42,
    41,   nil,    33,    31,   nil,    39,    40,    32,   nil,    11,
    38,    42,    41,   nil,    33,    31,   nil,    39,    40,    32,
   nil,    11,    38,    42,    41,   nil,    33,    31,   nil,    39,
    40,    32,   nil,    11,    38,    42,    41,   nil,    33,    31,
   nil,    39,    40,    32,   nil,    11,    38,    42,    41,   nil,
    33,    31,   nil,    39,    40,    32,   nil,    11,    38,    42,
    41,   nil,    33,    31,   nil,    39,    40,    32,   nil,    11,
    38,    42,    41,   nil,    33,    31,   nil,    39,    40,    32,
   nil,    11,    38,    42,    41,   nil,    33,    31,   nil,    39,
    40,    32,   nil,    11,    38,    42,    41,   nil,    33,    31,
   nil,    39,    40,    32,   nil,    11,    38,    42,    41,   nil,
    33,   nil,   nil,    39,    40,    32,   nil,    11,    38,    42,
    41,   nil,   nil,    72,    53,    54,    55,    32,    53,    54,
    55,    51,    52,    63,    62,    64,    65,    66,    67,    58,
    56,    57,    61,   101,    60,    59,    53,    54,    55,    51,
    52,    63,    62,    64,    65,    66,    67,    58,    56,    57,
    61,   nil,    60,    59,    74,    73,   nil,    53,    54,    55,
    51,    52,    63,    62,    64,    65,    66,    67,    58,    56,
    57,    61,   nil,    60,    59,   100,   nil,    53,    54,    55,
    51,    52,    63,    62,    64,    65,    66,    67,    58,    56,
    57,    61,   nil,    60,    59,   107,   nil,    53,    54,    55,
    51,    52,    63,    62,    64,    65,    66,    67,    58,    56,
    57,    61,   nil,    60,    59,    53,    54,    55,    51,    52,
    63,    62,    64,    65,    66,    67,    58,    56,    57,    61,
   nil,    60,    59,    53,    54,    55,    51,    52,    63,    62,
    64,    65,    66,    67,    58,    56,    57,    61,   nil,    60,
    59,    53,    54,    55,    51,    52,    63,    62,    64,    65,
    66,    67,    58,    56,    57,    61,    53,    54,    55,    51,
    52,    63,    62,    64,    65,    66,    67,    58,    56,    57,
    61,    53,    54,    55,    51,    52,    63,    62,    64,    65,
    66,    67,    58,    56,    57,    61,    13,    14,    11,    13,
    14,    11,   nil,   nil,     3,   nil,    21,     3,    20,    21,
   nil,    20,    13,    14,    11,    13,    14,    11,   nil,   nil,
     3,   nil,    21,     3,    20,    21,   nil,    20,    13,    14,
    11,    13,    14,    11,   nil,   nil,     3,   nil,    21,     3,
    20,    21,   nil,    20,    53,    54,    55,    51,    52,    63,
    62,    64,    65,    66,    67,    58,    56,    13,    14,    11,
   nil,   nil,   nil,   nil,   nil,     3,   nil,    21,   nil,    20,
    53,    54,    55,    51,    52,    63,    62,    64,    65,    66,
    67,    58,    53,    54,    55,    51,    52,    63,    62,    64,
    65,   -55,   -55,    53,    54,    55,    51,    52,    63,    62,
    64,    65,   -55,   -55,    53,    54,    55,    51,    52,   -55,
   -55,   -55,   -55,    53,    54,    55,    51,    52,   -55,   -55,
   -55,   -55,    53,    54,    55,    51,    52,   -55,   -55,   -55,
   -55,    53,    54,    55,    51,    52,   -55,   -55,   -55,   -55 ]

racc_action_check = [
    93,   102,    93,     6,   103,    94,   108,     5,    48,    47,
    19,     5,    69,    69,    69,    69,    69,    69,    69,    69,
    69,    69,    69,    69,    69,    69,    69,    13,    69,    69,
     3,    78,    78,    78,    24,     5,     5,     7,     6,    93,
   102,   103,    94,   108,    47,    69,     4,     1,     3,     3,
     3,    31,    27,    46,     3,     3,     3,     0,     3,   nil,
     3,   nil,    31,    21,   nil,    31,    31,   nil,   nil,    31,
    31,    31,    31,   nil,    21,    75,   nil,    21,    21,    31,
   nil,    21,    21,    21,    21,   nil,    75,    74,   nil,    75,
    75,    21,   nil,    75,    75,    75,    75,   nil,    74,    14,
   nil,    74,    74,    75,   nil,    74,    74,    74,    74,   nil,
    14,    67,   nil,    14,    14,    74,   nil,    14,    14,    14,
    14,   nil,    67,    66,   nil,    67,    67,    14,   nil,    67,
    67,    67,    67,   nil,    66,    20,   nil,    66,    66,    67,
   nil,    66,    66,    66,    66,   nil,    20,    60,   nil,    20,
    20,    66,   nil,    20,    20,    20,    20,   nil,    60,    33,
   nil,    60,    60,    20,   nil,    60,    60,    60,    60,   nil,
    33,    43,   nil,    33,    33,    60,   nil,    33,    33,    33,
    33,   nil,    43,    65,   nil,    43,    43,    33,   nil,    43,
    43,    43,    43,   nil,    65,    64,   nil,    65,    65,    43,
   nil,    65,    65,    65,    65,   nil,    64,    63,   nil,    64,
    64,    65,   nil,    64,    64,    64,    64,   nil,    63,   101,
   nil,    63,    63,    64,   nil,    63,    63,    63,    63,   nil,
   101,    62,   nil,   101,   101,    63,   nil,   101,   101,   101,
   101,   nil,    62,    51,   nil,    62,    62,   101,   nil,    62,
    62,    62,    62,   nil,    51,    52,   nil,    51,    51,    62,
   nil,    51,    51,    51,    51,   nil,    52,    53,   nil,    52,
    52,    51,   nil,    52,    52,    52,    52,   nil,    53,    54,
   nil,    53,    53,    52,   nil,    53,    53,    53,    53,   nil,
    54,    55,   nil,    54,    54,    53,   nil,    54,    54,    54,
    54,   nil,    55,    56,   nil,    55,    55,    54,   nil,    55,
    55,    55,    55,   nil,    56,    57,   nil,    56,    56,    55,
   nil,    56,    56,    56,    56,   nil,    57,    59,   nil,    57,
    57,    56,   nil,    57,    57,    57,    57,   nil,    59,    32,
   nil,    59,    59,    57,   nil,    59,    59,    59,    59,   nil,
    32,   nil,   nil,    32,    32,    59,   nil,    32,    32,    32,
    32,   nil,   nil,    44,    77,    77,    77,    32,    44,    44,
    44,    44,    44,    44,    44,    44,    44,    44,    44,    44,
    44,    44,    44,    96,    44,    44,    96,    96,    96,    96,
    96,    96,    96,    96,    96,    96,    96,    96,    96,    96,
    96,   nil,    96,    96,    45,    45,   nil,    45,    45,    45,
    45,    45,    45,    45,    45,    45,    45,    45,    45,    45,
    45,    45,   nil,    45,    45,    95,   nil,    95,    95,    95,
    95,    95,    95,    95,    95,    95,    95,    95,    95,    95,
    95,    95,   nil,    95,    95,   104,   nil,   104,   104,   104,
   104,   104,   104,   104,   104,   104,   104,   104,   104,   104,
   104,   104,   nil,   104,   104,    30,    30,    30,    30,    30,
    30,    30,    30,    30,    30,    30,    30,    30,    30,    30,
   nil,    30,    30,    71,    71,    71,    71,    71,    71,    71,
    71,    71,    71,    71,    71,    71,    71,    71,   nil,    71,
    71,    70,    70,    70,    70,    70,    70,    70,    70,    70,
    70,    70,    70,    70,    70,    70,    84,    84,    84,    84,
    84,    84,    84,    84,    84,    84,    84,    84,    84,    84,
    84,    85,    85,    85,    85,    85,    85,    85,    85,    85,
    85,    85,    85,    85,    85,    85,    73,    73,    73,   100,
   100,   100,   nil,   nil,    73,   nil,    73,   100,    73,   100,
   nil,   100,    23,    23,    23,    72,    72,    72,   nil,   nil,
    23,   nil,    23,    72,    23,    72,   nil,    72,   107,   107,
   107,    26,    26,    26,   nil,   nil,   107,   nil,   107,    26,
   107,    26,   nil,    26,    83,    83,    83,    83,    83,    83,
    83,    83,    83,    83,    83,    83,    83,    98,    98,    98,
   nil,   nil,   nil,   nil,   nil,    98,   nil,    98,   nil,    98,
    82,    82,    82,    82,    82,    82,    82,    82,    82,    82,
    82,    82,    91,    91,    91,    91,    91,    91,    91,    91,
    91,    91,    91,    90,    90,    90,    90,    90,    90,    90,
    90,    90,    90,    90,    87,    87,    87,    87,    87,    87,
    87,    87,    87,    86,    86,    86,    86,    86,    86,    86,
    86,    86,    88,    88,    88,    88,    88,    88,    88,    88,
    88,    89,    89,    89,    89,    89,    89,    89,    89,    89 ]

racc_action_pointer = [
    21,    47,   nil,    20,    46,     1,     1,     7,   nil,   nil,
   nil,   nil,   nil,    -3,    87,   nil,   nil,   nil,   nil,    -7,
   123,    51,   nil,   534,     4,   nil,   553,    22,   nil,   nil,
   457,    39,   327,   147,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   159,   360,   399,    49,     7,   -22,   nil,
   nil,   231,   243,   255,   267,   279,   291,   303,   nil,   315,
   135,   nil,   219,   195,   183,   171,   111,    99,   nil,     4,
   493,   475,   537,   518,    75,    63,   nil,   356,    23,   nil,
   nil,   nil,   612,   586,   508,   523,   655,   646,   664,   673,
   635,   624,   nil,    -2,     3,   419,   378,   nil,   579,   nil,
   521,   207,    -1,     2,   439,   nil,   nil,   550,     4,   nil ]

racc_action_default = [
   -55,   -55,    -1,   -55,   -55,   -55,   -55,   -55,    -6,    -7,
    -8,   -11,   -13,   -55,   -55,   -16,   -17,   -18,   -19,   -55,
   -55,   -55,   110,   -55,   -55,    -3,   -55,    -5,   -10,   -14,
   -15,   -55,   -55,   -55,   -46,   -47,   -48,   -49,   -50,   -51,
   -52,   -53,   -54,   -55,   -55,   -55,   -49,   -55,    -4,   -12,
    -9,   -55,   -55,   -55,   -55,   -55,   -55,   -55,   -35,   -55,
   -55,   -39,   -55,   -55,   -55,   -55,   -55,   -55,   -31,   -55,
   -38,   -20,   -55,   -55,   -55,   -55,    -2,   -26,   -27,   -28,
   -29,   -30,   -33,   -34,   -36,   -37,   -40,   -41,   -42,   -43,
   -44,   -45,   -32,   -55,   -55,   -55,   -55,   -21,   -55,   -23,
   -55,   -55,   -55,   -55,   -55,   -22,   -24,   -55,   -55,   -25 ]

racc_goto_table = [
     6,    27,     5,     7,    19,    24,     2,     1,    28,   nil,
   nil,   nil,   nil,   nil,    29,   nil,   nil,   nil,    48,   nil,
    47,   nil,    46,    49,    19,    28,   nil,    19,    50,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    50,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    93,
    94,   nil,   nil,    19,    19,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   102,    30,   103,   nil,    19,
   nil,    19,    44,    45,   108,   nil,   nil,   nil,    19,   nil,
   nil,   nil,   nil,    68,    69,    70,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    71,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    77,    78,    79,    80,    81,    82,    83,
   nil,    84,    85,   nil,    86,    87,    88,    89,    90,    91,
   nil,   nil,   nil,   nil,   nil,   nil,    95,    96,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   104 ]

racc_goto_check = [
     4,     6,     3,     5,     7,     5,     2,     1,     7,   nil,
   nil,   nil,   nil,   nil,     7,   nil,   nil,   nil,     6,   nil,
     4,   nil,     7,     4,     7,     7,   nil,     7,     7,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     7,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     4,
     4,   nil,   nil,     7,     7,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     4,     9,     4,   nil,     7,
   nil,     7,     9,     9,     4,   nil,   nil,   nil,     7,   nil,
   nil,   nil,   nil,     9,     9,     9,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     9,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     9,     9,     9,     9,     9,     9,     9,
   nil,     9,     9,   nil,     9,     9,     9,     9,     9,     9,
   nil,   nil,   nil,   nil,   nil,   nil,     9,     9,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     9 ]

racc_goto_pointer = [
   nil,     7,     6,    -1,    -3,     0,    -6,     1,   nil,    82,
   nil,   nil,   nil,   nil,   nil,   nil ]

racc_goto_default = [
   nil,   nil,    18,   nil,   nil,   nil,   nil,    37,    12,   nil,
    15,    16,    17,    34,    35,    36 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 43, :_reduce_1,
  5, 44, :_reduce_2,
  3, 44, :_reduce_3,
  3, 45, :_reduce_4,
  2, 45, :_reduce_5,
  1, 47, :_reduce_6,
  1, 47, :_reduce_7,
  1, 47, :_reduce_8,
  2, 48, :_reduce_9,
  1, 48, :_reduce_10,
  1, 49, :_reduce_11,
  3, 46, :_reduce_12,
  1, 46, :_reduce_13,
  2, 46, :_reduce_14,
  2, 46, :_reduce_15,
  1, 46, :_reduce_16,
  1, 46, :_reduce_17,
  1, 46, :_reduce_18,
  1, 46, :_reduce_19,
  3, 50, :_reduce_20,
  5, 52, :_reduce_21,
  7, 52, :_reduce_22,
  5, 53, :_reduce_23,
  7, 54, :_reduce_24,
  9, 54, :_reduce_25,
  3, 51, :_reduce_26,
  3, 51, :_reduce_27,
  3, 51, :_reduce_28,
  3, 51, :_reduce_29,
  3, 51, :_reduce_30,
  2, 51, :_reduce_31,
  3, 51, :_reduce_32,
  3, 51, :_reduce_33,
  3, 51, :_reduce_34,
  2, 51, :_reduce_35,
  3, 51, :_reduce_36,
  3, 51, :_reduce_37,
  2, 51, :_reduce_38,
  2, 51, :_reduce_39,
  3, 51, :_reduce_40,
  3, 51, :_reduce_41,
  3, 51, :_reduce_42,
  3, 51, :_reduce_43,
  3, 51, :_reduce_44,
  3, 51, :_reduce_45,
  1, 51, :_reduce_46,
  1, 51, :_reduce_47,
  1, 51, :_reduce_48,
  1, 51, :_reduce_49,
  1, 55, :_reduce_50,
  1, 56, :_reduce_51,
  1, 56, :_reduce_52,
  1, 57, :_reduce_53,
  1, 57, :_reduce_54 ]

racc_reduce_n = 55

racc_shift_n = 110

racc_token_table = {
  false => 0,
  :error => 1,
  :SEMI_COLON => 2,
  :INTERROGATION_MARK => 3,
  :COLON => 4,
  :DOUBLE_DOT => 5,
  :PIPE => 6,
  :MINUS_UNARY => 7,
  :MULTIPLY => 8,
  :DIVISION => 9,
  :PERCENT => 10,
  :PLUS => 11,
  :MINUS => 12,
  :LESS_EQUAL => 13,
  :LESS => 14,
  :MORE => 15,
  :MORE_EQUAL => 16,
  :EQUAL => 17,
  :INEQUAL => 18,
  :NOT => 19,
  :AND => 20,
  :OR => 21,
  :APOSTROPHE => 22,
  :DOLLAR => 23,
  :VIRGUILE => 24,
  :AMPERSAND => 25,
  :TRUE => 26,
  :FALSE => 27,
  :READ => 28,
  :WRITE => 29,
  :IDENTIFIER => 30,
  :NUMBER => 31,
  :EMPTY_CANVAS => 32,
  :CANVAS => 33,
  :EXCLAMATION_MARK => 34,
  :AT => 35,
  :LCURLY => 36,
  :RCURLY => 37,
  :LBRACKET => 38,
  :RBRACKET => 39,
  :LPARENTHESIS => 40,
  :RPARENTHESIS => 41 }

racc_nt_base = 42

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "SEMI_COLON",
  "INTERROGATION_MARK",
  "COLON",
  "DOUBLE_DOT",
  "PIPE",
  "MINUS_UNARY",
  "MULTIPLY",
  "DIVISION",
  "PERCENT",
  "PLUS",
  "MINUS",
  "LESS_EQUAL",
  "LESS",
  "MORE",
  "MORE_EQUAL",
  "EQUAL",
  "INEQUAL",
  "NOT",
  "AND",
  "OR",
  "APOSTROPHE",
  "DOLLAR",
  "VIRGUILE",
  "AMPERSAND",
  "TRUE",
  "FALSE",
  "READ",
  "WRITE",
  "IDENTIFIER",
  "NUMBER",
  "EMPTY_CANVAS",
  "CANVAS",
  "EXCLAMATION_MARK",
  "AT",
  "LCURLY",
  "RCURLY",
  "LBRACKET",
  "RBRACKET",
  "LPARENTHESIS",
  "RPARENTHESIS",
  "$start",
  "S",
  "ESTRUCT",
  "DECLAR",
  "INSTR",
  "TYPE",
  "LISTIDENT",
  "VARIABLE",
  "ASSIGN",
  "EXPR",
  "CONDIC",
  "ITERIND",
  "ITERDET",
  "NUM",
  "BOOL",
  "LIEN" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'Parser.y', 50)
  def _reduce_1(val, _values, result)
     @AST = S.new(:S,val[0]); return @AST
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 55)
  def _reduce_2(val, _values, result)
     result = ESTRUCT.new(:DEC,val[1],:INSTR,val[3])
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 56)
  def _reduce_3(val, _values, result)
     result = ESTRUCT.new(nil,nil,:INSTR,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 61)
  def _reduce_4(val, _values, result)
     result = DECLARATION.new(:DEC,val[0],:TIPO,val[1],:LISTIDENT,val[2]); 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 62)
  def _reduce_5(val, _values, result)
     result = DECLARATION.new(nil,nil,:TIPO,val[0],:LISTIDENT,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 67)
  def _reduce_6(val, _values, result)
     result = TYPE.new(:BOOLEAN,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 68)
  def _reduce_7(val, _values, result)
     result = TYPE.new(:INTEGER,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 69)
  def _reduce_8(val, _values, result)
     result = TYPE.new(:LIENZO,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 74)
  def _reduce_9(val, _values, result)
     result = LISTIDENT.new(:LISTIDENT,val[0],:VARIABLE,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 75)
  def _reduce_10(val, _values, result)
     result = LISTIDENT.new(nil,nil,:VARIABLE,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 80)
  def _reduce_11(val, _values, result)
     result = VALUE.new(:IDENTIFIER,val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 85)
  def _reduce_12(val, _values, result)
     result = INSTR.new(:INSTR,val[0],:INSTR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 86)
  def _reduce_13(val, _values, result)
     result = INSTR.new(:ASSIGN,val[0],nil,nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 87)
  def _reduce_14(val, _values, result)
     result = WRITE_READ.new(:READ,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 88)
  def _reduce_15(val, _values, result)
     result = WRITE_READ.new(:WRITE,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 89)
  def _reduce_16(val, _values, result)
     result = INSTR.new(:CONDIC,val[0],nil,nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 90)
  def _reduce_17(val, _values, result)
     result = INSTR.new(:ITERIND,val[0],nil,nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 91)
  def _reduce_18(val, _values, result)
     result = INSTR.new(:ITERDET,val[0],nil,nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 92)
  def _reduce_19(val, _values, result)
     result = INSTR.new(:ESTRUCT,val[0],nil,nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 97)
  def _reduce_20(val, _values, result)
     result = ASSIGN.new(:VARIABLE,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 103)
  def _reduce_21(val, _values, result)
     result = CONDITIONAL.new(:CONDITION,val[1],:THEN,val[3],nil,nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 105)
  def _reduce_22(val, _values, result)
     result = CONDITIONAL.new(:CONDITION,val[1],:THEN,val[3],:ELSE,val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 110)
  def _reduce_23(val, _values, result)
     result = ITERIND.new(:WHILE,val[1],:DO,val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 116)
  def _reduce_24(val, _values, result)
     result = ITERDET.new(nil,nil,:EXPR,val[1],:EXPR,val[3],:INSTR,val[5])
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 118)
  def _reduce_25(val, _values, result)
     result = ITERDET.new(:VARIABLE,val[1],:EXPR,val[3],:EXPR,val[5],:INSTR,val[7]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 123)
  def _reduce_26(val, _values, result)
     result = EXPR_BIN.new(:PLUS,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 124)
  def _reduce_27(val, _values, result)
     result = EXPR_BIN.new(:MINUS,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 125)
  def _reduce_28(val, _values, result)
     result = EXPR_BIN.new(:MULTIPLY,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 126)
  def _reduce_29(val, _values, result)
     result = EXPR_BIN.new(:DIVISION,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 127)
  def _reduce_30(val, _values, result)
     result = EXPR_BIN.new(:PERCENT,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 128)
  def _reduce_31(val, _values, result)
     result = EXPR_UNARIA.new(:MINUS_UNARY,val[0],:EXPR,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 129)
  def _reduce_32(val, _values, result)
     result = EXPR_PARENTHESIS.new(:EXPR,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 130)
  def _reduce_33(val, _values, result)
     result = EXPR_BIN.new(:AND,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 131)
  def _reduce_34(val, _values, result)
     result = EXPR_BIN.new(:OR,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 132)
  def _reduce_35(val, _values, result)
     result = EXPR_UNARIA.new(:NOT,val[1],:EXPR,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 133)
  def _reduce_36(val, _values, result)
     result = EXPR_BIN.new(:AMPERSAND,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 134)
  def _reduce_37(val, _values, result)
     result = EXPR_BIN.new(:VIRGUILE,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 135)
  def _reduce_38(val, _values, result)
     result = EXPR_UNARIA.new(:DOLLAR,val[0],:EXPR,val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 136)
  def _reduce_39(val, _values, result)
     result = EXPR_UNARIA.new(:APOSTROPHE,val[1],:EXPR,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 137)
  def _reduce_40(val, _values, result)
     result = EXPR_BIN.new(:LESS,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 138)
  def _reduce_41(val, _values, result)
     result = EXPR_BIN.new(:LESS_EQUAL,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 139)
  def _reduce_42(val, _values, result)
     result = EXPR_BIN.new(:MORE,val[1],:EXPR,val[0],:EXPR,val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 140)
  def _reduce_43(val, _values, result)
     result = EXPR_BIN.new(:MORE_EQUAL,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 141)
  def _reduce_44(val, _values, result)
     result = EXPR_BIN.new(:EQUAL,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 142)
  def _reduce_45(val, _values, result)
     result = EXPR_BIN.new(:INEQUAL,val[1],:EXPR,val[0],:EXPR,val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 143)
  def _reduce_46(val, _values, result)
     result = EXPR_VALUE.new(:NUM,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 144)
  def _reduce_47(val, _values, result)
     result = EXPR_VALUE.new(:BOOL,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 145)
  def _reduce_48(val, _values, result)
     result = EXPR_VALUE.new(:LIEN,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 146)
  def _reduce_49(val, _values, result)
     result = EXPR_VALUE.new(:VARIABLE,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 151)
  def _reduce_50(val, _values, result)
     result = VALUE.new(:NUMBER,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 156)
  def _reduce_51(val, _values, result)
     result = VALUE.new(:TRUE,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 157)
  def _reduce_52(val, _values, result)
     result = VALUE.new(:FALSE,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 162)
  def _reduce_53(val, _values, result)
     result = VALUE.new(:CANVAS,val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'Parser.y', 163)
  def _reduce_54(val, _values, result)
     result = VALUE.new(:EMPTY_CANVAS,val[0]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser

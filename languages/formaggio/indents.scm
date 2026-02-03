; Indent inside blocks
(expression_block "{" @indent)
(expression_block "}" @outdent)

(map_operation "{" @indent)
(map_operation "}" @outdent)

(if_operation "{" @indent)
(if_operation "}" @outdent)

; Indent inside parameter lists
(parameter_list "(" @indent)
(parameter_list ")" @outdent)

; Indent inside arrays
(array_literal "[" @indent)
(array_literal "]" @outdent)

(location_entry "[" @indent)
(location_entry "]" @outdent)

; Indent after pipe operator
"|>" @indent

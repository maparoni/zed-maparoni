; ─── YAML Front Matter ─────────────────────────────────────────────
(yaml_front_matter) @text.literal

; ─── Comments ─────────────────────────────────────────────────────
(line_comment) @comment.line

; ─── Section Headers ──────────────────────────────────────────────
(section_header) @markup.heading

; ─── Directives ───────────────────────────────────────────────────
(directive) @attribute

; ─── Variables ────────────────────────────────────────────────────
(variable_assignment
  name: (variable) @variable.definition)
(variable) @variable

; ─── Keywords ─────────────────────────────────────────────────────
"map" @keyword
"if" @keyword
"then" @keyword
"else" @keyword

; ─── Built-in Operations ─────────────────────────────────────────
; Data sources
((operation
  name: (identifier) @function.builtin)
 (#match? @function.builtin "^(all|input_data)$"))

; HTTP operations
((operation
  name: (identifier) @function.builtin)
 (#match? @function.builtin "^(fetch|add_header|post_body|refresh_every|load_file)$"))

; Parsing operations
((operation
  name: (identifier) @function.builtin)
 (#match? @function.builtin "^(parse_geojson|parse_json|parse_csv|parse_xml|parse_gpx|parse_kml)$"))

; Transformation operations
((operation
  name: (identifier) @function.builtin)
 (#match? @function.builtin "^(filter|sort|group|prefix|set|add|transform|restructure)$"))

; ─── Operation names (fallback) ──────────────────────────────────
(operation
  name: (identifier) @function)

; ─── Parameters ───────────────────────────────────────────────────
(named_parameter
  name: (identifier) @property)

; ─── Lambda Parameters ────────────────────────────────────────────
(map_operation
  parameter: (identifier) @variable.parameter)
(if_operation
  then_parameter: (identifier) @variable.parameter)
(if_operation
  else_parameter: (identifier) @variable.parameter)

; ─── Enumerations ─────────────────────────────────────────────────
(enumeration
  (identifier) @constant)

; ─── Literals ─────────────────────────────────────────────────────
(string_literal) @string
(number_literal) @number
(boolean_literal) @constant.builtin.boolean
(escape_sequence) @string.escape

; ─── Operators ────────────────────────────────────────────────────
"|>" @operator
"+" @operator
"=" @operator
"->" @operator

; ─── Punctuation ──────────────────────────────────────────────────
["(" ")" "[" "]" "{" "}"] @punctuation.bracket
["," ":"] @punctuation.delimiter
"." @punctuation.delimiter

; ─── Identifiers (fallback) ───────────────────────────────────────
(identifier) @variable

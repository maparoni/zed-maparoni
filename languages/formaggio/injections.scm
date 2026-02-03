; Inject maparoni expression grammar into expression blocks
((expression_block) @injection.content
 (#set! injection.language "maparoni")
 (#set! injection.include-children))

; Inject YAML into front matter
((yaml_front_matter) @injection.content
 (#set! injection.language "yaml")
 (#set! injection.include-children))

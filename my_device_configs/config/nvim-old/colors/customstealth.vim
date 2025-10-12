" Reset all highlighting to start fresh
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "customstealth"

" Set dark background
set background=dark

" Define colors
let s:background     = "#0d0e0f"
let s:foreground     = "#5f656d"
let s:selection      = "#333536"
let s:line_highlight = "#141617"
let s:comment        = "#323538"
let s:string         = "#545a60"
let s:number         = "#545a60"
let s:constant       = "#474c51"
let s:keyword        = "#474c51"
let s:storage        = "#474c51"
let s:type           = "#474c51"
let s:class_name     = "#474c51"
let s:function_name  = "#474c51"
let s:parameter      = "#727982"
let s:tag_name       = "#3c4044"
let s:tag_attribute  = "#474c51"
let s:library_func   = "#3c4044"
let s:library_const  = "#474c51"
let s:library_type   = "#474c51"
let s:invalid        = "#9e6260"
let s:invalid_bg     = "#664e4d"
let s:diff_deleted   = "#9e6260"
let s:diff_inserted  = "#a7da1e"
let s:diff_changed   = "#f7b83d"
let s:cursor         = "#f8f8f0"
let s:line_number    = "#3c4146"
let s:indent_guide   = "#25272a"
let s:variable       = "#727982"
let s:punctuation    = "#989797"
let s:special_punct  = "#285f6a"

" Editor UI
exe "hi! Normal"        "guifg=".s:foreground  "guibg=".s:background  "gui=NONE"
exe "hi! Cursor"        "guifg=".s:background  "guibg=".s:cursor      "gui=NONE"
exe "hi! CursorLine"    "guifg=NONE"           "guibg=".s:line_highlight "gui=NONE"
exe "hi! LineNr"        "guifg=".s:line_number "guibg=".s:background  "gui=NONE"
exe "hi! CursorLineNr"  "guifg=".s:foreground  "guibg=".s:line_highlight "gui=NONE"
exe "hi! Visual"        "guifg=#ffffff"           "guibg=".s:selection   "gui=NONE"
exe "hi! VertSplit"     "guifg=".s:indent_guide "guibg=".s:indent_guide "gui=NONE"
exe "hi! MatchParen"    "guifg=".s:foreground  "guibg=#3c4044"      "gui=NONE"
exe "hi! StatusLine"    "guifg=#ffffff"        "guibg=#141617"        "gui=NONE"
exe "hi! StatusLineNC"  "guifg=".s:foreground  "guibg=#191b1d"        "gui=NONE"
exe "hi! Pmenu"         "guifg=".s:foreground  "guibg=#191b1d"        "gui=NONE"
exe "hi! PmenuSel"      "guifg=#0d0e0f"        "guibg=#474c51"        "gui=NONE"
exe "hi! Search"        "guifg=#ffffff"        "guibg=#333536"        "gui=NONE"
exe "hi! IncSearch"     "guifg=#ffffff"        "guibg=#333536"        "gui=NONE"
exe "hi! ColorColumn"   "guifg=NONE"           "guibg=#141617"        "gui=NONE"
exe "hi! SignColumn"    "guifg=".s:foreground  "guibg=".s:background  "gui=NONE"
exe "hi! Folded"        "guifg=".s:comment     "guibg=#191b1d"        "gui=NONE"
exe "hi! FoldColumn"    "guifg=".s:comment     "guibg=".s:background  "gui=NONE"
exe "hi! DiffAdd"       "guifg=NONE"           "guibg=#a7da1e22"      "gui=NONE"
exe "hi! DiffDelete"    "guifg=#664e4d"        "guibg=#0d0e0f"      "gui=NONE"
exe "hi! DiffChange"    "guifg=NONE"           "guibg=#f7b83d22"      "gui=NONE"
exe "hi! DiffText"      "guifg=NONE"           "guibg=#f7b83d44"      "gui=NONE"
exe "hi! NonText"       "guifg=".s:indent_guide "guibg=NONE"          "gui=NONE"
exe "hi! SpecialKey"    "guifg=".s:indent_guide "guibg=NONE"          "gui=NONE"
exe "hi! Title"         "guifg=".s:foreground  "guibg=NONE"           "gui=bold"

" Syntax highlighting
exe "hi! Comment"       "guifg=".s:comment     "guibg=NONE"           "gui=NONE"
exe "hi! String"        "guifg=".s:string      "guibg=NONE"           "gui=NONE"
exe "hi! Number"        "guifg=".s:number      "guibg=NONE"           "gui=NONE"
exe "hi! Constant"      "guifg=".s:constant    "guibg=NONE"           "gui=NONE"
exe "hi! Keyword"       "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! Statement"     "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! PreProc"       "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! Type"          "guifg=".s:type        "guibg=NONE"           "gui=NONE"
exe "hi! Structure"     "guifg=".s:type        "guibg=NONE"           "gui=NONE"
exe "hi! Special"       "guifg=".s:foreground  "guibg=NONE"           "gui=NONE"
exe "hi! Underlined"    "guifg=".s:type        "guibg=NONE"           "gui=underline"
exe "hi! Error"         "guifg=".s:invalid     "guibg=".s:invalid_bg  "gui=NONE"
exe "hi! Todo"          "guifg=".s:keyword     "guibg=NONE"           "gui=bold"
exe "hi! Identifier"    "guifg=".s:variable    "guibg=NONE"           "gui=NONE"
exe "hi! Function"      "guifg=".s:function_name "guibg=NONE"         "gui=NONE"

" Punctuation highlighting (from custom rules)
exe "hi! Delimiter"     "guifg=".s:special_punct  "guibg=NONE"           "gui=NONE"
exe "hi! SpecialChar"   "guifg=".s:punctuation  "guibg=NONE"           "gui=NONE"
exe "hi! Quote"         "guifg=".s:punctuation  "guibg=NONE"           "gui=NONE" 
exe "hi! Operator"      "guifg=".s:special_punct "guibg=NONE"          "gui=NONE"
exe "hi! Conceal"       "guifg=".s:special_punct "guibg=NONE"          "gui=NONE"

" Custom punctuation groups
exe "hi! StealthPunctuation"      "guifg=".s:punctuation   "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationList"  "guifg=".s:special_punct "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationAngle" "guifg=".s:special_punct "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationSep"   "guifg=".s:special_punct "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationTerm"  "guifg=".s:special_punct "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationAccess" "guifg=".s:special_punct "guibg=NONE" "gui=NONE"
exe "hi! StealthPunctuationComment" "guifg=".s:comment     "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationBasic"  "guifg=".s:special_punct "guibg=NONE" "gui=NONE"  

" HTML/XML
exe "hi! htmlTag"       "guifg=".s:tag_name    "guibg=NONE"           "gui=NONE"
exe "hi! htmlEndTag"    "guifg=".s:tag_name    "guibg=NONE"           "gui=NONE"
exe "hi! htmlTagName"   "guifg=".s:tag_name    "guibg=NONE"           "gui=NONE"
exe "hi! htmlArg"       "guifg=".s:tag_attribute "guibg=NONE"         "gui=NONE"

" JavaScript
exe "hi! javaScriptFunction"      "guifg=".s:type        "guibg=NONE"           "gui=NONE"
exe "hi! javaScriptBraces"        "guifg=".s:foreground  "guibg=NONE"           "gui=NONE"
exe "hi! javaScriptNumber"        "guifg=".s:number      "guibg=NONE"           "gui=NONE"

" CSS
exe "hi! cssBraces"               "guifg=".s:foreground  "guibg=NONE"           "gui=NONE"
exe "hi! cssClassName"            "guifg=".s:type        "guibg=NONE"           "gui=NONE"
exe "hi! cssColor"                "guifg=".s:number      "guibg=NONE"           "gui=NONE"

" Ruby
exe "hi! rubyClass"               "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! rubyFunction"            "guifg=".s:function_name "guibg=NONE"         "gui=NONE"
exe "hi! rubyInterpolationDelimiter" "guifg=NONE"        "guibg=NONE"           "gui=NONE"
exe "hi! rubySymbol"              "guifg=".s:constant    "guibg=NONE"           "gui=NONE"
exe "hi! rubyConstant"            "guifg=".s:class_name  "guibg=NONE"           "gui=NONE"
exe "hi! rubyStringDelimiter"     "guifg=".s:string      "guibg=NONE"           "gui=NONE"
exe "hi! rubyBlockParameter"      "guifg=".s:parameter   "guibg=NONE"           "gui=NONE"
exe "hi! rubyInstanceVariable"    "guifg=".s:variable    "guibg=NONE"           "gui=NONE"
exe "hi! rubyInclude"             "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! rubyGlobalVariable"      "guifg=".s:variable    "guibg=NONE"           "gui=NONE"
exe "hi! rubyRegexp"              "guifg=".s:string      "guibg=NONE"           "gui=NONE"
exe "hi! rubyRegexpDelimiter"     "guifg=".s:string      "guibg=NONE"           "gui=NONE"
exe "hi! rubyEscape"              "guifg=".s:constant    "guibg=NONE"           "gui=NONE"
exe "hi! rubyControl"             "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! rubyClassVariable"       "guifg=".s:variable    "guibg=NONE"           "gui=NONE"
exe "hi! rubyOperator"            "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! rubyException"           "guifg=".s:keyword     "guibg=NONE"           "gui=NONE"
exe "hi! rubyPseudoVariable"      "guifg=".s:variable    "guibg=NONE"           "gui=NONE"

" Markdown
exe "hi! markdownH1"              "guifg=".s:constant    "guibg=NONE"           "gui=bold"
exe "hi! markdownH2"              "guifg=".s:constant    "guibg=NONE"           "gui=bold"
exe "hi! markdownH3"              "guifg=".s:constant    "guibg=NONE"           "gui=bold"
exe "hi! markdownH4"              "guifg=".s:constant    "guibg=NONE"           "gui=bold"
exe "hi! markdownH5"              "guifg=".s:constant    "guibg=NONE"           "gui=bold"
exe "hi! markdownH6"              "guifg=".s:constant    "guibg=NONE"           "gui=bold"
exe "hi! markdownHeadingDelimiter" "guifg=".s:constant   "guibg=NONE"           "gui=NONE"
exe "hi! markdownBold"            "guifg=".s:type        "guibg=NONE"           "gui=bold"
exe "hi! markdownItalic"          "guifg=".s:type        "guibg=NONE"           "gui=italic"
exe "hi! markdownCode"            "guifg=".s:string      "guibg=NONE"           "gui=NONE"
exe "hi! markdownCodeBlock"       "guifg=".s:string      "guibg=NONE"           "gui=NONE"
exe "hi! markdownLinkText"        "guifg=".s:type        "guibg=NONE"           "gui=NONE"
exe "hi! markdownUrl"             "guifg=".s:string      "guibg=NONE"           "gui=underline"

" Git diff highlighting
exe "hi! GitGutterAdd"            "guifg=".s:diff_inserted "guibg=".s:background "gui=NONE"
exe "hi! GitGutterChange"         "guifg=".s:diff_changed  "guibg=".s:background "gui=NONE"
exe "hi! GitGutterDelete"         "guifg=".s:diff_deleted  "guibg=".s:background "gui=NONE"
exe "hi! GitGutterChangeDelete"   "guifg=".s:diff_changed  "guibg=".s:background "gui=NONE"

" C++ specific syntax highlighting
exe "hi! cppStatement"    "guifg=".s:keyword      "guibg=NONE"  "gui=NONE"
exe "hi! cppType"         "guifg=".s:type         "guibg=NONE"  "gui=NONE"
exe "hi! cppStorageClass" "guifg=".s:storage      "guibg=NONE"  "gui=NONE"
exe "hi! cppStructure"    "guifg=".s:type         "guibg=NONE"  "gui=NONE"
exe "hi! cppException"    "guifg=".s:keyword      "guibg=NONE"  "gui=NONE"
exe "hi! cppOperator"     "guifg=".s:special_punct "guibg=NONE" "gui=NONE"
exe "hi! cppCast"         "guifg=".s:special_punct "guibg=NONE" "gui=NONE"
exe "hi! cppBoolean"      "guifg=".s:constant     "guibg=NONE"  "gui=NONE"
exe "hi! cppConstant"     "guifg=".s:constant     "guibg=NONE"  "gui=NONE"
exe "hi! cppModifier"     "guifg=".s:keyword      "guibg=NONE"  "gui=NONE"
exe "hi! cppNumber"       "guifg=".s:number       "guibg=NONE"  "gui=NONE"
exe "hi! cppString"       "guifg=".s:string       "guibg=NONE"  "gui=NONE"
exe "hi! cppIdentifier"   "guifg=".s:variable     "guibg=NONE"  "gui=NONE"

" Special C++ punctuation and symbols
exe "hi! cppDelimiter"    "guifg=".s:punctuation  "guibg=NONE"  "gui=NONE"
exe "hi! cppBracket"      "guifg=".s:punctuation  "guibg=NONE"  "gui=NONE"
exe "hi! cppAccess"       "guifg=".s:special_punct "guibg=NONE" "gui=NONE"
exe "hi! cppSymbol"       "guifg=".s:punctuation  "guibg=NONE"  "gui=NONE"

" Explicit highlighting for common C++ constructs
au FileType cpp syntax match cppSpecialSymbol /[&*<>=:;,.\-+!|?]/
au FileType cpp syntax match cppBracket /[\[\](){}<>]/
au FileType cpp syntax match cppCastOperator /\<static_cast\>\|\<dynamic_cast\>\|\<const_cast\>\|\<reinterpret_cast\>/
au FileType cpp syntax match cppAccess /\.\|->/

" Link to our custom highlighting
hi! link cppSpecialSymbol StealthPunctuation
hi! link cppBracket      StealthPunctuation
hi! link cppCastOperator cppCast
hi! link cppAccess       StealthPunctuationAccess

" Additional links for standard C++ syntax groups
hi! link cppSTL          Type
hi! link cppSTLType      Type
hi! link cppSTLFunction  Function
hi! link cppSTLConstant  Constant
hi! link cppSTLNamespace Identifier
hi! link cppScopeDelim   StealthPunctuation
hi! link cppTemplateParam Type

" Link groups to their parent styles
hi! link Character       String
hi! link Boolean         Constant
hi! link Float           Number
hi! link Repeat          Statement
hi! link Label           Statement
hi! link Exception       Statement
hi! link Include         PreProc
hi! link Define          PreProc
hi! link Macro           PreProc
hi! link PreCondit       PreProc
hi! link StorageClass    Type
hi! link Typedef         Type
hi! link Tag             Special
hi! link SpecialComment  Special
hi! link Debug           Special
hi! link Directory       Constant
hi! link MoreMsg         Constant
hi! link Question        Constant
hi! link WarningMsg      Error

" Syntax mappings for custom punctuation rules
" General punctuation
hi! link Punctuation                  StealthPunctuation
hi! link punctuation.definition       StealthPunctuation
hi! link punctuation.definition.string StealthPunctuation

" Basic punctuation (,.:;)
hi! link Comma                         StealthPunctuationBasic
hi! link Period                        StealthPunctuationBasic
hi! link Semicolon                     StealthPunctuationBasic
hi! link Colon                         StealthPunctuationBasic

" Special punctuation types
hi! link punctuation.definition.list   StealthPunctuationList
hi! link punctuation.definition.angle  StealthPunctuationAngle
hi! link punctuation.separator         StealthPunctuationSep
hi! link punctuation.terminator        StealthPunctuationTerm
hi! link punctuation.accessor          StealthPunctuationAccess
hi! link punctuation.definition.comment StealthPunctuationComment

" Additional basic punctuation handling for more languages
" Since Vim doesn't have dedicated syntax groups for basic punctuation in all languages,
" we need to add specific targeting for some common file types
au FileType * syntax match StealthComma /,/ containedin=ALL
au FileType * syntax match StealthPeriod /\./ containedin=ALL
au FileType * syntax match StealthSemicolon /;/ containedin=ALL
au FileType * syntax match StealthColon /:/ containedin=ALL

" Link our custom matches to the desired color
hi! link StealthComma StealthPunctuationBasic
hi! link StealthPeriod StealthPunctuationBasic
hi! link StealthSemicolon StealthPunctuationBasic
hi! link StealthColon StealthPunctuationBasic

" Some languages might override these, so we need more specific rules for them
au FileType javascript,typescript,jsx,tsx,css,scss,less,php,python,ruby,go,rust,java,c,cpp syntax clear StealthComma StealthPeriod StealthSemicolon StealthColon
au FileType javascript,typescript,jsx,tsx,css,scss,less,php,python,ruby,go,rust,java,c,cpp syntax match StealthComma /,/ containedin=ALL
au FileType javascript,typescript,jsx,tsx,css,scss,less,php,python,ruby,go,rust,java,c,cpp syntax match StealthPeriod /\./ containedin=ALL
au FileType javascript,typescript,jsx,tsx,css,scss,less,php,python,ruby,go,rust,java,c,cpp syntax match StealthSemicolon /;/ containedin=ALL
au FileType javascript,typescript,jsx,tsx,css,scss,less,php,python,ruby,go,rust,java,c,cpp syntax match StealthColon /:/ containedin=ALL

" Additional common punctuation syntax groups
hi! link jsxBraces                     StealthPunctuation
hi! link jsBraces                      StealthPunctuation
hi! link typescriptBraces              StealthPunctuation
hi! link phpParent                     StealthPunctuation
hi! link cssBraces                     StealthPunctuation
hi! link pythonBrackets                StealthPunctuation
hi! link javaBraces                    StealthPunctuation

" Language-specific syntaxes often have their own punctuation groups
hi! link htmlTag                       StealthPunctuation
hi! link xmlTag                        StealthPunctuation

" Terminal colors
if has('nvim')
  let g:terminal_color_0  = "#191b1d"
  let g:terminal_color_1  = "#888888"
  let g:terminal_color_2  = "#474c51"
  let g:terminal_color_3  = "#474c51"
  let g:terminal_color_4  = "#545a60"
  let g:terminal_color_5  = "#474c51"
  let g:terminal_color_6  = "#141617"
  let g:terminal_color_7  = "#6b727b"
  let g:terminal_color_8  = "#141617"
  let g:terminal_color_9  = "#888888"
  let g:terminal_color_10 = "#6c737a"
  let g:terminal_color_11 = "#777f87"
  let g:terminal_color_12 = "#858d95"
  let g:terminal_color_13 = "#777f87"
  let g:terminal_color_14 = "#6c737a"
  let g:terminal_color_15 = "#9298a0"
endif

" Override terminal version to ensure it loads even in limited environments
if &t_Co < 256
  let g:stealth_contrast_low_color = 1
endif


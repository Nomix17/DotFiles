"########################################
"# Settings.                            #
"########################################

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "azure-contrast"

"########################################
"# Base Colors.                         #
"########################################

" Set dark background
set background=dark

exe "hi! Normal"        "guifg=#d1cfcf"  "guibg=#040507"  "gui=NONE"
exe "hi! Cursor"        "guifg=#040507"  "guibg=#f8f8f0"      "gui=NONE"
exe "hi! CursorLine"    "guifg=NONE"           "guibg=#0a0c11" "gui=NONE"
exe "hi! LineNr"        "guifg=#171c27" "guibg=#040507"  "gui=NONE"
exe "hi! CursorLineNr"  "guifg=#3c4b68"  "guibg=#040507" "gui=NONE"
exe "hi! Visual"        "guifg=#000000"           "guibg=#161e26"   "gui=NONE"
exe "hi! VertSplit"     "guifg=#171c27" "guibg=#171c27" "gui=NONE"
exe "hi! MatchParen"    "guifg=#52708b"  "guibg=NONE"      "gui=underline"
exe "hi! StatusLine"    "guifg=#ffffff"        "guibg=#040507"        "gui=bold"
exe "hi! StatusLineNC"  "guifg=#ffffff"  "guibg=#040507"        "gui=NONE"
exe "hi! Pmenu"         "guifg=#ffffff"  "guibg=#040507"        "gui=NONE"
exe "hi! PmenuSel"      "guifg=NONE"        "guibg=#6ab0a3"        "gui=NONE"
exe "hi! Search"        "guifg=NONE"        "guibg=NONE"        "gui=underline"
exe "hi! IncSearch"     "guifg=#ffffff"        "guibg=#64aeb3"        "gui=NONE"
exe "hi! ColorColumn"   "guifg=NONE"           "guibg=#040507"        "gui=NONE"
exe "hi! CursorColumn"  "guifg=NONE"  "guibg=#040507"  "gui=NONE"
exe "hi! Folded"        "guifg=#f2f2f2"     "guibg=#040507"        "gui=NONE"
exe "hi! Directory"     "guifg=#6ab0a3"     "guibg=NONE"  "gui=NONE"
exe "hi! DiffAdd"       "guifg=#202838"           "guibg=#a7da1e"      "gui=bold"
exe "hi! DiffDelete"    "guifg=#202838"        "guibg=#e61f44"      "gui=NONE"
exe "hi! DiffChange"    "guifg=#202838"           "guibg=#f7b83d"      "gui=NONE"
exe "hi! DiffText"      "guifg=#202838"           "guibg=#f7b83d"      "gui=bold"
exe "hi! ErrorMsg"      "guifg=#202838" "guibg=#e61f44"          "gui=NONE"
exe "hi! WarningMsg"    "guifg=#202838" "guibg=#f7b83d"          "gui=NONE"
exe "hi! NonText"       "guifg=#999999" "guibg=#040507"          "gui=NONE"
exe "hi! SpecialKey"    "guifg=#ffffff" "guibg=#6ab0a3"          "gui=NONE"
exe "hi! Title"         "guifg=#6ab0a3"  "guibg=NONE"           "gui=bold"
exe "hi! TabLine"       "guifg=#888888" "guibg=#040507" "gui=NONE"    
exe "hi! TabLineFill"   "guifg=#888888" "guibg=#040507" "gui=NONE"     
exe "hi! TabLineSel"    "guifg=#ffffff" "guibg=#171c27" "gui=NONE"      

" Syntax highlighting
exe "hi! Comment"       "guifg=#414d62"     "guibg=NONE"           "gui=NONE"
exe "hi! String"        "guifg=#64aeb3"      "guibg=NONE"           "gui=NONE"
exe "hi! Number"        "guifg=#64aeb3"      "guibg=NONE"           "gui=NONE"
exe "hi! Float"         "guifg=#64aeb3"    "guibg=NONE"           "gui=NONE"
exe "hi! Character"     "guifg=#64aeb3"    "guibg=NONE"           "gui=NONE"
exe "hi! Constant"      "guifg=NONE"    "guibg=NONE"           "gui=NONE"
exe "hi! Boolean"       "guifg=#508aaa"     "guibg=NONE"           "gui=NONE"
exe "hi! Keyword"       "guifg=#6ab0a3"     "guibg=NONE"           "gui=NONE"
exe "hi! Statement"     "guifg=#508aaa"     "guibg=NONE"           "gui=NONE"
exe "hi! Conditional"   "guifg=#508aaa"     "guibg=NONE"           "gui=NONE"
exe "hi! Label"         "guifg=#64aeb3"     "guibg=NONE"           "gui=NONE"
exe "hi! PreProc"       "guifg=#607190"     "guibg=NONE"           "gui=NONE"
exe "hi! Define"        "guifg=#6ab0a3"     "guibg=NONE"           "gui=NONE"
exe "hi! Type"          "guifg=NONE"        "guibg=NONE"           "gui=NONE"
exe "hi! StorageClass"  "guifg=#52708b"        "guibg=NONE"           "gui=NONE"
exe "hi! Special"       "guifg=#ffffff"  "guibg=NONE"           "gui=NONE"
exe "hi! Underlined"    "guifg=NONE"        "guibg=NONE"           "gui=underline"
exe "hi! Todo"          "guifg=#607190"     "guibg=NONE"           "gui=inverse,bold"
exe "hi! Identifier"    "guifg=#ffffff"    "guibg=NONE"           "gui=NONE"
exe "hi! Function"      "guifg=#6ab0a3" "guibg=NONE"         "gui=NONE"
exe "hi! Operator"      "guifg=#ffffff" "guibg=NONE"         "gui=NONE"
exe "hi! Tag"           "guifg=#6ab0a3" "guibg=NONE"         "gui=NONE"
exe "hi! Delimiter"     "guifg=#ffffff"  "guibg=NONE"           "gui=NONE"
exe "hi! SpecialChar"   "guifg=#ffffff"  "guibg=NONE"           "gui=NONE"
exe "hi! Quote"         "guifg=#d1cfcf"  "guibg=NONE"           "gui=NONE"
exe "hi! Conceal"       "guifg=#ffffff" "guibg=NONE"          "gui=NONE"

" Custom punctuation groups
exe "hi! StealthPunctuation"      "guifg=#ffffff"   "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationList"  "guifg=#ffffff" "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationAngle" "guifg=#ffffff" "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationSep"   "guifg=#ffffff" "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationTerm"  "guifg=#ffffff" "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationAccess" "guifg=#ffffff" "guibg=NONE" "gui=NONE"
exe "hi! StealthPunctuationComment" "guifg=#414d62"     "guibg=NONE"  "gui=NONE"
exe "hi! StealthPunctuationBasic"  "guifg=#ffffff" "guibg=NONE" "gui=NONE"

"########################################
"# Language Overrides                   #
"########################################
exe "hi! phpIdentifier"     "guifg=#ffffff" "guibg=NONE" "gui=NONE"
exe "hi! phpMethodsVar"     "guifg=#a5b2cb" "guibg=NONE" "gui=NONE"
exe "hi! xmlTag"            "guifg=#6ab0a3" "guibg=NONE" "gui=NONE"
exe "hi! xmlTagName"        "guifg=#6ab0a3" "guibg=NONE" "gui=NONE"
exe "hi! xmlEndTag"         "guifg=#6ab0a3" "guibg=NONE" "gui=NONE"

"Explicit highlighting for common C++ constructs
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


"########################################
"########################################
" Stealth Contrast (rainglow)
"
" https://github.com/rainglow/vim
"
" Copyright (c) Dayle Rees.
"########################################
"########################################


"########################################
"# Settings.                            #
"########################################

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "stealth-contrast"

"########################################
"# Base Colors.                         #
"########################################

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
let s:diff_inserted  = "#375963"
let s:diff_changed   = "#213338"
let s:cursor         = "#f8f8f0"
let s:line_number    = "#3c4146"
let s:indent_guide   = "#25272a"
let s:variable       = "#727982"
let s:punctuation    = "#7c7c7c"
let s:special_punct  = "#285f6a"


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
exe "hi! @lsp.type.variable" "guifg=".s:variable    "guibg=NONE"           "gui=NONE"
exe "hi! @variable" "guifg=".s:variable    "guibg=NONE"           "gui=NONE"
exe "hi! @lsp.type.parameter" "guifg=".s:variable    "guibg=NONE"           "gui=NONE"


" Punctuation highlighting (from custom rules)
exe "hi! Delimiter"     "guifg=".s:punctuation  "guibg=NONE"           "gui=NONE"
exe "hi! SpecialChar"   "guifg=".s:punctuation  "guibg=NONE"           "gui=NONE"
exe "hi! Quote"         "guifg=".s:punctuation  "guibg=NONE"           "gui=NONE" 
exe "hi! Conceal"       "guifg=".s:punctuation "guibg=NONE"          "gui=NONE"
exe "hi! @lsp.type.operator"      "guifg=".s:punctuation "guibg=NONE"          "gui=NONE"
exe "hi! @operator"      "guifg=".s:punctuation "guibg=NONE"          "gui=NONE"

" Git diff highlighting
exe "hi! GitGutterAdd"            "guifg=".s:diff_inserted "guibg=".s:background "gui=NONE"
exe "hi! GitGutterChange"         "guifg=".s:diff_changed  "guibg=".s:background "gui=NONE"
exe "hi! GitGutterDelete"         "guifg=".s:diff_deleted  "guibg=".s:background "gui=NONE"
exe "hi! GitGutterChangeDelete"   "guifg=".s:diff_changed  "guibg=".s:background "gui=NONE"

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

" Minimalist Airline - Full Grayscale Theme
"
" Author:       Diki Ananta <diki1aap@gmail.com>
" Modified:     Full grayscale theme with distinct mode shades
" Repository:   https://github.com/dikiaap/minimalist
" Version:      1.6
" License:      MIT

" Normal Mode - Medium Gray
let s:N1 = [ '#E4E4E4', '#3A3A3A', 254, 237 ]
let s:N2 = [ '#E4E4E4', '#4E4E4E', 254, 239 ]
let s:N3 = [ '#EEEEEE', '#262626', 255, 235 ]

" Insert Mode - Light Gray
let s:I1 = [ '#1C1C1C', '#B0B0B0', 234, 249 ]
let s:I2 = [ '#B0B0B0', '#3A3A3A', 249, 237 ]
let s:I3 = s:N3

" Visual Mode - Darker Gray
let s:V1 = [ '#1C1C1C', '#808080', 234, 244 ]
let s:V2 = [ '#808080', '#3A3A3A', 244, 237 ]
let s:V3 = s:N3

" Command Mode - Lighter Gray
let s:C1 = [ '#1C1C1C', '#C0C0C0', 234, 251 ]
let s:C2 = [ '#C0C0C0', '#3A3A3A', 251, 237 ]
let s:C3 = [ '#EEEEEE', '#262626', 255, 235 ]

" Replace Mode - Dark Gray
let s:R1 = [ '#1C1C1C', '#707070', 234, 243 ]
let s:R2 = [ '#707070', '#3A3A3A', 243, 237 ]
let s:R3 = s:N3

" Inactive Mode
let s:IA = [ '#666666', s:N3[1], 242, s:N3[3] ]

" Warning Mode
let s:WI = [ '#1C1C1C', '#A0A0A0', 234, 247 ]

" Error Mode
let s:ER = [ '#1C1C1C', '#8A8A8A', 234, 245 ]

" Terminal Mode
let s:TE = [ s:WI[0], s:N1[1], s:N1[2], s:N1[3] ]

" Reverse Mode
let s:NR = [ s:N2[1], s:N2[0], s:N2[3], s:N2[2], 'bold' ]

let g:airline#themes#minimalist_gray#palette = {}

" Generate mode-specific palettes
let g:airline#themes#minimalist_gray#palette.normal   = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#minimalist_gray#palette.insert   = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#minimalist_gray#palette.visual   = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#minimalist_gray#palette.commandline = airline#themes#generate_color_map(s:C1, s:C2, s:C3)
let g:airline#themes#minimalist_gray#palette.replace  = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#minimalist_gray#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Status indicators for all modes
let g:airline#themes#minimalist_gray#palette.normal.airline_warning  = s:WI
let g:airline#themes#minimalist_gray#palette.normal.airline_error    = s:ER
let g:airline#themes#minimalist_gray#palette.normal.airline_term     = s:TE

let g:airline#themes#minimalist_gray#palette.insert.airline_warning  = s:WI
let g:airline#themes#minimalist_gray#palette.insert.airline_error    = s:ER

let g:airline#themes#minimalist_gray#palette.visual.airline_warning  = s:WI
let g:airline#themes#minimalist_gray#palette.visual.airline_error    = s:ER

let g:airline#themes#minimalist_gray#palette.commandline.airline_warning = s:WI
let g:airline#themes#minimalist_gray#palette.commandline.airline_error   = s:ER

let g:airline#themes#minimalist_gray#palette.replace.airline_warning = s:WI
let g:airline#themes#minimalist_gray#palette.replace.airline_error   = s:ER

" Accents
let g:airline#themes#minimalist_gray#palette.accents = { 'red': [ s:ER[1], '', s:ER[3], '' ] }

" CtrlP
if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#minimalist_gray#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:N3, s:N2, s:NR)
endif

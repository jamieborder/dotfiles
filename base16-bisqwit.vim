" vi:syntax=vim

" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" Black Metal (Dark Funeral) scheme by metalelf0 (https://github.com/metalelf0)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has('gui_running')
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-bisqwit.sh"
  endif
endif

" GUI color definitions
let s:gui00        = "bfbfbf" " grey75
let g:base16_gui00 = "bfbfbf"
let s:gui01        = "ffffff" " grey100
let g:base16_gui01 = "ffffff" 
let s:gui02        = "000000" " grey0
let g:base16_gui02 = "000000"
let s:gui03        = "9a32cd"  " DarkOrchid3
let g:base16_gui03 = "9a32cd"
let s:gui04        = "ff6a6a"  " IndianRed1
let g:base16_gui04 = "ff6a6a"
let s:gui05        = "2e8b57"  " SeaGreen4
let g:base16_gui05 = "2e8b57"  
let s:gui06        = "4876ff"  " RoyalBlue1
let g:base16_gui06 = "4876ff"
let s:gui07        = "00cd66"  " SpringGreen3
let g:base16_gui07 = "00cd66"
let s:gui08        = "7ec0ee"  " SkyBlue2
let g:base16_gui08 = "7ec0ee"
let s:gui09        = "808080"  " WebGrey
let g:base16_gui09 = "808080"
let s:gui0A        = "478764"  
let g:base16_gui0A = "478764"  
let s:gui0B        = "d0dfee"
let g:base16_gui0B = "d0dfee"
let s:gui0C        = "aaaaaa"
let g:base16_gui0C = "aaaaaa"
let s:gui0D        = "888888"
let g:base16_gui0D = "888888"
let s:gui0E        = "478764"  
let g:base16_gui0E = "478764"  
let s:gui0F        = "444444"
let g:base16_gui0F = "444444"

" Terminal color definitions
let s:cterm00        = "00"
let g:base16_cterm00 = "00"
let s:cterm03        = "08"
let g:base16_cterm03 = "08"
let s:cterm05        = "07"
let g:base16_cterm05 = "07"
let s:cterm07        = "15"
let g:base16_cterm07 = "15"
let s:cterm08        = "01"
let g:base16_cterm08 = "01"
let s:cterm0A        = "03"
let g:base16_cterm0A = "03"
let s:cterm0B        = "02"
let g:base16_cterm0B = "02"
let s:cterm0C        = "06"
let g:base16_cterm0C = "06"
let s:cterm0D        = "04"
let g:base16_cterm0D = "04"
let s:cterm0E        = "05"
let g:base16_cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01        = "18"
  let g:base16_cterm01 = "18"
  let s:cterm02        = "19"
  let g:base16_cterm02 = "19"
  let s:cterm04        = "20"
  let g:base16_cterm04 = "20"
  let s:cterm06        = "21"
  let g:base16_cterm06 = "21"
  let s:cterm09        = "16"
  let g:base16_cterm09 = "16"
  let s:cterm0F        = "17"
  let g:base16_cterm0F = "17"
else
  let s:cterm01        = "10"
  let g:base16_cterm01 = "10"
  let s:cterm02        = "11"
  let g:base16_cterm02 = "11"
  let s:cterm04        = "12"
  let g:base16_cterm04 = "12"
  let s:cterm06        = "13"
  let g:base16_cterm06 = "13"
  let s:cterm09        = "09"
  let g:base16_cterm09 = "09"
  let s:cterm0F        = "14"
  let g:base16_cterm0F = "14"
endif

" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  "#000000"
  let g:terminal_color_1 =  "#5f8787"
  let g:terminal_color_2 =  "#d0dfee"
  let g:terminal_color_3 =  "#5f81a5"
  let g:terminal_color_4 =  "#888888"
  let g:terminal_color_5 =  "#999999"
  let g:terminal_color_6 =  "#aaaaaa"
  let g:terminal_color_7 =  "#c1c1c1"
  let g:terminal_color_8 =  "#333333"
  let g:terminal_color_9 =  "#5f8787"
  let g:terminal_color_10 = "#d0dfee"
  let g:terminal_color_11 = "#5f81a5"
  let g:terminal_color_12 = "#888888"
  let g:terminal_color_13 = "#999999"
  let g:terminal_color_14 = "#aaaaaa"
  let g:terminal_color_15 = "#c1c1c1"
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_5
  if &background == "light"
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-bisqwit"

" Highlighting function
function! g:Base16hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=#" . a:guisp
  endif
endfunction


fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call g:Base16hi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun


" Vim editor colors
call <sid>hi("Normal",        s:gui00, s:gui02, s:cterm05, s:cterm00, "", "")
call <sid>hi("MatchParen",    s:gui04, s:gui02, "", "", "", "")
" call <sid>hi("parens",        s:gui04, s:gui02, "", "", "", "") " not
" working...?
call <sid>hi("Bold",          "", "", "", "", "bold", "")
call <sid>hi("Debug",         s:gui00, "", s:cterm08, "", "", "")
call <sid>hi("Directory",     s:gui00, "", s:cterm0D, "", "", "")
call <sid>hi("Error",         s:gui04, s:gui02, s:cterm00, s:cterm08, "", "")
call <sid>hi("ErrorMsg",      s:gui04, s:gui02, s:cterm08, s:cterm00, "", "")
call <sid>hi("Exception",     s:gui00, "", s:cterm08, "", "", "")
call <sid>hi("FoldColumn",    s:gui00, s:gui01, s:cterm0C, s:cterm01, "", "")
call <sid>hi("Folded",        s:gui00, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("IncSearch",     s:gui00, s:gui04, s:cterm01, s:cterm09, "none", "")
call <sid>hi("Italic",        "", "", "", "", "none", "")
call <sid>hi("Macro",         s:gui00, "", s:cterm08, "", "", "")
call <sid>hi("MatchParen",    "", s:gui01, "", s:cterm03,  "", "")
call <sid>hi("ModeMsg",       s:gui00, "", s:cterm0B, "", "", "")
call <sid>hi("MoreMsg",       s:gui00, "", s:cterm0B, "", "", "")
call <sid>hi("Question",      s:gui00, "", s:cterm0D, "", "", "")
call <sid>hi("Search",        s:gui00, s:gui01, s:cterm01, s:cterm0A,  "", "")
call <sid>hi("Substitute",    s:gui00, s:gui01, s:cterm01, s:cterm0A, "none", "")
call <sid>hi("SpecialKey",    s:gui00, "", s:cterm03, "", "", "")
call <sid>hi("TooLong",       s:gui00, "", s:cterm08, "", "", "")
call <sid>hi("Underlined",    s:gui00, "", s:cterm08, "", "", "")
call <sid>hi("Visual",        "", s:gui09, "", s:cterm02, "", "")
call <sid>hi("VisualNOS",     s:gui00, "", s:cterm08, "", "", "")
call <sid>hi("WarningMsg",    s:gui00, "", s:cterm08, "", "", "")
call <sid>hi("WildMenu",      s:gui00, s:gui01, s:cterm08, "", "", "")
call <sid>hi("Title",         s:gui00, "", s:cterm0D, "", "none", "")
call <sid>hi("Conceal",       s:gui00, s:gui01, s:cterm0D, s:cterm00, "", "")
call <sid>hi("Cursor",        s:gui00, s:gui01, s:cterm00, s:cterm05, "", "")
call <sid>hi("NonText",       s:gui00, "", s:cterm03, "", "", "")
call <sid>hi("LineNr",        s:gui00, s:gui02, s:cterm03, s:cterm01, "", "")
call <sid>hi("SignColumn",    s:gui00, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("StatusLine",    s:gui00, s:gui01, s:cterm04, s:cterm02, "none", "")
call <sid>hi("StatusLineNC",  s:gui00, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("VertSplit",     s:gui00, s:gui01, s:cterm02, s:cterm02, "none", "")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLine",    s:gui00, s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLineNr",  s:gui04, s:gui02, s:cterm04, s:cterm01, "", "")
call <sid>hi("QuickFixLine",  "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("PMenu",         s:gui00, s:gui01, s:cterm05, s:cterm01, "none", "")
call <sid>hi("PMenuSel",      s:gui00, s:gui01, s:cterm01, s:cterm05, "", "")
call <sid>hi("TabLine",       s:gui00, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("TabLineFill",   s:gui00, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("TabLineSel",    s:gui00, s:gui01, s:cterm0B, s:cterm01, "none", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui01, "", s:cterm08, "", "", "")
call <sid>hi("Character",    s:gui06, "", s:cterm08, "", "", "")
call <sid>hi("Comment",      s:gui04, "", s:cterm01, "", "", "")
call <sid>hi("Conditional",  s:gui01, "", s:cterm02, "", "", "")
call <sid>hi("Constant",     s:gui00, "", s:cterm09, "", "", "")
call <sid>hi("Define",       s:gui00, "", s:cterm0E, "", "none", "")
call <sid>hi("Delimiter",    s:gui00, "", s:cterm0F, "", "", "")
call <sid>hi("Float",        s:gui03, "", s:cterm09, "", "", "")
call <sid>hi("Function",     s:gui00, "", s:cterm0D, "", "", "")
call <sid>hi("Identifier",   s:gui00, "", s:cterm08, "", "none", "")
call <sid>hi("Include",      s:gui08, "", s:cterm0D, "", "", "")
call <sid>hi("Keyword",      s:gui00, "", s:cterm0E, "", "", "")
call <sid>hi("Label",        s:gui01, "", s:cterm0A, "", "", "")
call <sid>hi("Number",       s:gui03, "", s:cterm09, "", "", "")
call <sid>hi("Operator",     s:gui01, "", s:cterm0A, "", "none", "")  "changed from 05 to 0A
call <sid>hi("PreProc",      s:gui00, "", s:cterm0A, "", "", "")
call <sid>hi("Repeat",       s:gui01, "", s:cterm0A, "", "", "")
call <sid>hi("Special",      s:gui00, "", s:cterm0C, "", "", "")
call <sid>hi("SpecialChar",  s:gui00, "", s:cterm0F, "", "", "")
call <sid>hi("Statement",    s:gui01, "", s:cterm08, "", "", "")
call <sid>hi("StorageClass", s:gui06, "", s:cterm0A, "", "", "")
call <sid>hi("String",       s:gui06, "", s:cterm0B, "", "", "")
call <sid>hi("Structure",    s:gui01, "", s:cterm0E, "", "", "")
call <sid>hi("Tag",          s:gui03, "", s:cterm0A, "", "", "")
call <sid>hi("Todo",         s:gui02, s:gui04, s:cterm0A, s:cterm01, "", "")
call <sid>hi("Type",         s:gui01, "", s:cterm0A, "", "none", "")
"call <sid>hi("Type",         s:gui06, "", s:cterm0A, "", "none", "")
call <sid>hi("Typedef",      s:gui00, "", s:cterm0A, "", "", "")

" C highlighting
call <sid>hi("cOperator",   s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("cPreCondit",  s:gui0E, "", s:cterm0E, "", "", "")

" C# highlighting
call <sid>hi("csClass",                 s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("csAttribute",             s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("csModifier",              s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("csType",                  s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("csUnspecifiedStatement",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("csContextualStatement",   s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("csNewDecleration",        s:gui08, "", s:cterm08, "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("cssClassName",   s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("cssColor",       s:gui0C, "", s:cterm0C, "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:gui0B, s:gui01,  s:cterm0B, s:cterm01, "", "")
call <sid>hi("DiffChange",   s:gui03, s:gui01,  s:cterm03, s:cterm01, "", "")
call <sid>hi("DiffDelete",   s:gui08, s:gui01,  s:cterm08, s:cterm01, "", "")
call <sid>hi("DiffText",     s:gui0D, s:gui01,  s:cterm0D, s:cterm01, "", "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffFile",     s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffLine",     s:gui0D, s:gui00,  s:cterm0D, s:cterm00, "", "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")

" Git highlighting
call <sid>hi("gitcommitOverflow",       s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("gitcommitSummary",        s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("gitcommitComment",        s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitUntracked",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitDiscarded",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitSelected",       s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitHeader",         s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("gitcommitSelectedType",   s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitUnmergedType",   s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitDiscardedType",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitBranch",         s:gui09, "", s:cterm09, "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("gitcommitUnmergedFile",   s:gui08, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  s:gui08, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   s:gui0B, "", s:cterm0B, "", "bold", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "", "")
call <sid>hi("GitGutterChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "", "")
call <sid>hi("GitGutterDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "", "")
call <sid>hi("GitGutterChangeDelete",  s:gui0E, s:gui01, s:cterm0E, s:cterm01, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:cterm05, "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("javaScriptNumber",  s:gui09, "", s:cterm09, "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",          s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("jsStatement",         s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("jsReturn",            s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("jsThis",              s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("jsClassDefinition",   s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsFunction",          s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("jsFuncName",          s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("jsFuncCall",          s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("jsClassFuncName",     s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("jsClassMethodType",   s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("jsRegexpString",      s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("jsGlobalObjects",     s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsGlobalNodeObjects", s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsExceptions",        s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("jsBuiltins",          s:gui0A, "", s:cterm0A, "", "", "")

" Mail highlighting
call <sid>hi("mailQuoted1",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("mailQuoted2",  s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("mailQuoted3",  s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("mailQuoted4",  s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("mailQuoted5",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("mailQuoted6",  s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("mailURL",      s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("mailEmail",    s:gui0D, "", s:cterm0D, "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("markdownError",             s:gui05, s:gui00, s:cterm05, s:cterm00, "", "")
call <sid>hi("markdownCodeBlock",         s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui0D, "", s:cterm0D, "", "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:cterm05, "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpComparison",      s:gui05, "", s:cterm05, "", "", "")
call <sid>hi("phpParent",          s:gui05, "", s:cterm05, "", "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("pythonRepeat",    s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("pythonInclude",   s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("pythonStatement", s:gui0E, "", s:cterm0E, "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("rubyConstant",                s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui0F, "", s:cterm0F, "", "", "")
call <sid>hi("rubyRegexp",                  s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("rubySymbol",                  s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("rubyStringDelimiter",         s:gui0B, "", s:cterm0B, "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("sassClassChar",  s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("sassInclude",    s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("sassMixing",     s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("sassMixinName",  s:gui0D, "", s:cterm0D, "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "", "")
call <sid>hi("SignifySignChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "", "")
call <sid>hi("SignifySignDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "", "", "", "undercurl", s:gui08)
call <sid>hi("SpellLocal",   "", "", "", "", "undercurl", s:gui0C)
call <sid>hi("SpellCap",     "", "", "", "", "undercurl", s:gui0D)
call <sid>hi("SpellRare",    "", "", "", "", "undercurl", s:gui0E)

" Startify highlighting
call <sid>hi("StartifyBracket",  s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifyFile",     s:gui07, "", s:cterm07, "", "", "")
call <sid>hi("StartifyFooter",   s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifyHeader",   s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("StartifyNumber",   s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("StartifyPath",     s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifySection",  s:gui0E, "", s:cterm0E, "", "", "")
call <sid>hi("StartifySelect",   s:gui0C, "", s:cterm0C, "", "", "")
call <sid>hi("StartifySlash",    s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("StartifySpecial",  s:gui03, "", s:cterm03, "", "", "")

" Java highlighting
call <sid>hi("javaOperator",     s:gui0D, "", s:cterm0D, "", "", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F

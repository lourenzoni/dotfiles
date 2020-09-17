" Vim color file
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:	2008 Jul 18

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "leandro"

hi Normal     guifg=#c0c0c0  guibg=#000040  ctermfg=gray           ctermbg=black
hi ErrorMsg   guifg=#ffffff  guibg=#287eff  ctermfg=white          ctermbg=lightblue
hi Visual     guifg=#8080ff  guibg=fg       gui=reverse            ctermfg=lightblue  ctermbg=fg  cterm=reverse
hi VisualNOS  guifg=#8080ff  guibg=fg       gui=reverse,underline  ctermfg=lightblue  ctermbg=fg  cterm=reverse,underline
hi Todo       guifg=#d14a14  guibg=#1248d1  ctermfg=red            ctermbg=darkblue
hi Search     guifg=#90fff0  guibg=#2050d0  ctermfg=white          ctermbg=darkblue   cterm=none  term=none
hi IncSearch  guifg=#b0ffff  guibg=#2050d0  ctermfg=darkblue       ctermbg=gray

hi SpecialKey		guifg=cyan			ctermfg=darkcyan
hi Directory		guifg=cyan			ctermfg=cyan
hi Title			guifg=magenta gui=none ctermfg=magenta cterm=none
hi WarningMsg		guifg=red			ctermfg=red
hi WildMenu			guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg			guifg=#22cce2		ctermfg=lightblue
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			guifg=green gui=none ctermfg=green cterm=none
hi NonText			guifg=#0030ff		ctermfg=darkblue

hi StatusLine	guifg=blue guibg=darkgray gui=none		ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none

" hi Folded	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=none term=none
hi FoldColumn	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=none term=none
hi LineNr	guifg=#90f020			ctermfg=green cterm=none

hi DiffAdd	guibg=darkblue	ctermbg=darkblue term=none cterm=none
hi DiffChange	guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete	ctermfg=blue ctermbg=cyan gui=none guifg=Blue guibg=DarkCyan
hi DiffText	cterm=none ctermbg=red gui=none guibg=Red

hi Cursor	guifg=black guibg=yellow ctermfg=black ctermbg=yellow
hi lCursor	guifg=black guibg=white ctermfg=black ctermbg=white

hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White	   ctermbg=DarkBlue  guifg=White  guibg=DarkBlue

hi Comment	guifg=#80a0ff ctermfg=yellow	ctermbg=black	cterm=none	term=none
hi Constant	ctermfg=red guifg=#ffa0a0 cterm=none
hi Special	ctermfg=cyan guifg=Orange cterm=none gui=none
hi Identifier	ctermfg=blue guifg=#40ffff cterm=bold
hi Statement	ctermfg=magenta cterm=none guifg=#ffff60 gui=none
hi PreProc	ctermfg=magenta guifg=#ff80ff gui=none cterm=none
hi type		ctermfg=green guifg=#60ff60 gui=none cterm=none
hi Underlined	cterm=underline term=underline
hi Ignore	guifg=bg ctermfg=bg

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0

hi Search ctermbg=darkgreen
hi IncSearch ctermfg=7 ctermbg=2 guifg=#90fff0 guibg=#2050d0
hi ErrorMsg term=standout cterm=bold ctermfg=7 ctermbg=DarkRed guifg=#ffffff guibg=DarkRed
hi DiffDelete term=bold cterm=bold ctermfg=black ctermbg=DarkCyan guifg=black guibg=DarkCyan
hi DiffText term=bold ctermfg=DarkGrey ctermbg=DarkRed guibg=DarkRed
hi javaScriptValue ctermfg=cyan
hi MatchParen term=reverse ctermbg=DarkMagenta guibg=DarkMagenta
hi javaScriptParens cterm=bold ctermfg=2
hi Folded ctermfg=black ctermbg=DarkCyan


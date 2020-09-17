" PLUGINS
filetype plugin on
set nocompatible
runtime macros/matchit.vim

" LINHA
set number
set foldmethod=manual

" TABULACAO
set ts=4
set shiftwidth=4
set autoindent
set smartindent

" BUSCA
set hlsearch
set incsearch
" set ic

" ARQUIVOS
filetype detect
syntax on
set hidden
set path+=grails-app/**
set path+=web-app/**
set path+=src/**
set path+=test/**

" IDIOMA
"set spell spelllang=pt
"set dictionary+=/usr/share/dict/words
"set thesaurus+=/home/leandro/.vim/thesaurus/mthesaur.txt

" ABREVIACOES
iabbrev myemail leandro.lourenzoni@gmail.com
iabbrev mysign Leandro Lourenzoni<CR>Analista de Sistemas<CR>Solucoes de Negocio do E&P

" CTAGS
"autocmd bufwritepost * call system("ctags -r")

" MAPEAMENTOS
map <F7> :setfiletype html<CR>
map <F8> :nohls<CR>
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
set pastetoggle=<F5>
" nnoremap <C-n> :bnext<CR>:redraw<CR>:ls<CR>
" nnoremap <C-p> :bprevious<CR>:redraw<CR>:ls<CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" nnoremap <space> za
" vnoremap <space> zf
 
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
   \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
   \gvy/<C-R><C-R>=substitute(
   \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
   \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
   \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
   \gvy?<C-R><C-R>=substitute(
   \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
   \gV:call setreg('"', old_reg, old_regtype)<CR>


" MACROS

" o: output (console.log)
let @o="oconsole.log();hi'', 2F'a"

" p: parametros do log
let @p="f)i, '', 2F'a"

" i: if
let @i="oif () {o}%F(a"

" e: else
let @e="oelse {}O	a"

" l: loop (for)
let @l="ofor (;var i=0,l=.length; i<l; i++) {}%F.i"

" d: debugger
let @d="o	debugger;"

" t: ternario para if
let @t="cf=if (lxf?s) {	f:s;}else {	A}<<"

" f: function com comentario
let @f="o/**Metodo/ofunction () {}%F(i"

" c: comenta linha
let @c=":normal i//"

" u: descomenta linha
let @u="'<'>lxw"

" s: espacos ao redor de operadores
let @s="^:s/\v,|\=|\!\=|\=\=|\?|\+|\-|\*|\/|\:/ \0 /g:ho€kb€kbnohls"

" r: renomeia classe
let @r="/\\<class\\>wcw%ldF.FT/dB€k8"

" b: closure
let @b="o(function() {}());O"

" x: try catch
let @x="'<Otry {'<>'>'>o} catch (err) {}O"

" w: comenta bloco
let @w="'<O/*'>o*/k>'<"

" z: descomenta bloco
let @z="'<dd'>ddk<'<"

set thesaurus+=/home/leandro/.vim/mthesaur.txt

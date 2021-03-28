" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tomasiser/vim-code-dark'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set clipboard=unnamedplus

colorscheme codedark
" Remove colorscheme background
for group in ['Normal', 'Directory', 'Comment', 'Constant', 'Special', 'Identifier',
	\'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'ErrorMsg',
	\'Function', 'Conditional', 'Repeat', 'Operator', 'Structure', 'VertSplit',
	\'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer',
	\'Question', 'WarningMsg', 'FoldColumn', 'Conceal', 'TabLineSel',
	\'SpellBad', 'SpellCap', 'SpellLocal', 'SpellRare', 'StatusLine']
	exec "hi " . group . " ctermbg=NONE"
endfor

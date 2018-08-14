" Functions

" A function to activate spell checking mode in the correct language
function! SpellOn()
    set spell
    set spelllang=en_gb
endfunction

" Custom statusline including indent level counter
function! SetStatusLine()
    set statusline=[%n]\ %{fugitive#statusline()}\ %f\ \ \ %(0x%B%)%(\ (%M%R%H)%)%=[%3l:%3L,%2c]\ %p%%\
endfunction

" <leader>h to switch between .cpp and .h {{{1
function! SwitchCppH()
    let extension = expand('%:e')
    let root = expand('%:r')
    if extension == 'cpp'
        execute(':e '.root.'.h')
    elseif extension == 'h'
        execute(':e '.root.'.cpp')
    endif
endfunc

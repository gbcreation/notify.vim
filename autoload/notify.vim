" notify.vim - Notify System for VIM
" Maintainer:   Lorenzo Fontana <fontanalorenzo@me.com>, Gianluca Arbezzano <gianarb92@gmail.com>
" Version:      1.0

function! notify#setupCommands() abort
    command! -nargs=+ -bar Notify :call notify#send(<f-args>)
endfunction

function! notify#send(title, content) abort
    for emitter in g:notify_emitters
        let response = call('notify#'.emitter.'#emit', [a:title, a:content])
        if response != 0
            break
        endif
    endfor
    return 0
endfunction


" echomsg strategy

if exists('g:autoloaded_notify_echo_msg')
    finish
endif
let g:autoloaded_notify_echo_msg = 1

function! notify#echo_msg#emit(title, content)
    echomsg a:title . ': ' . a:content
    return 1
endfunction


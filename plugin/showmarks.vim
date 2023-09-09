"SPDX-License-Identifier: Unlicense

"This is free and unencumbered software released into the public domain.

"Anyone is free to copy, modify, publish, use, compile, sell, or distribute
"this software, either in source code form or as a compiled binary, for any
"purpose, commercial or non-commercial, and by any means.

"In jurisdictions that recognize copyright laws, the author or authors of this
"software dedicate any and all copyright interest in the software to the public
"domain. We make this dedication for the benefit of the public at large and to
"the detriment of our heirs and successors. We intend this dedication to be an
"overt act of relinquishment in perpetuity of all present and future rights to
"this software under copyright law.

"THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
"ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
"WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

"For more information, please refer to <https://unlicense.org/>

" MODIFY(jwu) { 
" noremap <unique> <script> \sm m
" noremap <silent> m :exe 'norm \sm'.nr2char(getchar())<bar>call <sid>ShowMarks()<CR>
" NOTE: use nnoremap to fix conlict with snipMate. when use snipMate, when you input m, it will be ma. 
" nnoremap <unique> <silent> m :call <sid>ShowMarksPlaceMark( nr2char(getchar()) )<CR>
" } MODIFY(jwu) end 

" DISABLE(jwu) { 
" AutoCommands: Only if ShowMarks is enabled
" if g:showmarks_enable == 1
"	aug ShowMarks
"		au!
"		autocmd CursorHold * call s:ShowMarks()
"	aug END
" endif
" } DISABLE(jwu) end 

if has('signs') == 0
    echohl ErrorMsg
    echom 'showmarks.vim: requires Vim to have +signs support'
    echohl None
	finish
endif

if get(g:, 'showmarks_autoload')
    call showmarks#setup()
endif

" Vim global plugin for syncing project todos with todo.txt
" Last Change:	Mar 01, 2020
" Maintainer:	Evgeniy Talko <etalko@gmail.com>
"
" License:	This file is placed in the public domain.

let s:save_cpo = &cpo
set cpo&vim
                      
let &cpo = s:save_cpo
unlet s:save_cpo

" IF: current page name exists in projects folder:
"
" Get a project name for todo.txt from project folder name
"
" Read a todo.txt text:
" readfile(TODO_TXT_PATH)
"
" Filter lines by project:
" Iterate project list by filter()
"
" Paste filtered lines to project page
" :%s/\_^## Heading:\n\zs\(\_^\_.*\)\ze\n\n\(\_^[##\_.]\|^[\n*]\)/TEXT FOR REPLACEMENT
"
" ELSE:
" throw an error

" =============================================================================
" Filename: autoload/calendar/task/google.vim
" Author: itchyny
" License: MIT License
" Last Change: 2015/03/29 06:31:47.
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! calendar#task#google#new() abort
  return deepcopy(s:self)
endfunction

let s:self = {}

function! s:self.get_taskList() dict abort
  return calendar#google#task#getTaskList()
endfunction

function! s:self.get_task() dict abort
  return calendar#google#task#getTasks()
endfunction

function! s:self.insert(listid, previous, title, ...) dict abort
  call calendar#google#task#insert(a:listid, a:previous, a:title, a:0 ? a:1 : {})
endfunction

function! s:self.move(listid, taskid, previous) dict abort
  call calendar#google#task#move(a:listid, a:taskid, a:previous)
endfunction

function! s:self.update(listid, taskid, title, ...) dict abort
  call calendar#google#task#update(a:listid, a:taskid, a:title, a:0 ? a:1 : {})
endfunction

function! s:self.complete(listid, taskid) dict abort
  call calendar#google#task#complete(a:listid, a:taskid)
endfunction

function! s:self.uncomplete(listid, taskid) dict abort
  call calendar#google#task#uncomplete(a:listid, a:taskid)
endfunction

function! s:self.clear_completed(listid) dict abort
  call calendar#google#task#clear_completed(a:listid)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

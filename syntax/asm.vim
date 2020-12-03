" Vim syntax file
" Language: PEPE-16 ASM
" Maintainer: Rafael Branco
" Latest Revision: 1 December 2020

if exists("b:current_syntax")
  finish
endif

syn keyword asm_statement CMP JMP JNZ JZ JGT JGE JLT
syn keyword asm_statement CALL RET
syn keyword asm_statement PUSH POP
syn keyword asm_statement MOV MOVB MOVH

syn keyword asm_keyword PLACE EQU TABLE
syn keyword asm_keyword EI DI EI0 EI1 SP BTE
syn keyword asm_type STRING WORD

syn keyword asm_operation ADD SUB MOD XOR AND OR SHL SHR

syn match asm_regist "\<R\d\+\>"

syn match asm_label "\<\w\+:"

syn keyword asm_todo containedin=asm_comment contained TODO FIXME XXX NOTE
syn match asm_comment ";.*$" contains=asm_todo

syn match asm_constant "\<\x\+H\>"
syn match asm_constant "\<[01]\+B\>"
syn match asm_integer "\<\d\+\>"

let b:current_syntax = "asm"

hi def link asm_statement Statement
hi def link asm_operation Statement
hi def link asm_comment Comment
hi def link asm_todo Todo
hi def link asm_constant Constant
hi def link asm_integer Constant
hi def link asm_keyword Keyword
hi def link asm_regist Keyword
hi def link asm_type Type
hi def link asm_label Special


; Filename: add.ll
define i32 @addIntegers(i32 %a, i32 %b) {
entry:
  %sum = add i32 %a, %b
  ret i32 %sum
}


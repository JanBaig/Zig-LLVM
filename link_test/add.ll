
; Filename: add.ll
define i64 @addIntegers(i64 %a, i64 %b) {
entry:
  %sum = add i64 %a, %b
  ret i64 %sum
}


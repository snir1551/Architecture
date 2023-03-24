addi $s1,$s0,1
addi $s2,$s0,1
addi $s3,$0,1
addi $s6,$0,0
addi $t0,$0,1
addi $s4,$0,1
while:
	beq $t0,11,End #אם to==11 תסיים לולאה
	mul $s4,$s1,$s2 #הכפלה של מערך A*B
	mul $s4,$s4,$s3 #הכפלה של מערך A*B
	add $s6,$s6,$s4
	add $s1,$s1,2 #מוסיף 1 לערך2במערך A
	sll $s2,$s2,1 #מכפיל ב2 את הערך במערך B
	mul $s3,$s3,0xffffffff
	addi $t0,$t0,1 #קידום ב1
	J while #קופץ חזרה ללואה
End: #סיום
	li $v0,1
	add $a0,$zero,$s6
	syscall


  


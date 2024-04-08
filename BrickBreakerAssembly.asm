.model small
.stack 0100h

.data  ;===================================================DATA SEGMENT=========================================

ste1 db '      ||||| INSTRUCTIONS|||||        '
ste2 db '1. Move the paddle with arrow keys'
ste3 db '2. Hit the ball to destroy the bricks '
ste4 db '3. Press ENTER Button to Pause Game'
ste5 db '4. Press ENTER Button to Resume Game'
ste6 db '5. Complete All 3 Levels to Win the Game'
ste7 db '6. Each Player has 3 Lives'
ste8 db '7. Lose Them All and Its GAME OVER'

ste9 db '|YOU WIN| '   
ste10 db 'Press Any Key To Continue'

ste11 db '|| GAME ---- OVER ||'
ste12 db 'Press Any Key To Continue'

ste13 db 'GAME PAUSED'
ste14 db 'Press Any Key To Continue'

ste15 db '		CREDITS'
ste16 db 'ALI UMER           I21-0380'
ste17 db 'TAYYAB SOHAIL    I21-2478'


score db "SCORE:"
score_count db 0
score_col db 15 

level db "LEVEL 1"
level_2 db "LEVEL 2"
level_3 db "LEVEL 3"
level_count db 0
level_col db 32
level_counter db 0

x_for_score db 23
y_for_score db 4

color_checker db 0

total_bricks db 36

score_counter dw 0
score_counter_loop db 0

;x_for_score db 22
;y_for_score db 4

si_checker dw 0
heart_counter dw 3




hits dw 36 dup(0)
colors dw 11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12,11,12

px dw 120
py dw 180



mov paddle_mov,120
mov paddle_mov_ahead,200

ballY dw 150
ballX dw 100

flag dw 0
flag1 dw 0

newx dw 1
newy dw 1

left db 3
right db 6
up db 6
down db 6

count db 0
count_ball db 0
counter db 0


paddle_mov dw 0
paddle_mov_ahead dw 0 

bounce db 'Y'


var db 150

;INSTRUCTIONS PAGE DATA

;how to play = htp
htp1 db "MOVE THE PADDLE WITH ARROW KEYS",'$'
htp1_count db 0
htp1_r db 5  
htp1_c db 2   


htp2 db "DESTROY THE BRICKS WITH BALL AND EARN POINTS",'$'
htp3 db "YOU HAVE 3 LIVES, LOSE THEM ALL AND YOU LOSE"
htp4 db "COMPLETE 3 LEVELS TO WIN THE GAME",'$'

;=====================================================
lev  db "     LEVEL 1 COMPLETED ",'$' 
lev_count db 0
lev_row db 9  ;column
lev_col db 105   ;row


lev1 db " Press Any Key To Advance  ",'$'
lev1_count db 0
lev1_row db 18  ;column
lev1_col db  106  ;row

;======================================================
lev2  db "     LEVEL 2 COMPLETED ",'$' 
lev2_count db 0
lev2_row db 9  ;column
lev2_col db 105   ;row


lev3 db " Press Any Key To Advance  ",'$'
lev3_count db 0
lev3_row db 18  ;column
lev3_col db 106  ;row
;==========================================================

;=====================================================
lev4  db "     |YOU WIN|  ",'$' 
lev4_count db 0
lev4_row db 9  ;column
lev4_col db 105   ;row

lev7 db " Press Any Key To Advance  ",'$'
lev7_count db 0
lev7_row db 18  ;column
lev7_col db 106  ;row
;======================================================

;=====================================================
lev5  db "     || GAME ---- OVER || ",'$' 
lev5_count db 0
lev5_row db 9  ;column
lev5_col db 105   ;row

lev8 db " Press Any Key To Advance  ",'$'
lev8_count db 0
lev8_row db 18  ;column
lev8_col db 106  ;row
;======================================================

;=====================================================
lev6  db "     GAME PAUSED ",'$' 
lev6_count db 0
lev6_row db 15  ;column
lev6_col db 80   ;row

lev9 db " Press ENTER Key To Advance",'$'
lev9_count db 0
lev9_row db 20  ;column
lev9_col db 81  ;row
;======================================================

;=====================================================
lev20  db "     CREDITS ",'$' 
lev20_count db 0
lev20_row db 3  ;column
lev20_col db 105   ;row

lev21 db " ALI UMER           I21-0380",'$'
lev21_count db 0
lev21_row db 8  ;column
lev21_col db 100  ;row

lev22 db " M.TAYYAB SOHAIL    I21-2478",'$'
lev22_count db 0
lev22_row db 15  ;column
lev22_col db 100  ;row
;======================================================



print db " WELCOME TO BRICK BREAKER ",'$'
print1 db " Press Any Key" , '$' 

instruc db "================== INSTRUCTIONS ================================"
instruc_count db 0
instruc_row db 15
instruc_col db 15



string db "===WELCOME TO BACKSTEIN BRECHER==="
;count db 0
mousex db 5  ;column
mousey db 2   ;row



string1 db "      PRESS ANY KEY"
count1 db 0
col1 db 17  ;column
row1 db 6  ;row



input_str db "ENTER YOUR NAME:   "
input_count db 0
input_col db 10  ;column
input_row db 10   ;row


tcount db 0                             
tstr dw 0                                  
t_var dw 0						;================typing user name


;================================== DATA SEGMENTS FOR MAIN MENU STARTS HERE ==========


mmenu db "       MAIN MENU          " 
mmenu_count db 0
mmenu_col db 2
mmenu_row db 30


play db "      PLAY NEW GAME             "
play_count db 0
play_col db 5
play_row db 30


resume db "      CREDITS                 "    ; FORMAL PAUSE GAME FUNCTION
resume_count db 0
resume_col db 8
resume_row db 30


instruct db "      HOW TO PLAY        " 
instruct_count db 0
instruct_col db 11
instruct_row db 30


scores db "      HIGH  SCORE          " 
scores_count db 0
scores_col db 14
scores_row db 30


exit db "      EXIT GAME           " 
exit_count db 0
exit_col db 17
exit_row db 30


key_str db "*--> " 
key_col db 5 ;starting point
key_row db 25 ;starting point
key_count db 0




.code  ;=====================================================CODE SEGMENT===================================
jmp main





;===================================================    WRITE FUNCTIONS BELOW THIS LINE		=================================


;============================LEVEL 1 ADVANCE PAGE ================================
adv_lev1 proc 

mov si,offset lev
l90:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev_row;row
mov dl, lev_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,6   ;Green color
mov bl,5
mov bl,4
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev_count
inc lev_col

cmp lev_count,22
jne l90


mov si,offset lev1
l91:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev1_row;row
mov dl, lev1_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,3   ;Green color
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev1_count
inc lev1_col

cmp lev1_count,26
jne l91

call press_key

ret
adv_lev1 endp

;=======================================================================================================
;============================LEVEL 2 ADVANCE PAGE ================================
adv_lev2 proc 

mov si,offset lev2
l92:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev2_row;row
mov dl, lev2_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,6   ;Green color
mov bl,5
mov bl,4
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev2_count
inc lev2_col

cmp lev2_count,22
jne l92


mov si,offset lev3
l93:                 ;========================================================== 

mov ah, 2
mov dh, lev3_row;row
mov dl, lev3_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,3   ;Green color
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev3_count
inc lev3_col

cmp lev3_count,26
jne l93

call press_key

ret
adv_lev2 endp



;=============================================INSTRUCTIONS PAGE===========================================

instructions proc
mov ax, @data
mov ds, ax
mov es, ax
mov ax, 0
mov al, 10h
int 10h


mov ah, 6
mov al, 0
mov bh, 0001b     ;color
mov ch, 0     ;top row of window
mov cl, 0     ;left most column of window
mov dh, 24     ;Bottom row of window
mov dl, 80     ;Right most column of window
int 10h

mov ah, 6
mov al, 0
mov bh, 1001b     ;color
mov ch, 0     ;top row of window
mov cl, 0     ;left most column of window
mov dh, 6     ;Bottom row of window
mov dl, 80     ;Right most column of window
int 10h

;1
;set cursor position
mov ah,02h
mov dh,3
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste1
mov bp,offset ste1
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h

;2
;set cursor position
mov ah,02h
mov dh,11
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste2
mov bp,offset ste2
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h
;3

;set cursor position
mov ah,02h
mov dh,13
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste3
mov bp,offset ste3
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h

;4

;set cursor position
mov ah,02h
mov dh,15
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste4
mov bp,offset ste4
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h

;5

;set cursor position
mov ah,02h
mov dh,17
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste5
mov bp,offset ste5
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h

;6

;set cursor position
mov ah,02h
mov dh,19
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste6
mov bp,offset ste6
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h

;7
;set cursor position
mov ah,02h
mov dh,21
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste7
mov bp,offset ste7
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h

;8
;set cursor position
mov ah,02h
mov dh,23
mov dl,20
int 10h

;print string on screen
mov ah,13h
mov al,1
mov cx, lengthof ste8
mov bp,offset ste8
mov bx,0
mov bl,0011b		;color
mov bh,0
int 10h

ret
instructions endp





;================================== background color ========================

bg proc

mov ah, 6
mov al, 0
mov bh, 0011b     ;color
mov ch, 200     ;top row of window
mov cl, 20     ;left most column of window
mov dh, 200     ;Bottom row of window
mov dl, 60     ;Right most column of window
int 10h

ret
bg endp


;=============================================================INPUT FOR ENTER YOUR NAME

name_input proc

mov ah,10
int 21h
int 21h

mov ah,02
mov dl,ah
int 21h
mov dl,dh
int 21h

ret
name_input endp
;==================================================================================CLEAR SCREEN

clear proc

mov ax, 10h
int 10h
ret
clear endp


;=================================================================================check key is pressed
press_key proc

L3:
mov ah,0
int 16h
;jz L3
call clear
ret 
press_key endp

;=======================================MENU LOGO===========================

menu_button proc

mov si,offset mmenu

l13:                 

mov ah, 2
mov dh, mmenu_col;row
mov dl, mmenu_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,1110b   ; color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc mmenu_count
inc mmenu_row

cmp mmenu_count,23
jne l13

ret
menu_button endp


;=================================PLAY BUTTON=====================

play_button proc

mov si,offset play
l8:                 

mov ah, 2
mov dh, play_col;row
mov dl, play_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,1101b   ;color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc play_count
inc play_row

cmp play_count,25
jne l8

ret
play_button endp


;=================================PAUSE BUTTON=====================

resume_button proc

mov si,offset resume
l10:                 

mov ah, 2
mov dh, resume_col;row
mov dl, resume_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,1101b   ;color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc resume_count
inc resume_row

cmp resume_count,25
jne l10

ret
resume_button endp

;========================================= HOW TO PLAY ==========================================

instruct_button proc

mov si,offset instruct
l11:                 

mov ah, 2
mov dh, instruct_col;row
mov dl, instruct_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,1101b   ;color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc instruct_count
inc instruct_row

cmp instruct_count,25
jne l11

ret
instruct_button endp

;================================================== HIGH SCORES ===================================

scores_button proc

mov si,offset scores
l11:                 

mov ah, 2
mov dh, scores_col;row
mov dl, scores_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,1101b   ;color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc scores_count
inc scores_row

cmp scores_count,25
jne l11

ret
scores_button endp


;================================EXIT GAME===============================================

exit_button proc

mov si,offset exit
l12:                 

mov ah, 2
mov dh, exit_col;row
mov dl, exit_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,1101b   ;color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc exit_count
inc exit_row

cmp exit_count,25
jne l12

ret
exit_button endp




;===============================================================    KEYBOARD	 ===================================================

keyboard proc

mov si,offset key_str


l15:                 

mov ah, 2
mov dh, key_col;row
mov dl, key_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,199 ;color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc key_count
inc key_row

cmp key_count,5
jne l15


ret
keyboard endp





;=============================================================================== PRINTS ENTER YOUR NAME: 
enter_name proc ;

mov si,offset input_str
l4:                 

mov ah, 2
mov dh, input_col;row
mov dl, input_row;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,0011b   ; color
mov cx,1       ;repetition count


mov ah,09h
int 10h

inc si
inc input_count
inc input_row

cmp input_count,18
jne l4

call name_input
ret
enter_name endp

;=============================================================================================




type_name proc     ;=====================================TAKING USER NAME INPUT

mov ax,0
mov bx,0
mov cx,0
mov dx,0

input:
 mov ah,01h
 int 21h

 cmp al,13 ;ascii for Enter key
 je stopIt
 
 sub al,48
 mov ah,0
 
 mov t_var, ax 
 mov ax,0
 
 mov ax,tstr
 mov bx,10
 mul bx
 add ax,t_var
 
 mov tstr,ax ; Store name string 
 inc tcount ; Counter 
 jmp input
 stopIt:

 ret
type_name endp

;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================

;================================GAMEPLAY FOR LEVEL # 1 FUNCTIONALITY BELOW THIS POINT====================================

;=========================================================================================================================
;=========================================================================================================================
;=========================================================================================================================

credits proc
mov si,offset lev20
l1b:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev20_row;row
mov dl, lev20_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,10
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev20_count
inc lev20_col

cmp lev20_count,13
jne l1b



mov si,offset lev21
l2b:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev21_row;row
mov dl, lev21_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev21_count
inc lev21_col

cmp lev21_count,28
jne l2b


mov si,offset lev22
l3b:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev22_row;row
mov dl, lev22_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev22_count
inc lev22_col

cmp lev22_count,28
jne l3b

ret
credits endp

;========================================================================

pause_menu proc

mov si,offset lev6
l16a:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev6_row;row
mov dl, lev6_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,6   ;Green color
mov bl,5
mov bl,4
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev6_count
inc lev6_col

cmp lev6_count,17
jne l16a


mov si,offset lev9
l17a:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev9_row;row
mov dl, lev9_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,3   ;Green color
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev9_count
inc lev9_col

cmp lev9_count,28
jne l17a

ret
pause_menu endp






game_over proc

mov si,offset lev5
l12a:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev5_row;row
mov dl, lev5_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,6   ;Green color
mov bl,5
mov bl,4
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev5_count
inc lev5_col

cmp lev5_count,26
jne l12a


mov si,offset lev1
l13a:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev1_row;row
mov dl, lev1_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,3   ;Green color
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev1_count
inc lev1_col

cmp lev1_count,26
jne l13a

call press_key

ret
game_over endp





you_win proc
mov si,offset lev4
l10a:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev4_row;row
mov dl, lev4_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,6   ;Green color
mov bl,5
mov bl,4
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev4_count
inc lev4_col

cmp lev4_count,15
jne l10a


mov si,offset lev7
l11a:                 ;========================================================== PRINTS LEVEL 1 COMPLETED

mov ah, 2
mov dh, lev7_row;row
mov dl, lev7_col;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,3   ;Green color
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc lev7_count
inc lev7_col

cmp lev7_count,26
jne l11a

call press_key
ret
you_win endp
;==============================================================================================

;==================================================FUNCTION FOR OUTLINE AND WRITING SCORE ETC
outline proc

MOV DX, 20    ;y-cordinate (row)
MOV CX, 0    ;x-cordinate (column)

MOV AL, 7  ;green color

l1:
MOV AH, 0CH 
INT 10H
inc CX
cmp cx,320
jne l1


MOV DX, 21    ;y-cordinate (row)
MOV CX, 0    ;x-cordinate (column)

MOV AL, 7  ;green color

l2:
MOV AH, 0CH 
INT 10H
inc CX
cmp cx,320
jne l2


;=========


MOV DX, 20  ;y-cordinate (row)
MOV CX, 0   ;x-cordinate (column)
MOV AL, 7   ;green color

l3:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l3


MOV DX, 20    ;y-cordinate (row)
MOV CX, 1     ;x-cordinate (column)
MOV AL, 7    ;green color

l4:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l4

;======



MOV DX, 20     ;y-cordinate (row)
MOV CX, 318    ;x-cordinate (column)
MOV AL, 7      ;green color

l5:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l5


MOV DX, 20     ;y-cordinate (row)
MOV CX, 319    ;x-cordinate (column)
MOV AL, 7      ;green color

l6:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l6



MOV DX, 40    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)
MOV AL, 7    ;green color

l7:
MOV AH, 0CH 
INT 10H
inc cx
cmp cx,320
jne l7


MOV DX, 41    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)
MOV AL, 7    ;green color

l8:
MOV AH, 0CH 
INT 10H
inc cx
cmp cx,320
jne l8



;for printing score 

;setting cursor position
mov si,offset score
scoreloop:


mov ah, 2
mov dh, 4     ;row
mov dl, score_col    ;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

inc si
inc score_col
inc score_count
cmp score_count,6
jne scoreloop



mov ah, 2
mov dh, 4     ;row
mov dl, 21    ;column
int 10h

mov al,' '    ;ASCII code of Character 
mov bx,0
mov bl,7    ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h




;=========================

mov si,offset level
levelloop:


mov ah, 2
mov dh, 4     ;row
mov dl, level_col    ;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

inc si
inc level_col
inc level_count
cmp level_count,7
jne levelloop

;==========================



;========================================
mov ah, 2
mov dh, 0    ;row
mov dl, 0    ;column
int 10h 

mov al,' '    ;ASCII code of Character 
mov bx,0
mov bl,12     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h


mov ah, 2
mov dh, 4    ;row
mov dl, 2    ;column
int 10h

mov al,3      ;Printing heart
mov bx,0
mov bl,12     ;color
mov cx,3    ;repetition count
mov ah,09h
int 10h



ret
outline endp


ball proc

mov bl,  4
add cx,  2
mov bh,  2
mov dx, ballY      ; global variable 
mov cx, ballX		


Ltop:

Loop1:
mov ah, 0Ch
int 10h

dec bl
inc cx
cmp bl, 0

jne Loop1
mov bl, 6
sub cx, 5            ; CX 5 small box

dec bh
inc dx
cmp bh,0
;=================================================================================
jne Ltop
mov bh, 4

Lmid:
sub cx, 2			 ;  sub to move to initial position 
mov bl, 8            ; 8 pixels

Loop2:
mov ah, 0Ch
int 10h
dec bl
inc cx
cmp bl,0

jne Loop2
sub cx, 6              ; middle 6 pixel
inc dx
dec bh
cmp bh,0

;=================================================================================
jne Lmid

mov bh, 2
mov bl, 6
sub cx, 1

Llow:

Loop5:
mov ah, 0Ch
int 10h

dec bl
inc cx
cmp bl,0

jne Loop5

mov bl,4
sub cx, 5                  ; small box for lower side
dec bh

inc dx
cmp bh,0

jne Llow
;=================================================================================
ret
ball endp

move_ball proc


.while (bounce != 'N')

mov al,10
call ball
call paddle_move


;CONDITIONS FOR UPPER (TOP) SIDE
mov bx,px 

.IF(level_counter==1)
add bx,60
.ENDIF

.IF(level_counter==2)
add bx,55
.ENDIF

.IF(level_counter==3)
add bx,50
.ENDIF


mov ax,px
mov dx,py
sub dx,6

.IF (ballx>=ax && ballx<=bx && bally==dx)
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.elseif(ballX == 190)
	mov newx,1
	dec heart_counter

	.endif

	.if(newx == -1)
	dec ballX
	jmp L31
	
	.elseif(newx ==1)
	inc ballX
	jmp L31

	.endif
	
	L31:
	mov bx ,py 
	mov ax ,py
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

.ENDIF

mov ax,0
push ax
mov ax,[colors+0]
push ax
mov ax,10
push ax
mov ax,48
push ax
call brick_logic


mov ax,2
push ax
mov ax,[colors+2]
push ax
mov ax,44
push ax
mov ax,48
push ax
call brick_logic


mov ax,4
push ax
mov ax,[colors+4]
push ax
mov ax,78
push ax
mov ax,48
push ax
call brick_logic

mov ax,6
push ax
mov ax,[colors+6]
push ax
mov ax,112
push ax
mov ax,48
push ax
call brick_logic

mov ax,8
push ax
mov ax,[colors+8]
push ax
mov ax,146
push ax
mov ax,48
push ax
call brick_logic

mov ax,10
push ax
mov ax,[colors+10]
push ax
mov ax,180
push ax
mov ax,48
push ax
call brick_logic

mov ax,12
push ax
mov ax,[colors+12]
push ax
mov ax,214
push ax
mov ax,48
push ax
call brick_logic

mov ax,14
push ax
mov ax,[colors+14]
push ax
mov ax,248
push ax
mov ax,48
push ax
call brick_logic


mov ax,16
push ax
mov ax,[colors+16]
push ax
mov ax,282
push ax
mov ax,48
push ax
call brick_logic


;==============second row

mov ax,18
push ax
mov ax,[colors+18]
push ax
mov ax,10
push ax
mov ax,58
push ax
call brick_logic


mov ax,20
push ax
mov ax,[colors+20]
push ax
mov ax,44
push ax
mov ax,58
push ax
call brick_logic


mov ax,22
push ax
mov ax,[colors+22]
push ax
mov ax,78
push ax
mov ax,58
push ax
call brick_logic

mov ax,24
push ax
mov ax,[colors+24]
push ax
mov ax,112
push ax
mov ax,58
push ax
call brick_logic

mov ax,26
push ax
mov ax,[colors+26]
push ax
mov ax,146
push ax
mov ax,58
push ax
call brick_logic

mov ax,28
push ax
mov ax,[colors+28]
push ax
mov ax,180
push ax
mov ax,58
push ax
call brick_logic

mov ax,30
push ax
mov ax,[colors+30]
push ax
mov ax,214
push ax
mov ax,58
push ax
call brick_logic

mov ax,32
push ax
mov ax,[colors+32]
push ax
mov ax,248
push ax
mov ax,58
push ax
call brick_logic



mov ax,34
push ax
mov ax,[colors+34]
push ax
mov ax,282
push ax
mov ax,58
push ax
call brick_logic


;===================


;==============third row

mov ax,36
push ax
mov ax,[colors+36]
push ax
mov ax,10
push ax
mov ax,68
push ax
call brick_logic


mov ax,38
push ax
mov ax,[colors+38]
push ax
mov ax,44
push ax
mov ax,68
push ax
call brick_logic


mov ax,40
push ax
mov ax,[colors+40]
push ax
mov ax,78
push ax
mov ax,68
push ax
call brick_logic

mov ax,42
push ax
mov ax,[colors+42]
push ax
mov ax,112
push ax
mov ax,68
push ax
call brick_logic

mov ax,44
push ax
mov ax,[colors+44]
push ax
mov ax,146
push ax
mov ax,68
push ax
call brick_logic

mov ax,46
push ax
mov ax,[colors+46]
push ax
mov ax,180
push ax
mov ax,68
push ax
call brick_logic


mov ax,48
push ax
mov ax,[colors+48]
push ax
mov ax,214
push ax
mov ax,68
push ax
call brick_logic

mov ax,50
push ax
mov ax,[colors+50]
push ax
mov ax,248
push ax
mov ax,68
push ax
call brick_logic


mov ax,52
push ax
mov ax,[colors+52]
push ax
mov ax,282
push ax
mov ax,68
push ax
call brick_logic


;===========fourth row


mov ax,54
push ax
mov ax,[colors+54]
push ax
mov ax,10
push ax
mov ax,78
push ax
call brick_logic


mov ax,56
push ax
mov ax,[colors+56]
push ax
mov ax,44
push ax
mov ax,78
push ax
call brick_logic


mov ax,58
push ax
mov ax,[colors+58]
push ax
mov ax,78
push ax
mov ax,78
push ax
call brick_logic

mov ax,60
push ax
mov ax,[colors+60]
push ax
mov ax,112
push ax
mov ax,78
push ax
call brick_logic

mov ax,62
push ax
mov ax,[colors+62]
push ax
mov ax,146
push ax
mov ax,78
push ax
call brick_logic

mov ax,64
push ax
mov ax,[colors+64]
push ax
mov ax,180
push ax
mov ax,78
push ax
call brick_logic


mov ax,66
push ax
mov ax,[colors+66]
push ax
mov ax,214
push ax
mov ax,78
push ax
call brick_logic

mov ax,68
push ax
mov ax,[colors+68]
push ax
mov ax,248
push ax
mov ax,78
push ax
call brick_logic


mov ax,70
push ax
mov ax,[colors+70]
push ax
mov ax,282
push ax
mov ax,78
push ax
call brick_logic


.IF(level_counter==1)
mov cx,60000   ; delay functionality

.ELSEIF(level_counter==2)
mov cx,30000

.ELSEIF(level_counter==3)
mov cx,10000

.ENDIF
L10:
loop L10


mov al,0
call ball


.if(ballX <= 5)
mov newx,1

.elseif(ballX >= 310)
mov newx,-1

.endif


.if(newx == -1)
dec ballX
jmp l12

.elseif(newx ==1)
inc ballX
jmp l12

.endif

l12:
.if(ballY <= 42)
mov newy,1
.elseif(ballY == 190)
mov newy,-1
dec heart_counter

.endif


.if(newy == -1)
dec ballY

.elseif(newy == 1)
inc ballY

;=====================================
.endif
call print_score


.if(total_bricks==0)
call clear
jmp bye
.endif

.if(heart_counter==0)
mov ah, 2
mov dh, 4    ;row
mov dl, 2    ;column
int 10h

mov al,3     ;Printing heart
mov bx,0
mov bl,7       ;color
mov cx,1    ;repetition count
mov ah,09h
int 10h
jmp bye
.endif

.if(heart_counter==2)
mov ah, 2
mov dh, 4    ;row
mov dl, 4    ;column
int 10h

mov al,3      ;Printing heart
mov bx,0
mov bl,7       ;color
mov cx,1    ;repetition count
mov ah,09h
int 10h

.endif


.if(heart_counter==1)
mov ah, 2
mov dh, 4    ;row
mov dl, 3    ;column
int 10h

mov al,3     ;Printing heart
mov bx,0
mov bl,7       ;color
mov cx,1    ;repetition count
mov ah,09h
int 10h


.endif
.endw

bye:

ret
move_ball endp
;===============================================================================================================;




print_score proc

OUTPUT:
mov dx, 0
MOV AX, score_counter
MOV Bx, 10
L1:
    mov dx, 0
	CMP Ax, 0
	JE DISP
	DIV Bx
	MOV cx, dx
	PUSH CX
	inc score_counter_loop
	MOV AH, 0
	JMP L1

		DISP:
        mov ah, 2
		mov dh, y_for_score; row/y
		mov dl, x_for_score;  col/x
		mov al,12
		int 10h
		mov dx,0
		
	CMP score_counter_loop, 0
	JE eexit
	POP DX
	ADD DX, 48
	MOV AH, 02H
	INT 21H
	dec score_counter_loop
	inc x_for_score
	JMP DISP

eexit:
mov x_for_score,23
mov y_for_score,4

ret
print_score endp



make_paddle proc 

push bp
mov bp,sp
sub sp,2
MOV CX, [bp+4]   ;x-cordinate (column)
MOV DX, [bp+6]    ;y-cordinate (row)
MOV AL,   [bp+8]  ;yellow color

add dx,4
mov [bp-2],dx
mov dx,[bp+6]

mov bx,[bp+4]
add bx,60


La1:

MOV AH, 0CH
INT 10H

inc cx
cmp cx, bx
jne La1

mov cx,[bp+4]
add dx,1
cmp dx,[bp-2]

jne La1
jmp La2
La2:
add sp,2
pop bp
ret 6

make_paddle endp
;=====================================================================================================================


brick_logic proc

push bp
mov bp,sp 
mov si,[bp+10]

;CODE TO PRINT A BRICK
mov count,0
mov cx,[bp+6]         ; x coordniate(column)
mov dx,[bp+4]         ; y coordinate(row)

outer:

	inner:		
	mov ah,0ch                 
	mov al,[bp+8]      ;color
	int 10h
 
	inc cx                   
	mov ax,cx
	sub ax,[bp+6]
	cmp ax,26                
	jne inner


mov cx,[bp+6]           
inc dx     
inc count             
          
cmp count,6
jne outer	
;BRICK PRINTING ENDS HERE


.IF(level_counter==1)
;CONDITIONS FOR LEFT MOST SIDE
mov ax,[bp+4]
mov bx,[bp+4]
add bx,8
mov dx,[bp+6]
mov cx,bally
add cx,9
.IF (cx>=ax && cx<=bx && ballx==dx)
inc [hits+si]
.IF ([hits+si]==1)



;===================================Score checking======================
	
	.if([colors+si]==11)
	add score_counter,5
	
	.elseif([colors+si]==12)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag1,0


	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L0
	
	.elseif(newx ==1)
	inc ballX
	jmp L0

	.endif
	
	L0:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF
jmp eexit
.ENDIF


;CONDITIONS FOR LOWER (DOWN) SIDE
mov ax,[bp+6]
mov bx,[bp+6]
add bx,26
mov dx,[bp+4]
add dx,8

.IF (ballx>=ax && ballx<=bx && bally==dx)
inc [hits+si]
.IF ([hits+si]==1)


;===================================Score checking======================
	
	.if([colors+si]==11)
	add score_counter,5
	
	.elseif([colors+si]==12)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag,1


	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L1
	
	.elseif(newx ==1)
	inc ballX
	jmp L1

	.endif
	
	L1:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF
jmp eexit
.ENDIF


;CONDITIONS FOR RIGHT MOST SIDE
mov ax,[bp+4]
mov bx,[bp+4]
add bx,8
mov dx,[bp+6]
add dx,26
.IF (bally>=ax && bally<=bx && ballx==dx)
inc [hits+si]
.IF ([hits+si]==1)


;===================================Score checking======================
	
	.if([colors+si]==11)
	add score_counter,5
	
	.elseif([colors+si]==12)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag1,1



	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L2
	
	.elseif(newx ==1)
	inc ballX
	jmp L2

	.endif
	
	L2:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF
jmp eexit
.ENDIF



;CONDITIONS FOR UPPER (TOP) SIDE
mov bx,[bp+6]
add bx,26
mov ax,[bp+6]
mov dx,[bp+4]

.IF (ballx>=ax && ballx<=bx && bally==dx)
inc [hits+si]

.IF ([hits+si]==1)


;===================================Score checking======================
	
	.if([colors+si]==11)
	add score_counter,5
	
	.elseif([colors+si]==12)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag,0
	
	
	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L3
	
	.elseif(newx ==1)
	inc ballX
	jmp L3

	.endif
	
	L3:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF


jmp eexit

.ENDIF

.ENDIF


;==========================================================================================
;==========================================================================================
;===================================================================FOR LEVEL 2============
;==========================================================================================
;==========================================================================================


.IF(level_counter==2)
;CONDITIONS FOR LEFT MOST SIDE
mov ax,[bp+4]
mov bx,[bp+4]
add bx,8
mov dx,[bp+6]
mov cx,bally
add cx,9
.IF (cx>=ax && cx<=bx && ballx==dx)
inc [hits+si]
.IF ([hits+si]==1)


	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif


mov ax,0
mov [colors+si],7
mov flag1,0


	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L00
	
	.elseif(newx ==1)
	inc ballX
	jmp L00

	.endif
	
	L00:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound

.ENDIF

.IF ([hits+si]==2)



;===================================Score checking======================
	
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag1,0


	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L000
	
	.elseif(newx ==1)
	inc ballX
	jmp L000

	.endif
	
	L000:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF


jmp eexit
.ENDIF


;CONDITIONS FOR LOWER (DOWN) SIDE
mov ax,[bp+6]
mov bx,[bp+6]
add bx,26
mov dx,[bp+4]
add dx,8

.IF (ballx>=ax && ballx<=bx && bally==dx)
inc [hits+si]

.IF ([hits+si]==1)


	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif


mov ax,0
mov [colors+si],7
mov flag,1


	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L11
	
	.elseif(newx ==1)
	inc ballX
	jmp L11

	.endif
	
	L11:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
.ENDIF



.IF ([hits+si]==2)


;===================================Score checking======================
	
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag,1


	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L111
	
	.elseif(newx ==1)
	inc ballX
	jmp L111

	.endif
	
	L111:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF



jmp eexit
.ENDIF


;CONDITIONS FOR RIGHT MOST SIDE
mov ax,[bp+4]
mov bx,[bp+4]
add bx,8
mov dx,[bp+6]
add dx,26
.IF (bally>=ax && bally<=bx && ballx==dx)
inc [hits+si]
.IF ([hits+si]==1)

	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif


mov ax,0
mov [colors+si],7
mov flag1,1



	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L22
	
	.elseif(newx ==1)
	inc ballX
	jmp L22

	.endif
	
	L22:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound

.ENDIF


.IF ([hits+si]==2)


;===================================Score checking======================
	
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag1,1



	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L222
	
	.elseif(newx ==1)
	inc ballX
	jmp L222

	.endif
	
	L222:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF


jmp eexit
.ENDIF



;CONDITIONS FOR UPPER (TOP) SIDE
mov bx,[bp+6]
add bx,26
mov ax,[bp+6]
mov dx,[bp+4]

.IF (ballx>=ax && ballx<=bx && bally==dx)
inc [hits+si]

.IF ([hits+si]==1)


	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif

mov ax,0
mov [colors+si],7
mov flag,0
	
	
	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L33
	
	.elseif(newx ==1)
	inc ballX
	jmp L33

	.endif
	
	L33:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
.ENDIF


.IF ([hits+si]==2)


;===================================Score checking======================
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag,0
	
	
	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L333
	
	.elseif(newx ==1)
	inc ballX
	jmp L333

	.endif
	
	L333:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF



jmp eexit

.ENDIF

.ENDIF




;===================================================================FOR LEVEL 3
;===================================================================
;===================================================================


.IF(level_counter==3)
;CONDITIONS FOR LEFT MOST SIDE
mov ax,[bp+4]
mov bx,[bp+4]
add bx,8
mov dx,[bp+6]
mov cx,bally
add cx,9
.IF (cx>=ax && cx<=bx && ballx==dx)
inc [hits+si]
.IF ([hits+si]==1)


	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif


mov ax,0
mov [colors+si],15
mov flag1,0


	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L0011
	
	.elseif(newx ==1)
	inc ballX
	jmp L0011

	.endif
	
	L0011:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound

.ENDIF

.IF ([hits+si]==2)




mov ax,0
mov [colors+si],7
mov flag1,0


	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L00011
	
	.elseif(newx ==1)
	inc ballX
	jmp L00011

	.endif
	
	L00011:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
.ENDIF


.IF ([hits+si]==3)


;===================================Score checking======================
	
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	



mov ax,0
mov [colors+si],0
mov flag1,0


	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L0000
	
	.elseif(newx ==1)
	inc ballX
	jmp L0000

	.endif
	
	L0000:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF



jmp eexit
.ENDIF


;CONDITIONS FOR LOWER (DOWN) SIDE
mov ax,[bp+6]
mov bx,[bp+6]
add bx,26
mov dx,[bp+4]
add dx,8

.IF (ballx>=ax && ballx<=bx && bally==dx)
inc [hits+si]

.IF ([hits+si]==1)


	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif


mov ax,0
mov [colors+si],15
mov flag,1


	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L1100
	
	.elseif(newx ==1)
	inc ballX
	jmp L1100

	.endif
	
	L1100:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
.ENDIF



.IF ([hits+si]==2)



mov ax,0
mov [colors+si],7
mov flag,1


	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L11100
	
	.elseif(newx ==1)
	inc ballX
	jmp L11100

	.endif
	
	L11100:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
.ENDIF




.IF ([hits+si]==3)


;===================================Score checking======================
	
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag,1


	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L1111
	
	.elseif(newx ==1)
	inc ballX
	jmp L1111

	.endif
	
	L1111:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF




jmp eexit
.ENDIF


;CONDITIONS FOR RIGHT MOST SIDE
mov ax,[bp+4]
mov bx,[bp+4]
add bx,8
mov dx,[bp+6]
add dx,26
.IF (bally>=ax && bally<=bx && ballx==dx)
inc [hits+si]

.IF ([hits+si]==1)

	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif


mov ax,0
mov [colors+si],15
mov flag1,1



	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L2211
	
	.elseif(newx ==1)
	inc ballX
	jmp L2211

	.endif
	
	L2211:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound

.ENDIF


.IF ([hits+si]==2)


mov ax,0
mov [colors+si],7
mov flag1,1



	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L22200
	
	.elseif(newx ==1)
	inc ballX
	jmp L22200

	.endif
	
	L22200:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound

.ENDIF



.IF ([hits+si]==3)


;===================================Score checking======================
	
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag1,1



	mov ax,[bp+4]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L2222
	
	.elseif(newx ==1)
	inc ballX
	jmp L2222

	.endif
	
	L2222:
	mov bx ,[bp+4] 
	mov ax ,[bp+4]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF



jmp eexit
.ENDIF



;CONDITIONS FOR UPPER (TOP) SIDE
mov bx,[bp+6]
add bx,26
mov ax,[bp+6]
mov dx,[bp+4]

.IF (ballx>=ax && ballx<=bx && bally==dx)
inc [hits+si]

.IF ([hits+si]==1)


	.if([colors+si]==11)
	mov color_checker,0
	
	.elseif([colors+si]==12)
	mov color_checker,1
	
	.endif

mov ax,0
mov [colors+si],15
mov flag,0
	
	
	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L3300
	
	.elseif(newx ==1)
	inc ballX
	jmp L3300

	.endif
	
	L3300:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
.ENDIF


.IF ([hits+si]==2)



mov ax,0
mov [colors+si],7
mov flag,0
	
	
	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L333
	
	.elseif(newx ==1)
	inc ballX
	jmp L33300

	.endif
	
	L33300:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound

.ENDIF




.IF ([hits+si]==3)


;===================================Score checking======================
	
	.if(color_checker==0)
	add score_counter,5
	
	.elseif(color_checker==1)
	add score_counter,10
	
	.endif
;============================================================================	


mov ax,0
mov [colors+si],0
mov flag,0
	
	
	mov ax,[bp+6]
		
	.if(ballx >= bx )
	mov newx,1

	.elseif(ballX <= ax)
	mov newx,-1

	.endif

	.if(newx == -1)
	dec ballX
	jmp L33330011
	
	.elseif(newx ==1)
	inc ballX
	jmp L33330011

	.endif
	
	L33330011:
	mov bx ,[bp+4] 
	mov ax ,[bp+6]
	add ax ,8
	
	.if(ballY >= bx)
	mov newy,1
	
	.elseif(ballY <= ax)
	mov newy , -1
	
	.endif
	
	.if(newy == -1)
	dec ballY
	
	.elseif(newy == 1)
	inc ballY
	.endif

;=====================================
call sound
dec total_bricks
.ENDIF



jmp eexit

.ENDIF

.ENDIF




eexit:


pop bp
ret 8
brick_logic endp

;===========================================================================================================





;===========================================================================================================
;===========================================================================================================

paddle_move proc            ;paddle and border
P1: 
mov ax,11		;color
push ax
mov ax,py          ;y/row
push ax
mov ax,px        ;x/col
push ax
call make_paddle

 mov ah,1
 int 16h
 jz Pout

 mov ah,0
 int 16h


cmp ah,4Bh   ; left
je Pleft

cmp ah,4Dh ;right
je Pright

cmp al,13
je ppp
jmp Pout


ppp:
call pausee

Pleft:

mov ax,0		   ;color
push ax
mov ax,py          ;y/row
push ax
mov ax,px          ;x/col
push ax
call make_paddle


cmp px,4
jne P3
jmp P4 
P3:
mov ax,px
sub ax,4
mov px,ax
jmp P1

Pright:

mov ax,0		   ;color
push ax
mov ax,py          ;y/row
push ax
mov ax,px          ;x/col
push ax
call make_paddle

cmp px,256


jne P5
jmp P4 
P5:
mov ax,px
add ax,4
mov px,ax
P4:

Pout:
ret
paddle_move endp



;main function for calling all functions
level1 proc


;video mode (graphic) 
mov ah, 0
mov al, 13h    ;320x200
int 10h
mov level_counter,1
call outline
call move_ball


ret
level1 endp

;==========================================================================
baharniklo proc


call clear 

ret
baharniklo endp

;==========================================================MAIN===============================================


;=====================================================================================================================
;=====================================================================================================================
;=====================================================================================================================
;=======================================LEVEL 2 IMPLEMENENTATION STARTS FROM HERE=====================================
;=====================================================================================================================
;=====================================================================================================================
;=====================================================================================================================

level2outline proc

mov ax,0
mov bx,0
mov cx,0
mov dx,0

MOV DX, 20    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)

MOV AL, 7     ;color

l1:
MOV AH, 0CH 
INT 10H
inc CX
cmp cx,320
jne l1


MOV DX, 21    ;y-cordinate (row)
MOV CX, 0    ;x-cordinate (column)

MOV AL, 7  ;green color

l2:
MOV AH, 0CH 
INT 10H
inc CX
cmp cx,320
jne l2


;=========


MOV DX, 20  ;y-cordinate (row)
MOV CX, 0   ;x-cordinate (column)
MOV AL, 7   ;green color

l3:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l3


MOV DX, 20    ;y-cordinate (row)
MOV CX, 1     ;x-cordinate (column)
MOV AL, 7    ;green color

l4:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l4

;======



MOV DX, 20     ;y-cordinate (row)
MOV CX, 318    ;x-cordinate (column)
MOV AL, 7      ;green color

l5:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l5


MOV DX, 20     ;y-cordinate (row)
MOV CX, 319    ;x-cordinate (column)
MOV AL, 7      ;green color

l6:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l6



MOV DX, 40    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)
MOV AL, 7    ;green color

l7:
MOV AH, 0CH 
INT 10H
inc cx
cmp cx,320
jne l7


MOV DX, 41    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)
MOV AL, 7    ;green color

l8:
MOV AH, 0CH 
INT 10H
inc cx
cmp cx,320
jne l8



;for printing score 

;setting cursor position

mov score_col,15
mov score_count,0

mov si,offset score
scoreloop:


mov ah, 2
mov dh, 4     ;row
mov dl, score_col    ;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

inc si
inc score_col
inc score_count
cmp score_count,6
jne scoreloop



mov ah, 2
mov dh, 4     ;row
mov dl, 21    ;column
int 10h

mov al,' '    ;ASCII code of Character 
mov bx,0
mov bl,7    ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h




;=========================

mov level_col,32
mov level_count,0
mov si,offset level_2

levelloop:


mov ah, 2
mov dh, 4     ;row
mov dl, level_col    ;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

inc si
inc level_col
inc level_count
cmp level_count,7
jne levelloop

;==========================



;========================================



mov ah, 2
mov dh, 4    ;row
mov dl, 2    ;column
int 10h

mov al,3      ;Printing heart
mov bx,0
mov bl,12     ;color
mov cx,3    ;repetition count
mov ah,09h
int 10h

mov ah, 2
mov dh, 0    ;row
mov dl, 0    ;column
int 10h 

mov al,' '    ;ASCII code of Character 
mov bx,0
mov bl,12     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

ret
level2outline endp


;MAIN FUNCTION FOR CALLING LEVEL 2
level2 proc

mov ah,0
mov al,13h
int 10h
mov level_counter,2
mov ballx,150
mov bally,150
mov px,120
mov py,180
call level2outline



mov [hits+0],0
mov [hits+2],0
mov [hits+4],0
mov [hits+6],0
mov [hits+8],0
mov [hits+10],0
mov [hits+12],0
mov [hits+14],0
mov [hits+16],0
mov [hits+18],0
mov [hits+20],0
mov [hits+22],0
mov [hits+24],0
mov [hits+26],0
mov [hits+28],0
mov [hits+30],0
mov [hits+32],0
mov [hits+34],0
mov [hits+36],0
mov [hits+38],0
mov [hits+40],0
mov [hits+42],0
mov [hits+44],0
mov [hits+46],0
mov [hits+48],0
mov [hits+50],0
mov [hits+52],0
mov [hits+54],0
mov [hits+56],0
mov [hits+58],0
mov [hits+60],0
mov [hits+62],0
mov [hits+64],0
mov [hits+66],0
mov [hits+68],0
mov [hits+70],0



mov [colors+0],11
mov [colors+2],12
mov [colors+4],11
mov [colors+6],12
mov [colors+8],11
mov [colors+10],12
mov [colors+12],11
mov [colors+14],12
mov [colors+16],11
mov [colors+18],12
mov [colors+20],11
mov [colors+22],12
mov [colors+24],11
mov [colors+26],12
mov [colors+28],11
mov [colors+30],12
mov [colors+32],11
mov [colors+34],12
mov [colors+36],11
mov [colors+38],12
mov [colors+40],11
mov [colors+42],12
mov [colors+44],11
mov [colors+46],12
mov [colors+48],11
mov [colors+50],12
mov [colors+52],11
mov [colors+54],12
mov [colors+56],11
mov [colors+58],12
mov [colors+60],11
mov [colors+62],12
mov [colors+64],11
mov [colors+66],12
mov [colors+68],11
mov [colors+70],12



call move_ball

ret
level2 endp


;=====================================================================================================================
;=====================================================================================================================
;=====================================================================================================================
;=======================================LEVEL 3 IMPLEMENENTATION STARTS FROM HERE=====================================
;=====================================================================================================================
;=====================================================================================================================
;=====================================================================================================================

level3outline proc

mov ax,0
mov bx,0
mov cx,0
mov dx,0

MOV DX, 20    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)

MOV AL, 7     ;color

l1:
MOV AH, 0CH 
INT 10H
inc CX
cmp cx,320
jne l1


MOV DX, 21    ;y-cordinate (row)
MOV CX, 0    ;x-cordinate (column)

MOV AL, 7  ;green color

l2:
MOV AH, 0CH 
INT 10H
inc CX
cmp cx,320
jne l2


;=========


MOV DX, 20  ;y-cordinate (row)
MOV CX, 0   ;x-cordinate (column)
MOV AL, 7   ;green color

l3:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l3


MOV DX, 20    ;y-cordinate (row)
MOV CX, 1     ;x-cordinate (column)
MOV AL, 7    ;green color

l4:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l4

;======



MOV DX, 20     ;y-cordinate (row)
MOV CX, 318    ;x-cordinate (column)
MOV AL, 7      ;green color

l5:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l5


MOV DX, 20     ;y-cordinate (row)
MOV CX, 319    ;x-cordinate (column)
MOV AL, 7      ;green color

l6:
MOV AH, 0CH 
INT 10H
inc dx
cmp dx,200
jne l6



MOV DX, 40    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)
MOV AL, 7    ;green color

l7:
MOV AH, 0CH 
INT 10H
inc cx
cmp cx,320
jne l7


MOV DX, 41    ;y-cordinate (row)
MOV CX, 0     ;x-cordinate (column)
MOV AL, 7    ;green color

l8:
MOV AH, 0CH 
INT 10H
inc cx
cmp cx,320
jne l8



;for printing score 



mov score_col,15
mov score_count,0

mov si,offset score
scoreloop:


mov ah, 2
mov dh, 4     ;row
mov dl, score_col    ;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

inc si
inc score_col
inc score_count
cmp score_count,6
jne scoreloop



mov ah, 2
mov dh, 4     ;row
mov dl, 21    ;column
int 10h

mov al,' '    ;ASCII code of Character 
mov bx,0
mov bl,7    ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h




;=========================

mov level_col,32
mov level_count,0
mov si,offset level_3

levelloop:


mov ah, 2
mov dh, 4     ;row
mov dl, level_col    ;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,7     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

inc si
inc level_col
inc level_count
cmp level_count,7
jne levelloop

;==========================



;========================================



mov ah, 2
mov dh, 4    ;row
mov dl, 2    ;column
int 10h

mov al,3      ;Printing heart
mov bx,0
mov bl,12     ;color
mov cx,3    ;repetition count
mov ah,09h
int 10h

mov ah, 2
mov dh, 0    ;row
mov dl, 0    ;column
int 10h 

mov al,' '    ;ASCII code of Character 
mov bx,0
mov bl,12     ;color
mov cx,1      ;repetition count
mov ah,09h
int 10h

ret
level3outline endp


pausee proc

L1:

mov ah,1
int 16h

mov ah,0
int 16h
;call pause_menu
cmp al,13
je outtt
jmp L1

outtt:
ret
pausee endp



level3 proc

mov ah,0
mov al,13h
int 10h

mov level_counter,3
mov ballx,150
mov bally,150
mov px,120
mov py,180
call level3outline



mov [hits+0],0
mov [hits+2],0
mov [hits+4],0
mov [hits+6],0
mov [hits+8],0
mov [hits+10],0
mov [hits+12],0
mov [hits+14],0
mov [hits+16],0
mov [hits+18],0
mov [hits+20],0
mov [hits+22],0
mov [hits+24],0
mov [hits+26],0
mov [hits+28],0
mov [hits+30],0
mov [hits+32],0
mov [hits+34],0
mov [hits+36],0
mov [hits+38],0
mov [hits+40],0
mov [hits+42],0
mov [hits+44],0
mov [hits+46],0
mov [hits+48],0
mov [hits+50],0
mov [hits+52],0
mov [hits+54],0
mov [hits+56],0
mov [hits+58],0
mov [hits+60],0
mov [hits+62],0
mov [hits+64],0
mov [hits+66],0
mov [hits+68],0
mov [hits+70],0



mov [colors+0],11
mov [colors+2],12
mov [colors+4],11
mov [colors+6],12
mov [colors+8],11
mov [colors+10],12
mov [colors+12],11
mov [colors+14],12
mov [colors+16],11
mov [colors+18],12
mov [colors+20],11
mov [colors+22],12
mov [colors+24],11
mov [colors+26],12
mov [colors+28],11
mov [colors+30],12
mov [colors+32],11
mov [colors+34],12
mov [colors+36],11
mov [colors+38],12
mov [colors+40],11
mov [colors+42],12
mov [colors+44],11
mov [colors+46],12
mov [colors+48],11
mov [colors+50],12
mov [colors+52],11
mov [colors+54],12
mov [colors+56],11
mov [colors+58],12
mov [colors+60],11
mov [colors+62],12
mov [colors+64],11
mov [colors+66],12
mov [colors+68],11
mov [colors+70],12



call move_ball
ret
level3 endp

sound proc
mov al, 182         ; Prepare the speaker for the
out 43h, al         ;  note.
mov ax, 4560        ; Frequency number (in decimal)
                                 ;for middle C.
out 42h, al         ; Output low byte.
mov al, ah          ; Output high byte.
out 42h, al
in al, 61h         ; Turn on note (get value from
                                ;port 61h).
or al, 00000011b   ; Set bits 1 and 0.
out 61h, al         ; Send new value.
mov bx, 2          ; Pause for duration of note.
pause1:
mov cx, 65535
pause2:
dec cx
jne pause2
dec bx
jne pause1
in al, 61h         ; Turn off note (get value from
                                ;port 61h).
and al, 11111100b   ; Reset bits 1 and 0.
out 61h, al         ; Send new value.
		
ret
sound endp




main proc

mov ax,@data
mov ds,ax
mov ax,0

;video mode (graphic) 
mov ah, 0
mov al, 13h    ;320x200
int 10h

mov si,offset string
l1:                 ;========================================================== PRINTS WELCOME TO BRICK BREAKER

mov ah, 2
mov dh, mousex;row
mov dl, mousey;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,0011b   ;Green color
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc count
inc mousey

cmp count,34
jne l1



mov si,offset string1
l2:        ;============================================================== PRINTS PRESS ANY KEY

mov ah, 2
mov dh, col1;row
mov dl, row1;column
int 10h

mov al,[si]    ;ASCII code of Character 
mov bx,0
mov bl,0101b   ; color
mov cx,1       ;repetition count

mov ah,09h
int 10h

inc si
inc count1
inc row1

cmp count1,19
jne l2


call press_key
call enter_name 

mov ah,2
mov dh,10     ;row  =============================== USER NAME INPUT (type_name function)
mov dl,27   ;column
int 10h

mov tcount,0
mov tstr,0
mov t_var,0


call type_name

call clear

;=====================MENU PAGE FUNCTION CALL page 3======================

mov tcount,5


arrow proc

print_arrow:

call clear

call bg



mov mmenu_count, 0
mov mmenu_col, 2
mov mmenu_row, 30
call menu_button


mov play_count, 0
mov play_col, 5
mov play_row, 30
call play_button


mov resume_count, 0
mov resume_col, 8
mov resume_row, 30
call resume_button


mov instruct_count, 0
mov instruct_col, 11
mov instruct_row, 30
call instruct_button


mov scores_count, 0
mov scores_col, 14
mov scores_row, 30
call scores_button


mov exit_count, 0
mov exit_col, 17
mov exit_row, 30
call exit_button

mov ax,0
mov al, tcount
mov key_col,al ;starting point
mov key_row,25 ;starting point
mov key_count,0



call keyboard

mov ah,0
int 16h

cmp ah,28
je byebye

cmp ah,48h
je ooper

cmp ah,50h
je neeche

arrow_return:



cmp t_var,1
jne print_arrow

jmp byebye

ooper:

cmp tcount,5
je up_exit

sub tcount,3
up_exit:
jmp arrow_return


neeche:
cmp tcount,17
je down_exit

add tcount,3
down_exit:
jmp arrow_return

byebye:


arrow endp
;==================================================================MENU (PAGE # 3) ENDS=======================================================

wapas_jao:

press_enterkey_on_arrow:
cmp key_col,11 
call clear

.if(key_col == 5)
call level1

.if(total_bricks>0 && heart_counter==0)
call game_over
.endif

.IF(total_bricks==0 && heart_counter>=1)
call adv_lev1
mov heart_counter,3
mov total_bricks,36
call level2
.ENDIF

.IF(total_bricks==0 && heart_counter>=1)
call adv_lev2
mov heart_counter,3
mov total_bricks,36
call level3
.ENDIF

.IF(total_bricks==0 && heart_counter>=1)
call you_win
.ENDIF


.elseif(key_col == 8)
call credits

.elseif(key_col == 11)
call instructions

.elseif(key_col == 14)
call pause_menu

.elseif(key_col == 17)
call baharniklo
jmp l99

.endif


return_to_menu_from_instructions:
mov ah,0
int 16h
cmp ah,28
;cmp key_col,11
call clear
call arrow
jmp wapas_jao


;IF WON
;call adv_lev1
l99:

mov ah,04ch
int 21h

main endp
end
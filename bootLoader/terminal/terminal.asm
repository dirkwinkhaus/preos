;mov ax, 0x1000  					; set up kernel position
;mov ds, ax
;mov es, ax
org 0x0000


call nano_io_initTextMode
call nano_showStartupInfo

nanoOS:
	
	call nano_showPromt				; show prompt
	call nano_io_readLine			; read command line

	call nano_interpretCommand		; interprete command

	jmp nanoOS						; loop


jmp endOfKernel
%include 'nanoOS\nano.asm'
%include 'nanoOS\io.asm'
%include 'nanoOS\data.asm'
endOfKernel:



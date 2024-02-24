
;b1=0, b2=0, b3=0, b4=0, b5=0

bienvenida: 
	sertxd (" _____               _       _   __ ")
 	sertxd (13,10)
	sertxd ("|  __ \\             (_)     | | /_ |")
	sertxd (13,10)
	sertxd ("| |__) |_ _ _ __ ___ _  __ _| |  | |")
	sertxd (13,10)
	sertxd ("|  ___/ _` | '__/ __| |/ _` | |  | |")
	sertxd (13,10)
	sertxd ("| |  | (_| | | | (__| | (_| | |  | |")
	sertxd (13,10)
	sertxd ("|_|   \\__,_|_|  \\___|_|\\__,_|_|  |_|")
	sertxd (13,10)
	sertxd ("                                    ")
	sertxd (13,10)
 	goto menu
	
menu: 
	sertxd ("Que operacion desea realizar? ",lf,cr)
	sertxd ("------------------",lf,cr)
	sertxd ("Suma          : + ",lf,cr)
	sertxd ("Resta         : - ",lf,cr)
	sertxd ("Multiplicacion: * ",lf,cr)
	sertxd ("AND           : & ",lf,cr)
	sertxd ("OR            : | ",lf,cr)
	sertxd ("Salir         : S ",lf,cr)
	sertxd ("------------------",lf,cr)
	serrxd b3
 	
	if b3="S" then 
		goto operacion
	else
		sertxd ("Ingresa un valor n1: ",lf,cr)
		serrxd b1
		sertxd ("Ingresa un valor n2: ",lf,cr)
		serrxd b2
	endif

;	if ISDIGIT(b1) and ISDIGIT(b2) then
;    		goto operacion
;	else
;    		serrtxd ("Entrada de n?meros enteros no v?lido", lf, cr)
;		sleep 1000
;		goto menu
;	endif

operacion:	
 	if b3="+" then 
		goto suma
	else
		if b3="-" then
			goto resta
		else
			if b3="*" then
				goto multiplicacion
			else
				if b3="&" then
				goto an
				else
					if b3="|" then
						goto o
					else
						if b3="S" then
							goto salir
						else
							sertxd ("Caracter no valido",lf,cr)
							pause 1000
							goto menu
						endif
					endif
				endif
			endif
		endif
	endif
	;else 
	;if b3="-" then goto resta
	;if b3="*" then goto multiplicacion
	;if b3="&" then goto an
	;if b3="|" then goto o
 	
suma: 
	sertxd ("- Bienvenido a suma -",lf,cr)
	b5 = b1 + b2
	sertxd(#b1,b3,#b2," = ",#b5,13,10)
	let dirsC = %11111111
	let pinsC = b5
	pause 5000
	let pinsC = 0
	goto menu
resta: 
	sertxd ("- Bienvenido a resta -",lf,cr)
	b5 = b1 - b2
	sertxd(#b1,b3,#b2," = ",#b5,13,10)
	let dirsC = %11111111
	let pinsC = b5
	pause 5000
	let pinsC = 0
	goto menu
multiplicacion: 
	sertxd ("- Bienvenido a multiplicacion -",lf,cr)
	b5 = b1 * b2
	sertxd(#b1,b3,#b2," = ",#b5,13,10)
	let dirsC = %11111111
	let pinsC = b5
	pause 5000
	let pinsC = 0
	goto menu
an: 
	sertxd ("- Bienvenido a AND -",lf,cr)
	goto menu
o: 
	sertxd ("- Bienvenido a OR -",lf,cr)
	goto menu
salir:
	sertxd ("Gracias por ver!",lf,cr)
	end
                                     
                                     
	


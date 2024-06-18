

loop{

Sleep 1000

; Establecer las coordenadas del clic
; cordenadaEntrarSubastaX := 920
; cordenadaEntrarSubastaY := 734

; Mover el cursor a las coordenadas especificadas y hacer clic
; MouseClick, left, %cordenadaEntrarSubastaX%, %cordenadaEntrarSubastaY%

Send, {Enter}

; Esperar un breve momento (ajustar según sea necesario)
Sleep, 750

; Simular un clic en la tecla "Enter"
Send, {Enter}

; Esperar un breve momento (ajustar según sea necesario)
Sleep, 1250

coordenadaAutoDisponibleX := 578
coordenadaAutoDisponibleY := 357

; Obtener el color de las coordenadas especificadas en formato hexadecimal
PixelGetColor, color, %coordenadaAutoDisponibleX%, %coordenadaAutoDisponibleY%, RGB

; Comprobar si el color es igual al color esperado (en este caso, casi blanco)
if (color = 0xF7F7F7)
{
    Sleep, 450

    ; Si el color coincide, simular un segundo clic en la tecla "y"
    Send, y

    Sleep, 300

    ; Simular tecla abajo
    Send, {Down}

    Sleep, 50

    ; Simular un clic en la tecla "Enter"
    Send, {Enter}

    Sleep, 250

    ; Simular un clic en la tecla "Enter"
    Send, {Enter}

    Sleep, 15000

    ; cordenadas auto no disponible
    ; Error buying the car

    coordenadaAutoNoDisponible1X := 749
    coordenadaAutoNoDisponible1Y := 567 ; color #EFEEEE 1-

    PixelGetColor, color1, %coordenadaAutoNoDisponible1X%, %coordenadaAutoNoDisponible1Y%, RGB
    
    ; si hay error en la subasta que hacer
    


    ; cordenadas auto disponible
    ; Car bougth succesfully

    coordenadaAutoDisponible1X := 1106
    coordenadaAutoDisponible1Y := 467 ; color #F7F7F7 1 -


    PixelGetColor, color1, %coordenadaAutoDisponible1X%, %coordenadaAutoDisponible1Y%, RGB


    if (color1 = 0xF7F7F7){

        ; Esto es para comprar un unico autoExitApp

        ; Simular un clic en la tecla "Enter"
        Send, {Enter}
        Sleep, 2000
        ; Simular un clic en la tecla "Esc"
        Send, {Esc}
        Sleep, 2000
        Send, {Esc}

    }    else{
        
        ; Simular un clic en la tecla "Enter"
        Send, {Enter}
        Sleep, 2000
        ; Simular un clic en la tecla "Esc"
        Send, {Esc}
        Sleep, 2000
        Send, {Esc}
                                            

    }


}   else

{
    ; Si el color no es blanco, simular un clic en la tecla "Esc"
    Send, {Esc}
}

continue
}
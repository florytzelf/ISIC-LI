.model small
.stack 100h

.data
    ; --- Espacio para el Cambio 1 ---
   edad db 20

.code
main proc
    ; Inicialización del segmento de datos
    mov ax, @data
    mov ds, ax

    ; --- Espacio para el Cambio 2 ---
    mov bl, edad
    mov bh, 30

    ; Finalización del programa
    mov ax, 4c00h
    int 21h
main endp
end main

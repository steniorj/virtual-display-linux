#!/bin/bash

sleep 600

# Exibir caixa de diálogo
zenity --question --text="O sistema será reiniciado em 5 minutos. Deseja cancelar o reinício?" --title="Aviso de Reinício" --timeout=120

# Verificar a resposta do usuário
if [ $? -eq 0 ]; then
    echo "Reinício cancelado pelo usuário."
else
    sudo grub-reboot 4
    sudo shutdown -r 5
fi

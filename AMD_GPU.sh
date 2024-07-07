#!/bin/bash

# Verificar se o driver amdgpu está em uso
if lspci -k | grep -q "Kernel driver in use: radeon"; then
    echo "O driver amdgpu está em uso."

    # Texto a ser copiado para o clipboard
    TEXT="rw radeon.si_support=0 radeon.cik_support=0 amdgpu.si_support=1 amdgpu.cik_support=1"

    # Copiar o texto para o clipboard usando wl-copy
    echo "$TEXT" | wl-copy

    # Abrir o arquivo com nano e permissões de superusuário
    sudo nano /boot/efi/loader/entries/Pop_OS-current.conf

    # Perguntar se o usuário deseja reiniciar o computador
    read -p "Deseja reiniciar o computador agora? (s/n): " answer
    if [[ "$answer" =~ ^[Ss]$ ]]; then
        sudo reboot
    fi
else
    echo "O driver amdgpu já está em uso, Não há nada a ser feito =D."
fi

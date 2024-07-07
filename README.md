# Script_AMDGPU

o Pop!_os vive alterando dos dados do `Pop_OS-current.conf` o que acaba tirando as configurações para usar o `AMDGPU` em vez do driver `Radeon` para minha placa de video, resolvi fazer esse script que já copia o comando e abre o nano, então basta ir até o final da linha `options root` e usar o atalho ctrl+shift+v para colar, salvar com ctrl+o e fechar com ctrl+x, o script ira perguntar se você quer reiniciar o pc. 

- Ele verifica se o driver `AMDGPU` já está em uso.
- Funciona apenas com o `Wayland`( devido ao comando de copiar o texto) 

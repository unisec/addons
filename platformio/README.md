<p align="center">
    <img src="https://cdn.platformio.org/images/platformio-logo.17fdc3bc.png">
</p>


# Platformio

O Addon foi construído para atuar como uma agent do platformio
## REQUISITOS

- docker(`required`)

## MOTIVO

Possibilitar a atualização de firmwares em C, de qualquer lugar por meio da internet

## PARA COMEÇAR 🚀

```yaml
agentname: platformio
username: xxxxxx@gmail.com
password: Xxxxxxxx

```

## EXTRAS 

Para os casos em que estiver fazendo uso do esphome para as placas esp32, foi construida uma cli para atuar como ferramenta de upload de firmware via OTA. Em seus environments definidos no platformio.ini, adicione essa configuração extra para fazer uso

```ini
[env:dispositivo]
.... 
upload_protocol = custom
upload_command = espota3 -rh <IP> -rp 3232 -p xxxx -f $BUILD_DIR/firmware.bin
```





## REFERÊNCIAS 

- [DOCS ADDONS](https://developers.home-assistant.io/docs/add-ons/configuration)
- [DOCS WIREGUARD](https://platformio.org)

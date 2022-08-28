# Add-Ons Respository

Respositório oficial da UNISEC para gestão dos addons usados no unicontrol.

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https://github.com/unisec/addons)

## Introdução

Como esse repoitório tem como foco conter e gerenciar os addons usados no unicontrol, a estrutura de pasta envolvida é a seguinte:

```md
.
├── `addon-name`
├── .gitignore
├──  README.md 
└──  repository.json
```

## Lista de Add-ons

- [WireGuard Client 🛡](wireguard/README.md) - Wireguard como cliente vpn para interconectividade
- [Terminal & SSH](ssh/README.md) - Permitir o acessar remoto o Home Assistant usando SSH
- [PlatformIO](platformio/README.md) - IDE para desenvolvimento de projetos embarcado

## Contribuir

Incentivamos todos que queiram contribuir com o projeto! :)
Se você encontrou um bug ou pensou em algum recurso fantástico que pode tornar o projeto melhor, não hesite em reportar descrevendo os detalhes.
Você pode contribuir com o projeto, bifurcando o repositório e enviando pedidos de PR (pull request). 
Para começar, acesse a documentação oficial para entender para começar os estudos, Acesse [link](https://developers.home-assistant.io/docs/add-ons/configuration/)

## References

- [Developer Addons](https://developers.home-assistant.io/docs/add-ons/configuration/)

## Licença 📝

MIT ©
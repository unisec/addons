<p align="center">
    <img src="./logo.png">
</p>

# WIREGUARD

O Addon foi construído para atuar como cliente vpn e compartilhar sua  interface de rede com o host, com isso, os outros containers vão desfrutar da mesma interface

## REQUISITOS

- docker(`required`)

## MOTIVO

Possibilitar de uma forma simple, o ciclo de vida do cliente vpn.

## PARA COMEÇAR 🚀

```yaml
api: 'http://api.unicontrol.me:8500' # Domain público da aplicação de catalog
token: xxxxxxx-xxxx-xxxx-xxxx-xxxxx # Chave da api do catalog
server:
  host: vpn.unisec.com.br # Domain do serviço vpn
  addresses: []
  dns: []
peers:
  - name: wg0
    addresses: []
    allowed_ips:
      - 10.0.0.0/24 # Redes permitidas
    client_allowed_ips: []


```

`Observação:` Com este addon, você tem a possibilidade de provisonamento da configuração dele via arquivo secrets, sendo necessário criar as variáveis de configuração apenas no arquivo ou inserir os valores manualmente.

**Opção**: `log_level`

O log_leve é uma opção para controla o nível do saída dos logs do addons.

- `trace`: Mostra sempre o detalhe, por exemplo, chamadas de funções internas.
- `debug`: Mostra detalhadamente informações sobre bugs.
- `info`: Normalmente usadado para acompanhamento de eventos.
- `warning`: Ocorrências excepcionais que não são erros.
- `error`: Erros de tempo de execução que não requerem ação imediata.
- `fatal`: Algo deu terrivelmente errado. O add-on torna-se inutilizável.



**Opção**: `server.api` 

Essa configuração permite definir o endereço onde está localizado a aplicação de catalogo de serviços

**Opção**: `server.token` 

Essa configuração permite defirnir o token de identificação do cliente

**Opção**: `server.address` 

Essa configuração permite definir o ip do cliente quando conectado na rede vpn. Necessário obter a faixa de rede definida no servidor vpn.

**Opção**: `server.host` 

Essa configuração aponta para o servidor de vpn que mantem o serviço de interconectividade


**Opção**: `peer.name` 

Essa configuração permite definir um nome a interface de rede quando inicia o serviço vpn.

**Opção**: `peer.public_key` 

Essa configuração permite definir a chave pública do servidor vpn.

**Opção**: `peer.allowed_ips` 

Essa configuração permite definir diversas redes em que o serviço vpn vai usar para redirecionar o tráfego. 

**Opção**: `peer.endpoint` 

Essa configuração permite definir o endereço do servidor vpn  o qual o cliente deve se conectar;

## FAQ 

- Uso de ACLs?
- Criação do Token?
- Hostname/URL de acesso?
- Identificação do cliente? 
- Armazenamento de dados locais?
- Entrepoynt.sh - 

## REFERÊNCIAS 

- [DOCS ADDONS](https://developers.home-assistant.io/docs/add-ons/configuration)
- [DOCS WIREGUARD](https://www.wireguard.com)



#!/command/with-contenv bashio

# ==============================================================================
# Unicontrol Add-on: Connect
# ==============================================================================

declare interface_ifname=$(bashio::config "interface.ifname")
declare interface_private_key=$(bashio::config "interface.private_key")
declare interface_listen_port=$(bashio::config "interface.listen_port")
declare interface_address=$(bashio::config "interface.address")

declare post_up="iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE"
declare post_down="iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE"

declare peer_public_key=$(bashio::config "peer.public_key")
declare peer_allowed_ips=$(bashio::config "peer.allowed_ips")
declare peer_endpoint=$(bashio::config "peer.allowed_ips")

bashio::log.info "Generating connect configuration..."

{
    echo "[Interface]"
    echo "PrivateKey = ${interface_private_key}"
    echo "Address = ${interface_address}"
    echo "ListenPort = ${interface_listen_port}"
    echo ""
    echo "PostUp = ${post_up}"
    echo "PostDown = ${post_down}"
    echo ""
    echo "[Peer]"
    echo "PublicKey = ${peer_public_key}"
    echo "AllowedIPs = ${peer_allowed_ips}"
    echo "Endpoint = ${peer_endpoint}"
    echo "PersistentKeepalive = 25"
    echo ""
} >> "/etc/wireguard/${interface_ifname}.conf"

bashio::log.warning < "/etc/wireguard/${interface_ifname}.conf"

bashio::log.info "Done configuration generation!"

# Ansible role to setup strongSwan

This role setup IPsec site-to-site VPN using strongSwan.

IPsec VPN setup is complicated and requires lots of backgroud
knowledge. Figuring out the right configuration using strongSwan is not easy.

To make things easier, use [WireGuard](https://github.com/home-router/wireguard)
instead if possible, or use dedicated firewall products.
1) --- ^_^ ---

2) hostnamectl set-hostname <hostname>

3) сеть 12.15.100.0/27
    1) VLAN 10 - 14 хостов (/28)
        сеть 12.15.100.0/28
        SW1  12.15.100.1/28 - VLAN 10
        SW2  12.15.100.2/28 - VLAN 10
        SW3  12.15.100.3/28 - VLAN 10
        R2   12.15.100.4/28
        SW1  12.15.100.5/28
        PC5  12.15.100.6/28
             12.15.100.15/28 Broadcast
    2) VLAN 20 - 6 хостов (/29)
        сеть 12.15.100.16/29
        PC2  12.15.100.17/29
             12.15.100.23/29 Broadcast
    3) VLAN 30 - 2 хоста (/30)
        сеть 12.15.100.24/30
        PC3  12.15.100.25/30
             12.15.100.27/30 Broadcast
    R1-R2 сеть 12.15.1.8/30
        R1   12.15.1.9/30
        R2   12.15.1.10/30
    R1-R3 сеть 12.15.2.20/30
        R1   12.15.2.21/30
        R3   12.15.2.22/30
    4) VLAN 50 - 6 хостов (/29)
        сеть 12.15.200.64/29
        R3   12.15.200.65/29
        PC11 12.15.200.66/29
             12.15.200.71/29 Broadcast
    5) VLAN 60 - 2 хоста (/30)
        сеть 12.15.200.72/30    
        PC10 12.15.200.73/30
             12.15.200.75/30 Broadcast

4)  Настройка ip, ipv4route только на sw,  как в лр18
    PC5  12.15.100.6/28
    PC2  12.15.100.17/29
    PC3  12.15.100.25/30
    PC11 12.15.200.65/29
    PC10 12.15.200.73/30
    Далее OSPF and 
    R1   12.15.1.9/30    to R2
    R1   12.15.2.21/30   to R3
    network 12.15.1.8/30    AREA 12
    network 12.15.2.20/30   AREA 12
    R2   12.15.1.10/30   to R1
    R2   12.15.100.4/28  to SW1 (sw2)
    network 12.15.1.8/30    AREA 12
    network 12.15.100.0/27  AREA 15
    R3   12.15.2.22/30   to R1
    R3   12.15.200.65/29 to SW4
    network 12.15.2.20/30   AREA 12
    network 12.15.200.48/28 AREA 16
    на всех R sysctl -w net.ipv4.ip_forward=1 + vim /etc/net/sysctl.conf (ip_forward=1)

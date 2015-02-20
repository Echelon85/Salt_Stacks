
httpd:
  iptables:
   iptables.append:
    - table: filter
    - chain: INPUT
    - jump:  ACCEPT
    - match: state
    - connstate: NEW
    - dport: 80
    - proto: tcp
    - save: True

  iptables.append: 
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - dport: 22
    - proto: tcp
    - save: True

  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - dport: 
      - 4505
      - 4506
    - proto: tcp
    - save: True

  iptables.append:
    - tables: filter 
    - chain: INPUT 
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - dport: 53
    - proto
      - tcp
      - udp
    - save: True

  iptables.append:
    - tables: filter
    - chain: INPUT
    - jump: ACCEPT 
    - match: state
    - connstate: NEW
    - dport:
      - 80
      - 443
    - proto: tcp
    - save: True

  iptables.append:
    - tables: filter 
    - chain: INPUT
    - jump: ACCEPT
    - match: state
    - connstate: NEW
    - dport: 
      - 137
      - 139
    - proto:
      - tcp
      - udp
    - save: True




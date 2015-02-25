nfs-utils:
  pkg:
  - installed
nfs:    
  service.running:
  - enable: True
  - reload: True
  - watch:
    - file: /etc/exports
  


openssh-server:
  pkg:
  - installed

openssh-clients:
  pkg:
  - installed

sshd:
  service.running:
  - enable: True

/root/.ssh/authorized_keys:
  file.managed:
  - source: salt://sshd/authorized_keys

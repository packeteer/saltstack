# /srv/salt/top.sls
base:
  '*':
    - base.pkgs
    - base.ntp

  'salt*':
    - master
  
  'server1,server2':
    - groupa
  
  'server2,server3':
    - groupb

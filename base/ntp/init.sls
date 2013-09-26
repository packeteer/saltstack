# /srv/salt/base/ntp/init.sls
ntp:
  pkg:
    - installed
  service:
    - name: ntpd
    - running
    - enable: True
    - require:
      - pkg: ntp
    - watch:
      - file: /etc/ntp.conf
/etc/ntp.conf:
  file.managed:
    - source: salt://base/ntp/ntp.conf
    - user: root
    - group: root
    - mode: 644

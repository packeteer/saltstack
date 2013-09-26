# /srv/salt/base/pkgs.sls
pkgs:
  pkg.installed:
    - pkgs:
      - vim-enhanced
      - tmux
      - salt-minion
      - git
      - bind-utils

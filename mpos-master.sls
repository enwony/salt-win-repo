{% set versions = {'2.0.18.0': 'setup-mpos-master-2.0.18.0.exe'} %}
{% set source_path = 'http://distfiles.enwony.net/saltstack/' %}

# GhostSetup used for installer - no known part for silent uninstall
mpos-master:
{% for version, basename in versions.items() %}
  '{{version}}':
    full_name: 'MPOS Master {{version}}'
    installer: '{{ source_path }}{{ basename }}'
    uninstaller: ''
    install_flags: '-s'
    uninstall_flags: ''
    msiexec: False
    reboot: False
{% endfor %}
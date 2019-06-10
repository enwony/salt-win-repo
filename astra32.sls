{% set versions = {'3.60': 'astra32-3.60.exe'} %}
{% set source_path = 'http://distfiles.enwony.net/saltstack/' %}

# InnoSetup used for installer
# TODO: uninstaller path may be wront in mixed 32/64 environments
astra32:
{% for version, basename in versions.items() %}
  '{{version}}':
    full_name: 'ASTRA32 {{version}}'
    installer: '{{ source_path }}{{ basename }}'
    uninstaller: '{{ grains['programfiles'] }}/ASTRA32/uninstall.exe'
    install_flags: '/VERYSILENT /SP- /SUPPRESSMSGBOXES /NORESTART'
    uninstall_flags: '/VERYSILENT'
    msiexec: False
    reboot: False
{% endfor %}
{% set versions = {'8.26.0.0': 'FDU_8_26_0_00_Full.EXE'} %}
{% set source_path = 'http://distfiles.enwony.net/saltstack/' %}

# seems that custom installer used for setup

frontol-driver-unit:
{% for version, basename in versions.items() %}
  '{{version}}':
    full_name: 'Frontol Driver Unit {{version}}'
    installer: '{{ source_path }}{{ basename }}'
    uninstaller: '{{ source_path }}{{ basename }}'
    install_flags: '/AUTO'
    uninstall_flags: '{{ grains['programfiles'] }}/ATOL/UnInstallFDU.exe /AUTO'
    msiexec: False
    reboot: False
{% endfor %}
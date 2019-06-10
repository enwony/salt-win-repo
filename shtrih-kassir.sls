{% set versions = {'5.1.6.9': 'shtrih-kassir-base-platform8.3-5.1.6.9.exe'} %}
{% set source_path = 'http://distfiles.enwony.net/saltstack/' %}

# TODO uninstaller not work
# TODO installer installs just documentation
shtrih-kassir-base-83:
{% for version, basename in versions.items() %}
  '{{version}}':
    full_name: 'Shtrih-M Kassir Base 8.3 {{version}}'
    installer: '{{ source_path }}{{ basename }}'
    uninstaller: '{{ source_path }}{{ basename }}'
    install_flags: '/S'
    uninstall_flags: ''
    msiexec: False
    reboot: False
{% endfor %}
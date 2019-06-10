{% set versions = {'3.0.5400': {x64: 'Far30b5400.x64.20190523.msi', 'x86': 'Far30b5400.x86.20190523.msi'}} %}
{% set source_path = 'http://distfiles.enwony.net/saltstack/' %}

far:
{% for version, templates in versions.items() %}
{% for arch, basename in templates %}
  '{{version}}':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'Far Manager {{version}} (x64 edition)'
    installer: '{{ source_path }}{{ basename }}'
    uninstaller: '{{ source_path }}{{ basename }}'
    arch: x64
    {% else %}
    full_name: 'Far Manager {{version}}'
    installer: '{{ source_path }}{{ basename }}'
    uninstaller: '{{ source_path }}{{ basename }}'
    arch: x86
    {% endif %}
    install_flags: '/qn /norestart ADDLOCAL=ALL'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
{% endfor %}
{% endfor %}

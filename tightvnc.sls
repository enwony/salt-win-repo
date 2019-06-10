tightvnc:
  '2.8.5':
    full_name: 'TightVNC'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.5-gpl-setup-64bit.msi'
    uninstaller: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.5-gpl-setup-64bit.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.5-gpl-setup-32bit.msi'
    uninstaller: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.5-gpl-setup-32bit.msi'
    {% endif %}
    install_flags: '/quiet /norestart'
    uninstall_flags: '/quiet /norestart'
    msiexec: True
    reboot: False 
 '2.8.11':
    full_name: 'TightVNC'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.11-gpl-setup-64bit.msi'
    uninstaller: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.11-gpl-setup-64bit.msi'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.11-gpl-setup-32bit.msi'
    uninstaller: 'http://distfiles.enwony.net/saltstack/tightvnc-2.8.11-gpl-setup-32bit.msi'
    {% endif %}
    install_flags: '/quiet /norestart'
    uninstall_flags: '/quiet /norestart'
    msiexec: True
    reboot: False 

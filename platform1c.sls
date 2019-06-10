{% set source_path = 'salt://win/' %}

platform1c:
  '8.3.13.1664':
    full_name: '1C:Enterprise 8.3 (8.3.13.1664)'
    installer: '{{ source_path }}/platform1c_8.3.13.1664/1CEnterprise 8.msi'
    install_flags: '/quiet /norestart LANGUAGES=RU'
    uninstaller: '{{ source_path }}/platform1c_8.3.13.1664/1CEnterprise 8.msi'
    uninstall_flags: '/quiet /norestart'
    msiexec: True
    reboot: False 
    cache_dir: True
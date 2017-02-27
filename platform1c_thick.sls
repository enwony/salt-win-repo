platform1c_thick:
  '8.2.19.90':
    full_name: '1C:Enterprise 8.2 (8.2.19.90)'
    installer: 'salt://win/repo-ng/distfiles/1c platform 8.2.19.90_windows/1CEnterprise 8.2.msi'
    install_flags: '/quiet /norestart THICKCLIENT=1 LANGUAGES=RU'
    uninstaller: 'salt://win/repo-ng/distfiles/1c platform 8.2.19.90_windows/1CEnterprise 8.2.msi'
    uninstall_flags: '/quiet /norestart'
    msiexec: True
    reboot: False 
    cache_dir: True
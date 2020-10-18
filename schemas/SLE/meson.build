budgie_schemas = [
    'com.solus-project.icon-tasklist.gschema.override',
    'com.solus-project.budgie-menu.gschema.override',
    'com.solus-project.budgie-panel.gschema.override',
    'org.gnome.desktop.background.gschema.override',
    'org.gnome.desktop.interface.gschema.override',
    'org.gnome.desktop.wm.preferences.gschema.override',
    'org.gnome.desktop.screensaver.gschema.override',
]

custom_target('21_budgie_gnome_settings_SLE.gschema.override',
    output: '21_budgie_gnome_settings_SLE.gschema.override',
    capture: true,
    input: budgie_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: path_schemadir,
)

install_data('budgie-SLE-distributor-logo.svg', install_dir : 'share/icons/hicolor/scalable/apps')

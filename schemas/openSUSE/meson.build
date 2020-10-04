budgie_schemas = [
    'com.solus-project.icon-tasklist.gschema.override',
    'com.solus-project.budgie-menu.gschema.override',
    'com.solus-project.budgie-panel.gschema.override',
    'org.gnome.desktop.background.gschema.override',
    'org.gnome.desktop.interface.gschema.override',
    'org.gnome.desktop.wm.preferences.gschema.override',
]

custom_target('10_budgie_gnome_settings_openSUSE.gschema.override',
    output: '10_budgie_gnome_settings_openSUSE.gschema.override',
    capture: true,
    input: budgie_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: path_schemadir,
)

install_data('budgie-openSUSE-distributor-logo.svg', install_dir : 'share/icons/hicolor/scalable/apps')

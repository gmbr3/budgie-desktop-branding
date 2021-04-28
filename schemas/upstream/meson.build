gnome_schemas = [
    'org.gnome.desktop.screensaver.gschema.override',
    'com.solus-project.budgie-panel.gschema.override',
    'org.gnome.desktop.wm.preferences.gschema.override',
    'org.gnome.desktop.interface.gschema.override',

]

custom_target('21_budgie_gnome_settings_upstream.gschema.override',
    output: '21_budgie_gnome_settings_upstream.gschema.override',
    capture: true,
    input: gnome_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: path_schemadir,
)

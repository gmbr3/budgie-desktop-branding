gnome_schemas = [
    'org.gnome.desktop.background.gschema.override',
    'org.gnome.desktop.screensaver.gschema.override',
    'com.solus-project.budgie-panel.gschema.override',

]

custom_target('10_budgie_gnome_settings_upstream.gschema.override',
    output: '10_budgie_gnome_settings_upstream.gschema.override',
    capture: true,
    input: gnome_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: path_schemadir,
)

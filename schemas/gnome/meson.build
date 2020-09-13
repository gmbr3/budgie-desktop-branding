gnome_schemas = [
    'org.gnome.desktop.interface.gschema.override',
    'org.gnome.desktop.background.gschema.override',
    'org.gnome.desktop.wm.preferences.gschema.override',
]

custom_target('10_budgie_gnome_settings.gschema.override',
    output: '10_budgie_gnome_settings.gschema.override',
    capture: true,
    input: gnome_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: path_schemadir,
)

custom_target('99_budgie_gnome_settings.gschema.override',
    output: '99_budgie_gnome_settings.gschema.override',
    capture: true,
    input: hp_gnome_schemas,
    command: ['cat', '@INPUT@'],
    install: true,
    install_dir: path_schemadir,
)

project(
    'budgie-desktop-branding',
    ['c'],
    version: '20200915',
    license: [
        'GPL-2.0-only AND CC-BY-SA-3.0',
    ],
    default_options: [
        'prefix=/usr',
        'sysconfdir=/etc',
    ],
)

meson.add_install_script('meson_post_install.sh')

path_prefix = get_option('prefix')
path_datadir = join_paths(path_prefix, get_option('datadir'))
path_schemadir = join_paths(path_datadir, 'glib-2.0', 'schemas')
versions = get_option('version')

subdir('schemas')

report = [
    '    Build configuration:',
    '    ====================',
    '',
    '    version:                                @0@'.format(versions),
    '    prefix:                                 @0@'.format(path_prefix),
    '    datadir:                                @0@'.format(path_datadir),
]

# Output some stuff to validate the build config
message('\n\n\n' + '\n'.join(report) + '\n\n')

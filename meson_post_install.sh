#!/bin/sh

DEST=${DESTDIR:-.}
PREFIX=${MESON_INSTALL_PREFIX:-/usr}
schema_path="$DEST/$PREFIX/share/glib-2.0/schemas"
upstream_file_name="$schema_path/90_budgie_settings.gschema.override"
new_file_name="$schema_path/21_budgie_gnome_settings_upstream.gschema.override"
if [ -e $upstream_file_name ]; then
	mv $upstream_file_name $new_file_name
fi


#!/bin/sh

DEST=${DESTDIR:-.}
PREFIX=${MESON_INSTALL_PREFIX:-/usr}
schema_path="$DEST/$PREFIX/share/glib-2.0/schemas"
upstream_file_one="$schema_path/90_budgie_lightdm.gschema.override"
upstream_file_two="$schema_path/90_budgie_settings.gschema.override"
upstream_file_name="$schema_path/90_budgie_gnome_settings.gschema.override"
new_file_name="$schema_path/21_budgie_gnome_settings_upstream.gschema.override"
dist_logo_dir="$DEST/$PREFIX/share/icons/hicolor/scalable/apps"
opensuse_logo="$dist_logo_dir/budgie-openSUSE-distributor-logo.svg"
upstream_logo="$dist_logo_dir/budgie-upstream-distributor-logo.svg"
if [ -e $upstream_file_name ]; then
	cat $upstream_file_one >> $upstream_file_name
	cat $upstream_file_two >> $upstream_file_name
	rm $upstream_file_one
	rm $upstream_file_two
	mv $upstream_file_name $new_file_name
	sed 's:/usr/share/pixmaps/fedora-logo-sprite.svg:/usr/share/icons/hicolor/scalable/apps/budgie-upstream-distributor-logo.svg:g' -i $new_file_name
	cp $opensuse_logo $upstream_logo
fi

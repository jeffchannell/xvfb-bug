#!/usr/bin/env gjs

imports.gi.versions.Gdk = imports.gi.versions.Gtk = '3.0';

const {Gdk, Gtk} = imports.gi;

Gtk.init(null);

let display = Gdk.Display.get_default();
let cursor = Gdk.Cursor.new_from_name(display, 'arrow');
let image = cursor.get_image();

print(image);

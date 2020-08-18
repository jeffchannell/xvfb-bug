# Xvfb Ubuntu Bug

For some reason, GDK is unable to read the cursor image in Ubuntu, while other distros have no issues.

## Requirements

These tests require Docker.

## Running Tests

```bash
./test.sh
```

### Sample Output

```
$ ./test.sh
===================
Testing in CentOS 7
===================
[object instance proxy GIName:GdkPixbuf.Pixbuf jsobj@0x7fa9b769eac0 native@0x26cbcc0]
===================
Testing in CentOS 8
===================
[object instance wrapper GIName:GdkPixbuf.Pixbuf jsobj@0x7f9c98ca6e80 native@0x5652f3246760]
==========================
Testing in Debian stable
==========================
[object instance proxy GIName:GdkPixbuf.Pixbuf jsobj@0x7fc9baca6e80 native@0x555a5bcbd760]
==========================
Testing in Debian unstable
==========================
[object instance wrapper GIName:GdkPixbuf.Pixbuf jsobj@0x26866d188fa0 native@0x5605bb9598c0]
=======================
Testing in Ubuntu 18.04
=======================
null
=======================
Testing in Ubuntu 20.04
=======================
null
=======================
Testing in Ubuntu 20.10
=======================
null

```

api = 2
core = 7.x

defaults[projects][subdir] = contrib

projects[libraries] = 2.2
projects[features] = 2.7
projects[entity] = 1.6
projects[entityreference] = 1.1
projects[xautoload] = 5.5

projects[services][version] = 3.13

projects[oauth2_server][version] = 1.5
; Patch: Fix bug in release 1.5
projects[oauth2_server][patch][] = https://www.drupal.org/files/issues/oauth2_server-2664640-3.patch

libraries[oauth2-server-php][directory_name] = oauth2-server-php
libraries[oauth2-server-php][download][type] = get
libraries[oauth2-server-php][download][url] = https://github.com/bshaffer/oauth2-server-php/archive/v1.8.0.tar.gz

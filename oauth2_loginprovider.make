api = 2
core = 7.x

defaults[projects][subdir] = contrib

projects[libraries] = 2.2
projects[features] = 2.0
projects[entity] = 1.5
projects[entityreference] = 1.1
projects[xautoload] = 4.5

projects[services][version] = 3.7

projects[oauth2_server][version] = 1.1
projects[oauth2_server][patch][] = https://www.drupal.org/files/issues/oauth2_server-2302391-garceful_error_handeling-1.patch

libraries[oauth2-server-php][directory_name] = oauth2-server-php
libraries[oauth2-server-php][download][type] = get
libraries[oauth2-server-php][download][url] = https://github.com/bshaffer/oauth2-server-php/archive/v1.4.tar.gz

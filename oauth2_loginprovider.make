api = 2
core = 7.x

defaults[projects][subdir] = contrib

projects[libraries] = 2.2
projects[features] = 2.0
projects[entity] = 1.6
projects[entityreference] = 1.1
projects[xautoload] = 4.5

projects[services][version] = 3.12

projects[oauth2_server][version] = 1.3
; Patch: Authenticate user if Bearer is present even if "Require authentication" is not checked
projects[oauth2_server][patch][] = https://www.drupal.org/files/issues/oauth2_server-service_auth-2340297-1.patch

libraries[oauth2-server-php][directory_name] = oauth2-server-php
libraries[oauth2-server-php][download][type] = get
libraries[oauth2-server-php][download][url] = https://github.com/bshaffer/oauth2-server-php/archive/v1.7.0.tar.gz

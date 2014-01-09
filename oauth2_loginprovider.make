api = 2
core = 7.x

defaults[projects][subdir] = "contrib"
defaults[libraries][type] = "library"

projects[oauth2_loginprovider][type] = "module"
projects[oauth2_loginprovider][download][type] = "git"
projects[oauth2_loginprovider][download][url] = "https://github.com/dashohoxha/oauth2_loginprovider.git"

projects[oauth2_server][version] = "1.x-dev"

projects[features][version] = 1.0
projects[entity][version] = "1.2"
projects[entityreference][version] = "1.1"
projects[xautoload][version] = "2.7"

projects[services][version] = "3.5"
projects[services][patch][] = "https://drupal.org/files/fix_controller_settings-1154420-51.patch"

libraries[oauth2-server-php][directory_name] = "oauth2-server-php"
libraries[oauth2-server-php][download][type] = "git"
libraries[oauth2-server-php][download][url] = "https://github.com/bshaffer/oauth2-server-php.git"

api = 2
core = 7.x

defaults[projects][subdir] = "contrib"

projects[libraries][version] = "2.2"
projects[features][version] = 1.0
projects[entity][version] = "1.5"
projects[entityreference][version] = "1.1"
projects[xautoload][version] = "4.5"

projects[services][version] = "3.7"

projects[oauth2_server][version] = "1.0"

libraries[oauth2-server-php][directory_name] = "oauth2-server-php"
libraries[oauth2-server-php][download][type] = "git"
libraries[oauth2-server-php][download][url] = "https://github.com/bshaffer/oauth2-server-php.git"
libraries[oauth2-server-php][download][branch] = "v1.1"

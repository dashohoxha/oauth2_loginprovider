<?php
/**
 * @file
 * Drush commands for managing oauth2_server clients.
 */

/**
 * Implementation of hook_drush_command().
 *
 * @return
 *   An associative array describing commands.
 */
function oauth2_loginprovider_drush_command() {
  return array(
    'oauth2-client-ls' => array(
      'description' => "List registered oauth2 clients.",
    ),
    'oauth2-client-add' => array(
      'description' => "Add a new oauth2 client.",
      'arguments' => array(
        'client_key' => '',
        'client_secret' => '',
        'redirect_uri' => '',
      ),
    ),
    'oauth2-client-del' => array(
      'description' => "Delete oauth2 client if exists.",
      'arguments' => array(
        'client_key' => 'The key of the client.',
      ),
    ),
  );
}

/**
 * Implementation of hook_drush_help().
 *
 * @param
 *   A string with the help section (prepend with 'drush:')
 *
 * @return
 *   A string with the help text for your command.
 */
function oauth2_loginprovider_drush_help($section) {
  switch ($section) {
    case 'drush:oauth2-client-ls':
      return dt("List registered oauth2 clients.");
    case 'drush:oauth2-client-add':
      return dt("Add a new oauth2 client.");
    case 'drush:oauth2-client-del':
      return dt("Delete oauth2 client if exists.");
  }
}

/**
 * Callback function for the command 'oauth2-client-ls'.
 */
function drush_oauth2_loginprovider_oauth2_client_ls() {
  $clients = oauth2_client_list();
  print "client_key,redirect_uri\n";
  foreach ($clients as $client) {
    print "$client->client_key,$client->redirect_uri\n";
  }
}

/**
 * Callback function for the command 'oauth2-client-add'.
 */
function drush_oauth2_loginprovider_oauth2_client_add($client_key, $client_secret, $redirect_uri) {
  oauth2_client_add($client_key, $client_secret, $redirect_uri);
}

/**
 * Callback function for the command 'oauth2-client-del'.
 */
function drush_oauth2_loginprovider_oauth2_client_del($client_key) {
  oauth2_client_del($client_key);
}

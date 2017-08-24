<?php
/**
 * @file
 * The programing interface provided by the module oauth2_loginprovider.
 */

/**
 * Implements hook_oauth2_loginprovider_userprofile_alter().
 */
function MODULE_oauth2_loginprovider_userprofile_alter(&$data) {
  // Remove uninteresting fields.
  unset($data['uuid']);
  unset($data['disqus']);
  unset($data['rdf_mapping']);

  // Add to profile data the permissions of the user.
  $data['permissions'] = _get_permissions();
}

/**
 * Implements hook_install().
 */
function PROFILE_install() {
  $client_key = 'client1';
  $client_secret = md5(uniqid(rand(), TRUE));
  $redirect_uri = $GLOBALS['base_url'] . '/oauth2/authorized';
  oauth2_client_add($client_key, $client_secret, $redirect_uri);
}

/**
 * Create a new oauth2_server client.
 */
function oauth2_client_add($client_key, $client_secret, $redirect_uri) {
}

/**
 * Delete the given client if exists.
 */
function oauth2_client_del($client_key) {
}

/**
 * Get a list of oauth2_server clients.
 */
function oauth2_client_list() {
}

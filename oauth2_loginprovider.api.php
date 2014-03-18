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
  global $base_url;
  $server_name = 'oauth2';
  $client_key = 'client1';
  $client_secret = md5(uniqid(rand(), TRUE));
  $redirect_uri = $base_url . '/oauth2/authorized';

  // Delete the client if already exists.
  $query = new EntityFieldQuery();
  $clients = $query->entityCondition('entity_type', 'oauth2_server_client')
    ->propertyCondition('server', $server_name)
    ->propertyCondition('client_key',  $client_key)
    ->execute();
  if (isset($clients['oauth2_server_client'])) {
    $cids = array_keys($clients['oauth2_server_client']);
    foreach ($cids as $cid) {
      entity_delete('oauth2_server_client', $cid);
    }
  }

  // Register a client on the oauth2 server.
  $client = entity_create('oauth2_server_client', array());
  $client->server = $server_name;
  $client->label = 'Test OAuth2 Client';
  $client->client_key = $client_key;
  $client->client_secret = $client_secret;
  $client->redirect_uri = $redirect_uri;
  $client->automatic_authorization = TRUE;
  $client->save();
}

<?php
$listViewDefs ['Contacts'] = 
array (
  'NAME' => 
  array (
    'width' => '20%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'contextMenu' => 
    array (
      'objectType' => 'sugarPerson',
      'metaData' => 
      array (
        'contact_id' => '{$ID}',
        'module' => 'Contacts',
        'return_action' => 'ListView',
        'contact_name' => '{$FULL_NAME}',
        'parent_id' => '{$ACCOUNT_ID}',
        'parent_name' => '{$ACCOUNT_NAME}',
        'return_module' => 'Contacts',
        'parent_type' => 'Account',
        'notes_parent_type' => 'Account',
      ),
    ),
    'orderBy' => 'name',
    'default' => true,
    'related_fields' => 
    array (
      0 => 'first_name',
      1 => 'last_name',
      2 => 'salutation',
      3 => 'account_name',
      4 => 'account_id',
    ),
  ),
  'EMAIL1' => 
  array (
    'width' => '15%',
    'label' => 'LBL_LIST_EMAIL_ADDRESS',
    'sortable' => false,
    'link' => true,
    'customCode' => '{$EMAIL1_LINK}',
    'default' => true,
  ),
  'PHONE_MOBILE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_MOBILE_PHONE',
    'default' => true,
  ),
  'PRIMARY_ADDRESS_STREET' => 
  array (
    'width' => '10%',
    'label' => 'LBL_PRIMARY_ADDRESS_STREET',
    'default' => true,
  ),
  'DOB_C' => 
  array (
    'type' => 'date',
    'default' => true,
    'label' => 'LBL_DOB',
    'width' => '10%',
  ),
);
;
?>

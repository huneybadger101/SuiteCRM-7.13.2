<?php /* Smarty version 2.6.33, created on 2023-07-18 00:28:37
         compiled from modules/DynamicFields/templates/Fields/Forms/coreTop.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'modules/DynamicFields/templates/Fields/Forms/coreTop.tpl', 49, false),)), $this); ?>

<table width="100%">
<tr>
	<td class='mbLBL' width='30%' ><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_NAME'), $this);?>
:</td>
	<td>
	<?php if ($this->_tpl_vars['hideLevel'] == 0): ?>
		<input id="field_name_id" maxlength=<?php if (isset ( $this->_tpl_vars['package']->name ) && $this->_tpl_vars['package']->name != 'studio'): ?>30<?php else: ?>28<?php endif; ?> type="text" name="name" value="<?php echo $this->_tpl_vars['vardef']['name']; ?>
"
		  onchange="
		document.getElementById('label_key_id').value = 'LBL_'+document.getElementById('field_name_id').value.toUpperCase();
		document.getElementById('label_value_id').value = document.getElementById('field_name_id').value.replace(/\_+/g,' ').replace(/^\s\s*/, '').replace(/\s\s*$/, '');
		document.getElementById('field_name_id').value = document.getElementById('field_name_id').value.toLowerCase();" />
	<?php else: ?>
		<input id= "field_name_id" type="hidden" name="name" value="<?php echo $this->_tpl_vars['vardef']['name']; ?>
"
		  onchange="
		document.getElementById('label_key_id').value = 'LBL_'+document.getElementById('field_name_id').value.toUpperCase();
		document.getElementById('label_value_id').value = document.getElementById('field_name_id').value.replace(/\_+/g,' ').replace(/^\s\s*/, '').replace(/\s\s*$/, '');
		document.getElementById('field_name_id').value = document.getElementById('field_name_id').value.toLowerCase();"/>
		<?php echo $this->_tpl_vars['vardef']['name']; ?>

	<?php endif; ?>
		<script>
		addToValidate('popup_form', 'name', 'DBName', true,'<?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_NAME'), $this);?>
 [a-zA-Z_]' );
		addToValidateIsInArray('popup_form', 'name', 'in_array', true,'<?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'ERR_RESERVED_FIELD_NAME'), $this);?>
', '<?php echo $this->_tpl_vars['field_name_exceptions']; ?>
', 'u==');
		<?php if ($this->_tpl_vars['hideLevel'] == 0): ?>	
		addToValidateIsInArray('popup_form', 'name', 'in_array', true, '<?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'ERR_FIELD_NAME_ALREADY_EXISTS'), $this);?>
', '<?php echo $this->_tpl_vars['existing_field_names']; ?>
', 'u==');
		<?php endif; ?>	
		</script>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_DISPLAY_LABEL'), $this);?>
:</td>
	<td>
		<input id="label_value_id" type="text" name="labelValue" value="<?php echo $this->_tpl_vars['lbl_value']; ?>
">
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_LABEL'), $this);?>
:</td>
	<td>
    <?php if ($this->_tpl_vars['hideLevel'] < 1): ?>
	    <input id ="label_key_id" type="text" name="label" value="<?php echo $this->_tpl_vars['vardef']['vname']; ?>
">
	<?php else: ?>
		<input type="text" readonly value="<?php echo $this->_tpl_vars['vardef']['vname']; ?>
" disabled=1>
		<input id ="label_key_id" type="hidden" name="label" value="<?php echo $this->_tpl_vars['vardef']['vname']; ?>
">
	<?php endif; ?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_HELP_TEXT'), $this);?>
:</td><td><?php if ($this->_tpl_vars['hideLevel'] < 5): ?><input type="text" name="help" value="<?php echo $this->_tpl_vars['vardef']['help']; ?>
"><?php else: ?><input type="hidden" name="help" value="<?php echo $this->_tpl_vars['vardef']['help']; ?>
"><?php echo $this->_tpl_vars['vardef']['help']; ?>
<?php endif; ?>
	</td>
</tr>
<tr>
    <td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_COMMENT_TEXT'), $this);?>
:</td><td><?php if ($this->_tpl_vars['hideLevel'] < 5): ?><input type="text" name="comments" value="<?php echo $this->_tpl_vars['vardef']['comments']; ?>
"><?php else: ?><input type="hidden" name="comment" value="<?php echo $this->_tpl_vars['vardef']['comment']; ?>
"><?php echo $this->_tpl_vars['vardef']['comment']; ?>
<?php endif; ?>
    </td>
</tr>
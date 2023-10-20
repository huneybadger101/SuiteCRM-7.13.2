<?php /* Smarty version 2.6.33, created on 2023-07-24 00:23:55
         compiled from modules/DynamicFields/templates/Fields/Forms/date.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'modules/DynamicFields/templates/Fields/Forms/date.tpl', 48, false),array('function', 'html_options', 'modules/DynamicFields/templates/Fields/Forms/date.tpl', 51, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_DEFAULT_VALUE'), $this);?>
:</td>
	<td>
	<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
		<?php echo smarty_function_html_options(array('id' => 'default','name' => 'default','options' => $this->_tpl_vars['default_values'],'selected' => $this->_tpl_vars['vardef']['display_default']), $this);?>

	<?php else: ?>
		<input type='hidden' id='default' name='default' value='$vardef.display_default'><?php echo $this->_tpl_vars['vardef']['display_default']; ?>

	<?php endif; ?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_MASS_UPDATE'), $this);?>
:</td>
	<td>
	<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
		<input type="checkbox" id="massupdate" name="massupdate" value="1" <?php if (! empty ( $this->_tpl_vars['vardef']['massupdate'] )): ?>checked<?php endif; ?>/>
	<?php else: ?>
		<input type="checkbox" id="massupdate" name="massupdate" value="1" disabled <?php if (! empty ( $this->_tpl_vars['vardef']['massupdate'] )): ?>checked<?php endif; ?>/>
	<?php endif; ?>
	</td>
</tr>
<?php if ($this->_tpl_vars['range_search_option_enabled']): ?>
<tr>	
    <td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_ENABLE_RANGE_SEARCH'), $this);?>
:</td>
    <td>
        <input type='checkbox' name='enable_range_search' value=1 <?php if (! empty ( $this->_tpl_vars['vardef']['enable_range_search'] )): ?>checked<?php endif; ?> <?php if ($this->_tpl_vars['hideLevel'] > 5): ?>disabled<?php endif; ?> />
        <?php if ($this->_tpl_vars['hideLevel'] > 5): ?><input type='hidden' name='enable_range_search' value='<?php echo $this->_tpl_vars['vardef']['enable_range_search']; ?>
'><?php endif; ?>
    </td>	
</tr>
<?php endif; ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
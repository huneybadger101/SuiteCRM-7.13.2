<?php /* Smarty version 2.6.33, created on 2023-07-18 00:28:37
         compiled from modules/DynamicFields/templates/Fields/Forms/varchar.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'modules/DynamicFields/templates/Fields/Forms/varchar.tpl', 50, false),array('modifier', 'default', 'modules/DynamicFields/templates/Fields/Forms/varchar.tpl', 53, false),)), $this); ?>


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
		<input type='text' name='default' id='default' value='<?php echo $this->_tpl_vars['vardef']['default']; ?>
' maxlength='<?php echo ((is_array($_tmp=@$this->_tpl_vars['vardef']['len'])) ? $this->_run_mod_handler('default', true, $_tmp, 50) : smarty_modifier_default($_tmp, 50)); ?>
'>
	<?php else: ?>
		<input type='hidden' id='default' name='default' value='<?php echo $this->_tpl_vars['vardef']['default']; ?>
'><?php echo $this->_tpl_vars['vardef']['default']; ?>

	<?php endif; ?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_MAX_SIZE'), $this);?>
:</td>
	<td>
	<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
		<input type='text' name='len' id='field_len' value='<?php echo ((is_array($_tmp=@$this->_tpl_vars['vardef']['len'])) ? $this->_run_mod_handler('default', true, $_tmp, 25) : smarty_modifier_default($_tmp, 25)); ?>
' onchange="forceRange(this,1,255);changeMaxLength(document.getElementById('default'),this.value);">
		<input type='hidden' id="orig_len" name='orig_len' value='<?php echo $this->_tpl_vars['vardef']['len']; ?>
'>
		<?php if ($this->_tpl_vars['action'] == 'saveSugarField'): ?>
		  <input type='hidden' name='customTypeValidate' id='customTypeValidate' value='<?php echo ((is_array($_tmp=@$this->_tpl_vars['vardef']['len'])) ? $this->_run_mod_handler('default', true, $_tmp, 25) : smarty_modifier_default($_tmp, 25)); ?>
' 
		      onchange="if (parseInt(document.getElementById('field_len').value) < parseInt(document.getElementById('orig_len').value)) return confirm(SUGAR.language.get('ModuleBuilder', 'LBL_CONFIRM_LOWER_LENGTH')); return true;" > 
		<?php endif; ?>
		<?php echo '
		<script>
		function forceRange(field, min, max){
			field.value = parseInt(field.value);
			if(field.value == \'NaN\')field.value = max;
			if(field.value > max) field.value = max;
			if(field.value < min) field.value = min;
		}
		function changeMaxLength(field, length){
			field.maxLength = parseInt(length);
			field.value = field.value.substr(0, field.maxLength);
		}
		</script>
		'; ?>

	<?php else: ?>
		<input type='hidden' name='len' value='<?php echo $this->_tpl_vars['vardef']['len']; ?>
'><?php echo $this->_tpl_vars['vardef']['len']; ?>

	<?php endif; ?>
	</td>
</tr>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
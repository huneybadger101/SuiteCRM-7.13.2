<?php /* Smarty version 2.6.33, created on 2023-05-01 23:33:33
         compiled from modules/ModuleBuilder/tpls/wizard.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'counter', 'modules/ModuleBuilder/tpls/wizard.tpl', 49, false),array('modifier', 'substr', 'modules/ModuleBuilder/tpls/wizard.tpl', 56, false),)), $this); ?>
<div class='wizard' width='100%' >
	<div align='left' id='export'><?php echo $this->_tpl_vars['actions']; ?>
</div>

	<div><?php echo $this->_tpl_vars['question']; ?>
</div>
	<div id="Buttons">

	<table align="center" cellspacing="7" width="90%"><tr>
		<?php echo smarty_function_counter(array('start' => 0,'name' => 'buttonCounter','print' => false,'assign' => 'buttonCounter'), $this);?>

		<?php $_from = $this->_tpl_vars['buttons']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['buttonName'] => $this->_tpl_vars['button']):
?>
			<?php if ($this->_tpl_vars['buttonCounter'] > 5): ?>
				</tr><tr>
				<?php echo smarty_function_counter(array('start' => 0,'name' => 'buttonCounter','print' => false,'assign' => 'buttonCounter'), $this);?>

			<?php endif; ?>
			<td <?php if (isset ( $this->_tpl_vars['button']['help'] )): ?>id="<?php echo $this->_tpl_vars['button']['help']; ?>
"<?php endif; ?> width="16%" name=helpable" style="padding: 5px;"  valign="top" align="center">
			     <table onclick='<?php if (((is_array($_tmp=$this->_tpl_vars['button']['action'])) ? $this->_run_mod_handler('substr', true, $_tmp, 0, 11) : substr($_tmp, 0, 11)) == "javascript:"): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['button']['action'])) ? $this->_run_mod_handler('substr', true, $_tmp, 11) : substr($_tmp, 11)); ?>
<?php else: ?>ModuleBuilder.getContent("<?php echo $this->_tpl_vars['button']['action']; ?>
");<?php endif; ?>' 
			         class='wizardButton' onmousedown="ModuleBuilder.buttonDown(this);return false;" onmouseout="ModuleBuilder.buttonOut(this);">
			         <tr>
						<td align="center">
							<a class='studiolink' href="javascript:void(0)">
								<span class="suitepicon suitepicon-module-<?php echo $this->_tpl_vars['button']['icon']; ?>
"></span>
							</a>
						</td>
					 </tr>
					 <tr>
						 <td align="center">
							 <a class='studiolink' id='<?php echo $this->_tpl_vars['button']['linkId']; ?>
' href="javascript:void(0)">
                                 <?php echo $this->_tpl_vars['buttonName']; ?>

							 </a>
						 </td>
				     </tr>
				 </table>
			</td>
			<?php echo smarty_function_counter(array('name' => 'buttonCounter'), $this);?>

		<?php endforeach; endif; unset($_from); ?>
	</tr></table>
<!-- Hidden div for hidden content so IE doesn't ignore it -->
<div style="float:left; left:-100px; display: hidden;">&nbsp;
	<?php echo '
	<style type=\'text/css\'>
		.wizard { padding: 5px; text-align:center; font-weight:bold}
		.title{ color:#990033; font-weight:bold; padding: 0px 5px 0px 0px; font-size: 20pt}
		.backButton {position:absolute; left:10px; top:35px}
	</style>
    '; ?>


	<script>
	ModuleBuilder.helpRegisterByID('export', 'input');
	ModuleBuilder.helpRegisterByID('Buttons', 'td');
	ModuleBuilder.helpSetup('studioWizard','<?php echo $this->_tpl_vars['defaultHelp']; ?>
');
	</script>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'modules/ModuleBuilder/tpls/assistantJavascript.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
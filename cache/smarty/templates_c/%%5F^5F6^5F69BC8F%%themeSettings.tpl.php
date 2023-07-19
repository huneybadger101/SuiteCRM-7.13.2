<?php /* Smarty version 2.6.33, created on 2023-05-01 23:47:46
         compiled from modules/Administration/templates/themeSettings.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'counter', 'modules/Administration/templates/themeSettings.tpl', 68, false),)), $this); ?>

<form name="themeSettings" method="POST">
	<input type="hidden" name="module" value="Administration">
	<input type="hidden" name="action" value="ThemeSettings">
	<input type="hidden" name="disabled_themes" value="">
	
	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer">
		<tr>
			<td>
			<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" class="button primary" type="submit" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
">
			<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="button" onclick="document.themeSettings.action.value='';" type="submit" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">
			</td>
		</tr>
	</table>

	<div class='listViewBody' style='margin-bottom:5px'>
		<table id="themeSettings" class="list view" style='margin-bottom:0px;' border="0" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th data-toggle="true"><?php echo $this->_tpl_vars['MOD']['LBL_UW_TYPE_THEME']; ?>
</th>
                    <th data-hide="phone,phonelandscape"></th>
					<th><?php echo $this->_tpl_vars['MOD']['LBL_ENABLED']; ?>
</th>
					<th><?php echo $this->_tpl_vars['MOD']['DEFAULT_THEME']; ?>
</th>
				</tr>
			</thead>
			<tbody>
			<?php echo smarty_function_counter(array('start' => 0,'name' => 'colCounter','print' => false,'assign' => 'colCounter'), $this);?>

			<?php $_from = $this->_tpl_vars['available_themes']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['theme'] => $this->_tpl_vars['themedef']):
?>
				<tr>
					<td><b>
					<?php if ($this->_tpl_vars['themedef']['configurable']): ?><a href="index.php?module=Administration&action=ThemeConfigSettings&theme=<?php echo $this->_tpl_vars['theme']; ?>
"><?php echo $this->_tpl_vars['themedef']['name']; ?>
</a>
					<?php else: ?> <?php echo $this->_tpl_vars['themedef']['name']; ?>

					<?php endif; ?></b></td>
                    <td><img id="themePreview" style="height: 250px;" src="index.php?entryPoint=getImage&themeName=<?php echo $this->_tpl_vars['theme']; ?>
&imageName=themePreview.png" border="1"></td>
					<td><input class="disableTheme" name="disabled_themes[<?php echo $this->_tpl_vars['colCounter']; ?>
]" value="<?php echo $this->_tpl_vars['theme']; ?>
" type="hidden" <?php if ($this->_tpl_vars['themedef']['enabled'] && $this->_tpl_vars['theme'] == $this->_tpl_vars['default_theme']): ?>disabled="disabled"<?php endif; ?>><input class="disableTheme" type="checkbox" name="disabled_themes[<?php echo $this->_tpl_vars['colCounter']; ?>
]" value="" <?php if ($this->_tpl_vars['themedef']['enabled']): ?> <?php if ($this->_tpl_vars['theme'] == $this->_tpl_vars['default_theme']): ?>disabled="disabled"<?php endif; ?>  CHECKED<?php endif; ?>/></td>
					<td><input class="defaultTheme" type="radio" name="default_theme" value="<?php echo $this->_tpl_vars['theme']; ?>
" <?php if ($this->_tpl_vars['theme'] == $this->_tpl_vars['default_theme']): ?>CHECKED<?php elseif (! $this->_tpl_vars['themedef']['enabled']): ?>disabled="disabled"<?php endif; ?> /></td>
				</tr>
				<?php echo smarty_function_counter(array('name' => 'colCounter'), $this);?>

			<?php endforeach; endif; unset($_from); ?>
			</tbody>
		</table>
	</div>
	
	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer">
		<tr>
			<td>
				<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" class="button primary" type="submit" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
">
				<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
" class="button" onclick="document.themeSettings.action.value='';" type="submit" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">
			</td>
		</tr>
	</table>
</form>

<script type="text/javascript">
	<?php echo '
	$(document).ready(function() {
		$(\'.disableTheme\').change(function() {
			if(!$(this).is(":checked")) {
				$(this).closest(\'tr\').find("input,button,textarea").not(".disableTheme").attr("disabled", "disabled");
			} else {
				$(this).closest(\'tr\').find("input,button,textarea").not(".disableTheme").removeAttr("disabled");
			}

		});
		$(\'.defaultTheme\').change(function() {
			if($(this).is(":checked")) {
				$(".disableTheme").removeAttr("disabled");
				$(this).closest(\'tr\').find(".disableTheme").attr("disabled", "disabled");
			}

		});
	});
	'; ?>

</script>
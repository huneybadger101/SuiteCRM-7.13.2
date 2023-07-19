<?php /* Smarty version 2.6.33, created on 2023-05-01 23:50:21
         compiled from modules/Administration/templates/themeConfigSettings.tpl */ ?>

<form name="themeConfigSettings" method="POST">
	<input type="hidden" name="module" value="Administration">
	<input type="hidden" name="action" value="ThemeConfigSettings">
    <input type="hidden" name="do" value="">
	
	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer">
		<tr>
			<td>
			<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" class="button primary" onclick="document.themeConfigSettings.do.value='save';" type="submit" name="save_button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
">
			<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="button" onclick="document.themeConfigSettings.action.value='ThemeSettings';" type="submit" name="cancel_button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">
			</td>
		</tr>
	</table>

	<div class='listViewBody' style='margin-bottom:5px'>
		<table id="themeSettings" class="list view" style='margin-bottom:0;' border="0" cellspacing="0" cellpadding="0">

            <?php $_from = $this->_tpl_vars['config']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['def']):
?>
                <tr>
                    <td><?php echo $this->_tpl_vars['mod'][$this->_tpl_vars['def']['vname']]; ?>
</td>
                    <td>
                        <?php if ($this->_tpl_vars['def']['type'] == 'colour'): ?>
                            <input type="text" id="<?php echo $this->_tpl_vars['name']; ?>
" name="<?php echo $this->_tpl_vars['name']; ?>
" class="color" value="<?php echo $this->_tpl_vars['def']['value']; ?>
" size="15" />
                        <?php elseif ($this->_tpl_vars['def']['type'] == 'bool'): ?>
                            <input  name="<?php echo $this->_tpl_vars['name']; ?>
" value="false" type="hidden">
                            <input  type="checkbox" name="<?php echo $this->_tpl_vars['name']; ?>
" value="true" <?php if ($this->_tpl_vars['def']['value']): ?>CHECKED<?php endif; ?>/>
                        <?php endif; ?>
                    </td>
                </tr>
            <?php endforeach; endif; unset($_from); ?>
		</table>
	</div>
	
	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer">
		<tr>
			<td>
				<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" class="button primary" onclick="document.themeConfigSettings.do.value='save';" type="submit" name="save_button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
">
				<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
" class="button" onclick="document.themeSettings.action.value='';" type="submit" name="cancel_button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">
			</td>
		</tr>
	</table>
</form>
<?php /* Smarty version 2.6.33, created on 2023-07-18 00:28:38
         compiled from modules/ModuleBuilder/tpls/MBModule/field.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'modules/ModuleBuilder/tpls/MBModule/field.tpl', 98, false),array('function', 'html_options', 'modules/ModuleBuilder/tpls/MBModule/field.tpl', 100, false),array('function', 'sugar_help', 'modules/ModuleBuilder/tpls/MBModule/field.tpl', 101, false),)), $this); ?>
<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000"></div>
<?php echo '
<script>
addForm(\'popup_form\');
</script>
'; ?>


<form name='popup_form' id='popup_form_id' onsubmit='return false;'>
<input type='hidden' name='module' value='ModuleBuilder'>
<input type='hidden' name='action' value='<?php echo $this->_tpl_vars['action']; ?>
'>
<input type='hidden' name='new_dropdown' value=''>
<input type='hidden' name='to_pdf' value='true'>
<input type='hidden' name='view_module' value='<?php echo $this->_tpl_vars['module']->name; ?>
'>
<?php if (isset ( $this->_tpl_vars['package']->name )): ?>
    <input type='hidden' name='view_package' value='<?php echo $this->_tpl_vars['package']->name; ?>
'>
<?php endif; ?>
<?php if ($this->_tpl_vars['is_update']): ?>
	<input type='hidden' name='is_update' value='true'>
<?php else: ?>
	<input type='hidden' name='is_update' value='false'>
<?php endif; ?>
	<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
	    &nbsp;
	    <input type='button' class='button' name='fsavebtn' value='<?php echo $this->_tpl_vars['mod_strings']['LBL_BTN_SAVE']; ?>
' 
			onclick='<?php echo 'if(validate_type_selection() && check_form("popup_form")){ '; ?>
<?php echo $this->_tpl_vars['preSave']; ?>
 <?php echo 'ModuleBuilder.submitForm("popup_form_id"); }'; ?>
'>
	    <input type='button' name='cancelbtn' value='<?php echo $this->_tpl_vars['mod_strings']['LBL_BTN_CANCEL']; ?>
' 
			onclick='ModuleBuilder.tabPanel.removeTab(ModuleBuilder.findTabById("east"));' class='button'>
	    <?php if (! empty ( $this->_tpl_vars['vardef']['name'] )): ?>
	        <?php if ($this->_tpl_vars['hideLevel'] < 3): ?>
	        <?php echo '
	            &nbsp;<input type=\'button\' class=\'button\' name=\'fdeletebtn\' value=\''; ?>
<?php echo $this->_tpl_vars['mod_strings']['LBL_BTN_DELETE']; ?>
<?php echo '\' onclick=\'if(confirm("'; ?>
<?php echo $this->_tpl_vars['mod_strings']['LBL_CONFIRM_FIELD_DELETE']; ?>
<?php echo '")){document.popup_form.action.value="DeleteField";ModuleBuilder.submitForm("popup_form_id");}\'>
	        '; ?>

	        <?php endif; ?>
	        <?php if (! $this->_tpl_vars['no_duplicate']): ?>
	        <?php echo '
	        &nbsp;<input type=\'button\' class=\'button\' name=\'fclonebtn\' value=\''; ?>
<?php echo $this->_tpl_vars['mod_strings']['LBL_BTN_CLONE']; ?>
<?php echo '\' onclick=\'document.popup_form.action.value="CloneField";ModuleBuilder.submitForm("popup_form_id");\'>
	        '; ?>

	    <?php endif; ?>
	    <?php endif; ?>
	
	<?php else: ?>
	    <?php echo '
	     <input type=\'button\' class=\'button\' name=\'lsavebtn\' value=\''; ?>
<?php echo $this->_tpl_vars['mod_strings']['LBL_BTN_SAVE']; ?>
<?php echo '\' onclick=\'if(check_form("popup_form")){this.form.action.value = "'; ?>
<?php echo $this->_tpl_vars['action']; ?>
<?php echo '";ModuleBuilder.submitForm("popup_form_id")};\'>
	    '; ?>

	    <?php echo '
	        &nbsp;<input type=\'button\' class=\'button\' name=\'fclonebtn\' value=\''; ?>
<?php echo $this->_tpl_vars['mod_strings']['LBL_BTN_CLONE']; ?>
<?php echo '\' onclick=\'document.popup_form.action.value="CloneField";ModuleBuilder.submitForm("popup_form_id");\'>
	     '; ?>

		 <?php echo '
	        &nbsp;<input type=\'button\' class=\'button\' name=\'cancel\' value=\''; ?>
<?php echo $this->_tpl_vars['mod_strings']['LBL_BTN_CANCEL']; ?>
<?php echo '\' onclick=\'ModuleBuilder.tabPanel.get("activeTab").close()\'>
	        '; ?>

	        
<?php endif; ?>
<hr>

<table width="400px" >
<tr>
    <td class="mbLBL" style="width:92px;"><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_DATA_TYPE'), $this);?>
:</td>
    <td ><?php if (empty ( $this->_tpl_vars['vardef']['name'] ) && $this->_tpl_vars['isClone'] == 0): ?>
                <?php echo smarty_function_html_options(array('name' => 'type','id' => 'type','options' => $this->_tpl_vars['field_types'],'selected' => $this->_tpl_vars['vardef']['type'],'onchange' => 'ModuleBuilder.moduleLoadField("", this.options[this.selectedIndex].value);'), $this);?>

                <?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['mod_strings']['LBL_POPHELP_FIELD_DATA_TYPE'],'FIXX' => 250,'FIXY' => 80), $this);?>

            <?php else: ?>
                <?php echo $this->_tpl_vars['field_types'][$this->_tpl_vars['vardef']['type']]; ?>

            <?php endif; ?>
            <?php if (empty ( $this->_tpl_vars['field_types'][$this->_tpl_vars['vardef']['type']] ) && ! empty ( $this->_tpl_vars['vardef']['type'] )): ?>(<?php echo $this->_tpl_vars['vardef']['type']; ?>
)<?php endif; ?>
            <input type='hidden' name='type' value=<?php echo $this->_tpl_vars['vardef']['type']; ?>
 />
    </td>
</tr>
</table>
<?php echo $this->_tpl_vars['fieldLayout']; ?>

</form>

<script>
<?php echo '
function validate_type_selection(){
    var typeSel = document.getElementById(\'type\');
    if(typeSel && typeSel.options){
        if(typeSel.options[typeSel.selectedIndex].value == \'\'){
            alert(\''; ?>
<?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'ERR_SELECT_FIELD_TYPE'), $this);?>
<?php echo '\');
            return false;
        }
    }
    if (document.getElementById("customTypeValidate")){
        return document.getElementById("customTypeValidate").onchange(); 
    }
    return true;
}
'; ?>

ModuleBuilder.helpSetup('fieldsEditor','<?php echo $this->_tpl_vars['help_group']; ?>
');
</script>
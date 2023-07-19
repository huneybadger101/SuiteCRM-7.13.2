<?php /* Smarty version 2.6.33, created on 2023-07-18 00:28:38
         compiled from modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl', 49, false),array('function', 'html_options', 'modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl', 65, false),array('function', 'sugar_help', 'modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl', 66, false),)), $this); ?>


<?php if ($this->_tpl_vars['vardef']['type'] != 'bool'): ?>
<tr ><td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_REQUIRED_OPTION'), $this);?>
:</td><td><input type="checkbox" name="required" value="1" <?php if (! empty ( $this->_tpl_vars['vardef']['required'] )): ?>CHECKED<?php endif; ?> <?php if ($this->_tpl_vars['hideLevel'] > 5): ?>disabled<?php endif; ?>/><?php if ($this->_tpl_vars['hideLevel'] > 5): ?><input type="hidden" name="required" value="<?php echo $this->_tpl_vars['vardef']['required']; ?>
"><?php endif; ?></td></tr>
<?php endif; ?>
<tr><td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_AUDIT'), $this);?>
:</td><td><input type="checkbox" name="audited" value="1" <?php if (! empty ( $this->_tpl_vars['vardef']['audited'] )): ?>CHECKED<?php endif; ?> <?php if ($this->_tpl_vars['hideLevel'] > 5): ?>disabled<?php endif; ?>/><?php if ($this->_tpl_vars['hideLevel'] > 5): ?><input type="hidden" name="audited" value="<?php echo $this->_tpl_vars['vardef']['audited']; ?>
"><?php endif; ?></td></tr>

<tr>
    <td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_INLINE_EDIT_TEXT'), $this);?>
:</td>
    <td><input type="hidden" name="inline_edit" value=""><input type="checkbox" name="inline_edit" value="1"
        <?php if (! empty ( $this->_tpl_vars['vardef']['inline_edit'] )): ?>CHECKED<?php endif; ?> <?php if (( $this->_tpl_vars['hideLevel'] > 5 || ! empty ( $this->_tpl_vars['disableInlineEdit'] ) )): ?>disabled<?php endif; ?>/><?php if ($this->_tpl_vars['hideLevel'] > 5): ?>
            <input type="hidden" name="inline_edit" value="<?php echo $this->_tpl_vars['vardef']['inline_edit']; ?>
">
        <?php endif; ?>
    </td>
</tr>

<?php if (! $this->_tpl_vars['hideImportable']): ?>
<tr><td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_IMPORTABLE'), $this);?>
:</td><td>
    <?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
        <?php echo smarty_function_html_options(array('name' => 'importable','id' => 'importable','selected' => $this->_tpl_vars['vardef']['importable'],'options' => $this->_tpl_vars['importable_options']), $this);?>

        <?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['mod_strings']['LBL_POPHELP_IMPORTABLE'],'FIXX' => 250,'FIXY' => 80), $this);?>

    <?php else: ?>
        <?php if (isset ( $this->_tpl_vars['vardef']['importable'] )): ?><?php echo $this->_tpl_vars['importable_options'][$this->_tpl_vars['vardef']['importable']]; ?>

        <?php else: ?><?php echo $this->_tpl_vars['importable_options']['true']; ?>
<?php endif; ?>
    <?php endif; ?>
</td></tr>
<?php endif; ?>
<?php if (! $this->_tpl_vars['hideDuplicatable']): ?>
<tr><td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module' => 'DynamicFields','label' => 'COLUMN_TITLE_DUPLICATE_MERGE'), $this);?>
:</td><td>
<?php if ($this->_tpl_vars['hideLevel'] < 5): ?>
    <?php echo smarty_function_html_options(array('name' => 'duplicate_merge','id' => 'duplicate_merge','selected' => $this->_tpl_vars['vardef']['duplicate_merge_dom_value'],'options' => $this->_tpl_vars['duplicate_merge_options']), $this);?>

    <?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['mod_strings']['LBL_POPHELP_DUPLICATE_MERGE'],'FIXX' => 250,'FIXY' => 80), $this);?>

<?php else: ?>
    <?php if (isset ( $this->_tpl_vars['vardef']['duplicate_merge_dom_value'] )): ?><?php echo $this->_tpl_vars['vardef']['duplicate_merge_dom_value']; ?>

    <?php else: ?><?php echo $this->_tpl_vars['duplicate_merge_options'][0]; ?>
<?php endif; ?>
<?php endif; ?>
</td></tr>
<?php endif; ?>
</table>
<?php /* Smarty version 2.6.33, created on 2023-07-23 23:54:32
         compiled from modules/Emails/templates/displayHasAttachmentField.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_getimagepath', 'modules/Emails/templates/displayHasAttachmentField.tpl', 45, false),)), $this); ?>

<div class="email-has-attachement">
    <?php if ($this->_tpl_vars['bean']): ?>
        <?php if ($this->_tpl_vars['bean']['has_attachment']): ?>
            <div class="email-has-attachment"><span class="glyphicon"><img src="<?php echo smarty_function_sugar_getimagepath(array('directory' => '','file_name' => 'attachment-indicator','file_extension' => 'svg','file' => 'attachment-indicator.svg'), $this);?>
"/></span></div>
        <?php endif; ?>

    <?php endif; ?>
</div>
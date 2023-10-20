<?php /* Smarty version 2.6.33, created on 2023-07-23 23:54:32
         compiled from modules/Emails/templates/displayIndicatorField.tpl */ ?>

<div class="email-indicator">
    <?php if ($this->_tpl_vars['bean']): ?>
        <?php if ($this->_tpl_vars['bean']['status'] == 'unread'): ?>
            <div class="email-new"></div>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['bean']['is_imported'] == true && $this->_tpl_vars['bean']['inbound_email_record'] == $_REQUEST['inbound_email_record']): ?>
            <div class="email-imported"><span class="glyphicon glyphicon-ok"></span></div>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['bean']['flagged'] == 1): ?>
            <span class="email-flagged">!</span>
        <?php endif; ?>
    <?php endif; ?>
</div>
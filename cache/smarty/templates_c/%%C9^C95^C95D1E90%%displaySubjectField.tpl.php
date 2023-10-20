<?php /* Smarty version 2.6.33, created on 2023-07-23 23:54:32
         compiled from modules/Emails/templates/displaySubjectField.tpl */ ?>
<div class="email-subject">
    <?php if ($this->_tpl_vars['bean']): ?>
                <?php if ($this->_tpl_vars['bean']['name'] == ''): ?>
            <?php ob_start(); ?><?php echo $this->_tpl_vars['MOD']['LBL_NO_SUBJECT']; ?>
<?php $this->_smarty_vars['capture']['subject'] = ob_get_contents();  $this->assign('subject', ob_get_contents());ob_end_clean(); ?>
        <?php else: ?>
            <?php ob_start(); ?><?php echo $this->_tpl_vars['bean']['name']; ?>
<?php $this->_smarty_vars['capture']['subject'] = ob_get_contents();  $this->assign('subject', ob_get_contents());ob_end_clean(); ?>
        <?php endif; ?>

                <?php if (! empty ( $this->_tpl_vars['bean']['id'] ) && $this->_tpl_vars['bean']['status'] == $this->_tpl_vars['APP_LIST_STRINGS']['dom_email_status']['draft']): ?>
            <a href="index.php?module=Emails&action=DetailDraftView&record=<?php echo $this->_tpl_vars['bean']['id']; ?>
"><?php echo $this->_tpl_vars['subject']; ?>
</a>
        <?php elseif (! empty ( $this->_tpl_vars['bean']['id'] ) && $this->_tpl_vars['bean']['status'] != $this->_tpl_vars['APP_LIST_STRINGS']['dom_email_status']['draft']): ?>
            <a href="index.php?module=Emails&action=DetailView&record=<?php echo $this->_tpl_vars['bean']['id']; ?>
"><?php echo $this->_tpl_vars['subject']; ?>
</a>
        <?php else: ?>
            <a href="index.php?module=Emails&action=DisplayDetailView&folder_name=<?php echo $this->_tpl_vars['bean']['folder']; ?>
&folder=<?php echo $this->_tpl_vars['bean']['folder_type']; ?>
&inbound_email_record=<?php echo $this->_tpl_vars['bean']['inbound_email_record']; ?>
&uid=<?php echo $this->_tpl_vars['bean']['uid']; ?>
&msgno=<?php echo $this->_tpl_vars['bean']['msgno']; ?>
"><?php echo $this->_tpl_vars['subject']; ?>
</a>
        <?php endif; ?>
    <?php endif; ?>
</div>
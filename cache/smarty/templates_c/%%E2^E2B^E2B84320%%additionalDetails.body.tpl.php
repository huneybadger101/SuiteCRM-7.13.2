<?php /* Smarty version 2.6.33, created on 2023-04-17 15:15:51
         compiled from modules/Meetings/tpls/additionalDetails.body.tpl */ ?>
<input id="type" type="hidden" value="<?php echo $this->_tpl_vars['OBJECT_NAME']; ?>
"/>
<?php if (! empty ( $this->_tpl_vars['FIELD']['ID'] )): ?>
    <input id="id" type="hidden" value="<?php echo $this->_tpl_vars['FIELD']['ID']; ?>
"/>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['FIELD']['NAME'] )): ?>
    <div>
        <strong><?php echo $this->_tpl_vars['MOD']['LBL_SUBJECT']; ?>
</strong>
        <a href="index.php?action=DetailView&module=<?php echo $this->_tpl_vars['MODULE_NAME']; ?>
&record=<?php echo $this->_tpl_vars['FIELD']['ID']; ?>
"><?php echo $this->_tpl_vars['FIELD']['NAME']; ?>
</a>
    </div>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['FIELD']['DATE_START'] )): ?>
    <div data-field="DATE_START" data-date="<?php echo $this->_tpl_vars['FIELD']['DB_DATE_START']; ?>
">
        <strong><?php echo $this->_tpl_vars['MOD']['LBL_DATE_TIME']; ?>
</strong>
        <?php echo $this->_tpl_vars['FIELD']['DATE_START']; ?>

    </div>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['FIELD']['DURATION_HOURS'] ) || ! empty ( $this->_tpl_vars['FIELD']['DURATION_MINUTES'] )): ?>
    <div>
        <strong><?php echo $this->_tpl_vars['MOD']['LBL_DURATION']; ?>
</strong>
        <?php if (! empty ( $this->_tpl_vars['FIELD']['DURATION_HOURS'] )): ?>
            <?php echo $this->_tpl_vars['FIELD']['DURATION_HOURS']; ?>
 <?php echo $this->_tpl_vars['MOD']['LBL_HOURS_ABBREV']; ?>

        <?php endif; ?>

        <?php if (! empty ( $this->_tpl_vars['FIELD']['DURATION_MINUTES'] )): ?>
            <?php echo $this->_tpl_vars['FIELD']['DURATION_MINUTES']; ?>
 <?php echo $this->_tpl_vars['MOD']['LBL_MINSS_ABBREV']; ?>

        <?php endif; ?>
    </div>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['FIELD']['PARENT_ID'] )): ?>
    <div>
        <strong><?php echo $this->_tpl_vars['MOD']['LBL_RELATED_TO']; ?>
</strong>
        <a href="index.php?module=<?php echo $this->_tpl_vars['FIELD']['PARENT_TYPE']; ?>
&action=DetailView&record=<?php echo $this->_tpl_vars['FIELD']['PARENT_ID']; ?>
"><?php echo $this->_tpl_vars['FIELD']['PARENT_TYPE']; ?>
 - <?php echo $this->_tpl_vars['FIELD']['PARENT_NAME']; ?>
</a>
    </div>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['FIELD']['STATUS'] )): ?>
    <div>
        <strong><?php echo $this->_tpl_vars['MOD']['LBL_STATUS']; ?>
</strong>
        <?php echo $this->_tpl_vars['FIELD']['STATUS']; ?>

    </div>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['FIELD']['DESCRIPTION'] )): ?>
    <div>
        <strong><?php echo $this->_tpl_vars['MOD']['LBL_DESCRIPTION']; ?>
</strong>
        <?php echo $this->_tpl_vars['FIELD']['DESCRIPTION']; ?>

    </div>
<?php endif; ?>
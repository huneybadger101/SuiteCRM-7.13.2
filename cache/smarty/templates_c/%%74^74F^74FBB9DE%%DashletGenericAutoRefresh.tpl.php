<?php /* Smarty version 2.6.33, created on 2023-04-17 14:58:00
         compiled from include/Dashlets/DashletGenericAutoRefresh.tpl */ ?>
<input type="hidden" id="<?php echo $this->_tpl_vars['dashletId']; ?>
_offset" name="<?php echo $this->_tpl_vars['dashletId']; ?>
_offset" value="0">
<input type="hidden" id="<?php echo $this->_tpl_vars['dashletId']; ?>
_interval" name="<?php echo $this->_tpl_vars['dashletId']; ?>
_interval" value="<?php echo $this->_tpl_vars['dashletRefreshInterval']; ?>
">
<script type='text/javascript'>
<!--
var autoRefreshProcId<?php echo $this->_tpl_vars['strippedDashletId']; ?>
 = '';
if (document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_interval").value > 0) {
    autoRefreshProcId<?php echo $this->_tpl_vars['strippedDashletId']; ?>
 = setInterval('refreshDashlet<?php echo $this->_tpl_vars['strippedDashletId']; ?>
()', "<?php echo $this->_tpl_vars['dashletRefreshInterval']; ?>
");
}	
function refreshDashlet<?php echo $this->_tpl_vars['strippedDashletId']; ?>
() 
{
    //refresh only if offset is 0
    if ( SUGAR.mySugar && document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_offset") !== null && document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_offset").value == '0' ) {
        SUGAR.mySugar.retrieveDashlet("<?php echo $this->_tpl_vars['dashletId']; ?>
","<?php echo $this->_tpl_vars['url']; ?>
");
    }
}
-->
</script>
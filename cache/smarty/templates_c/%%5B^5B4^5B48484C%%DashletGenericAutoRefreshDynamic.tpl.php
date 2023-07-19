<?php /* Smarty version 2.6.33, created on 2023-05-30 00:16:22
         compiled from include/Dashlets/DashletGenericAutoRefreshDynamic.tpl */ ?>
<input type="hidden" id="<?php echo $this->_tpl_vars['dashletId']; ?>
_offset" name="<?php echo $this->_tpl_vars['dashletId']; ?>
_offset" value="0">
<input type="hidden" id="<?php echo $this->_tpl_vars['dashletId']; ?>
_interval" name="<?php echo $this->_tpl_vars['dashletId']; ?>
_interval" value="<?php echo $this->_tpl_vars['dashletRefreshInterval']; ?>
">
<script type='text/javascript'>
<!--
document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_offset").value = "<?php echo $this->_tpl_vars['dashletOffset']; ?>
";
document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_interval").value = "<?php echo $this->_tpl_vars['dashletRefreshInterval']; ?>
";
if (typeof autoRefreshProcId<?php echo $this->_tpl_vars['strippedDashletId']; ?>
 != 'undefined') {
    clearInterval(autoRefreshProcId<?php echo $this->_tpl_vars['strippedDashletId']; ?>
);
}
if(document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_interval").value > 0) {
    if (typeof refreshDashlet<?php echo $this->_tpl_vars['strippedDashletId']; ?>
 == 'undefined') {
        function refreshDashlet<?php echo $this->_tpl_vars['strippedDashletId']; ?>
() 
        {
            //refresh only if offset is 0
            if (SUGAR.mySugar && document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_offset") !== null && document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_offset").value == '0' ) {
                SUGAR.mySugar.retrieveDashlet("<?php echo $this->_tpl_vars['dashletId']; ?>
","<?php echo $this->_tpl_vars['url']; ?>
");
            }
        }
    }
    autoRefreshProcId<?php echo $this->_tpl_vars['strippedDashletId']; ?>
 = setInterval('refreshDashlet<?php echo $this->_tpl_vars['strippedDashletId']; ?>
()', document.getElementById("<?php echo $this->_tpl_vars['dashletId']; ?>
_interval").value);
}
-->
</script>
<?php /* Smarty version 2.6.33, created on 2023-04-17 15:15:11
         compiled from include/SugarFields/Fields/Datetimecombo/EditView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugarvar', 'include/SugarFields/Fields/Datetimecombo/EditView.tpl', 41, false),array('modifier', 'cat', 'include/SugarFields/Fields/Datetimecombo/EditView.tpl', 46, false),)), $this); ?>
{*
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */
*}
<?php ob_start(); ?><?php echo smarty_function_sugarvar(array('key' => 'name'), $this);?>
<?php $this->_smarty_vars['capture']['idname'] = ob_get_contents();  $this->assign('idname', ob_get_contents());ob_end_clean(); ?>
<?php if (! empty ( $this->_tpl_vars['displayParams']['idName'] )): ?>
    <?php $this->assign('idname', $this->_tpl_vars['displayParams']['idName']); ?>
<?php endif; ?>

<?php $this->assign('flag_field', ((is_array($_tmp=$this->_tpl_vars['vardef']['name'])) ? $this->_run_mod_handler('cat', true, $_tmp, '_flag') : smarty_modifier_cat($_tmp, '_flag'))); ?>
<table border="0" cellpadding="0" cellspacing="0" class="dateTime">
<tr valign="middle">
<td nowrap class="dateTimeComboColumn">
<input autocomplete="off" type="text" id="<?php echo $this->_tpl_vars['idname']; ?>
_date" class="datetimecombo_date" value="{$fields[<?php echo smarty_function_sugarvar(array('key' => 'name','stringFormat' => true), $this);?>
].value}" size="11" maxlength="10" title='<?php echo $this->_tpl_vars['vardef']['help']; ?>
' tabindex="<?php echo $this->_tpl_vars['tabindex']; ?>
" onblur="combo_<?php echo $this->_tpl_vars['idname']; ?>
.update();" onchange="combo_<?php echo $this->_tpl_vars['idname']; ?>
.update(); <?php if (isset ( $this->_tpl_vars['displayParams']['updateCallback'] )): ?><?php echo $this->_tpl_vars['displayParams']['updateCallback']; ?>
<?php endif; ?>"   <?php if (! empty ( $this->_tpl_vars['displayParams']['accesskey'] )): ?> accesskey='<?php echo $this->_tpl_vars['displayParams']['accesskey']; ?>
' <?php endif; ?> >
	<button type="button" id="<?php echo $this->_tpl_vars['idname']; ?>
_trigger" class="btn btn-danger" onclick="return false;"><span class="suitepicon suitepicon-module-calendar"  alt="{$APP.LBL_ENTER_DATE}"></span></button>
<?php if (empty ( $this->_tpl_vars['displayParams']['splitDateTime'] )): ?>
</td>
<td nowrap class="dateTimeComboColumn">
<?php else: ?>
<br>
<?php endif; ?>
<div id="<?php echo $this->_tpl_vars['idname']; ?>
_time_section" class="datetimecombo_time_section"></div>
<?php if ($this->_tpl_vars['displayParams']['showNoneCheckbox']): ?>
<script type="text/javascript">
function set_<?php echo $this->_tpl_vars['idname']; ?>
_values(form) {ldelim}
 if(form.<?php echo $this->_tpl_vars['idname']; ?>
_flag.checked)  {ldelim}
	form.<?php echo $this->_tpl_vars['idname']; ?>
_flag.value=1;
	form.<?php echo $this->_tpl_vars['idname']; ?>
.value="";
	form.<?php echo $this->_tpl_vars['idname']; ?>
.readOnly=true;
 {rdelim} else  {ldelim}
	form.<?php echo $this->_tpl_vars['idname']; ?>
_flag.value=0;
	form.<?php echo $this->_tpl_vars['idname']; ?>
.readOnly=false;
 {rdelim}
{rdelim}
</script>
<?php endif; ?>
</td>
</tr>
<?php if ($this->_tpl_vars['displayParams']['showFormats']): ?>
<tr valign="middle">
<td nowrap>
<span class="dateFormat">{$USER_DATEFORMAT}</span>
</td>
<td nowrap>
<span class="dateFormat">{$TIME_FORMAT}</span>
</td>
</tr>
<?php endif; ?>
</table>
<?php if (! empty ( $this->_tpl_vars['displayParams']['originalFieldName'] )): ?>
<input type="hidden" class="DateTimeCombo" id="<?php echo $this->_tpl_vars['idname']; ?>
" name="<?php echo $this->_tpl_vars['displayParams']['originalFieldName']; ?>
" value="{$fields[<?php echo smarty_function_sugarvar(array('key' => 'name','stringFormat' => true), $this);?>
].value}">
<?php else: ?>
<input type="hidden" class="DateTimeCombo" id="<?php echo $this->_tpl_vars['idname']; ?>
" name="<?php echo $this->_tpl_vars['idname']; ?>
" value="{$fields[<?php echo smarty_function_sugarvar(array('key' => 'name','stringFormat' => true), $this);?>
].value}">
<?php endif; ?>
<script type="text/javascript" src="{sugar_getjspath file="include/SugarFields/Fields/Datetimecombo/Datetimecombo.js"}"></script>
<script type="text/javascript">
var combo_<?php echo $this->_tpl_vars['idname']; ?>
 = new Datetimecombo("{$fields[<?php echo smarty_function_sugarvar(array('key' => 'name','stringFormat' => true), $this);?>
].value}", "<?php echo $this->_tpl_vars['idname']; ?>
", "{$TIME_FORMAT}", "<?php echo $this->_tpl_vars['tabindex']; ?>
", '<?php echo $this->_tpl_vars['displayParams']['showNoneCheckbox']; ?>
', false, true);
//Render the remaining widget fields
text = combo_<?php echo $this->_tpl_vars['idname']; ?>
.html('<?php echo $this->_tpl_vars['displayParams']['updateCallback']; ?>
');
document.getElementById('<?php echo $this->_tpl_vars['idname']; ?>
_time_section').innerHTML = text;

//Call eval on the update function to handle updates to calendar picker object
eval(combo_<?php echo $this->_tpl_vars['idname']; ?>
.jsscript('<?php echo $this->_tpl_vars['displayParams']['updateCallback']; ?>
'));

addToValidateBinaryDependency('{$form_name}',"<?php echo $this->_tpl_vars['idname']; ?>
_hours", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_HOURS}" ,"<?php echo $this->_tpl_vars['idname']; ?>
_date");
addToValidateBinaryDependency('{$form_name}', "<?php echo $this->_tpl_vars['idname']; ?>
_minutes", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MINUTES}" ,"<?php echo $this->_tpl_vars['idname']; ?>
_date");
addToValidateBinaryDependency('{$form_name}', "<?php echo $this->_tpl_vars['idname']; ?>
_meridiem", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MERIDIEM}","<?php echo $this->_tpl_vars['idname']; ?>
_date");

YAHOO.util.Event.onDOMReady(function()
{ldelim}

	Calendar.setup ({ldelim}
	onClose : update_<?php echo $this->_tpl_vars['idname']; ?>
,
	inputField : "<?php echo $this->_tpl_vars['idname']; ?>
_date",
    form : "<?php echo $this->_tpl_vars['displayParams']['formName']; ?>
",
	ifFormat : "{$CALENDAR_FORMAT}",
	daFormat : "{$CALENDAR_FORMAT}",
	button : "<?php echo $this->_tpl_vars['idname']; ?>
_trigger",
	singleClick : true,
	step : 1,
	weekNumbers: false,
        startWeekday: {$CALENDAR_FDOW|default:'0'},
	comboObject: combo_<?php echo $this->_tpl_vars['idname']; ?>

	{rdelim});

	//Call update for first time to round hours and minute values
	combo_<?php echo $this->_tpl_vars['idname']; ?>
.update(false);

{rdelim}); 
</script>
<?php /* Smarty version 2.6.33, created on 2023-04-29 02:16:19
         compiled from modules/Configurator/tpls/EditView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_help', 'modules/Configurator/tpls/EditView.tpl', 103, false),array('function', 'sugar_getimage', 'modules/Configurator/tpls/EditView.tpl', 414, false),)), $this); ?>
<form name="ConfigureSettings" enctype='multipart/form-data' method="POST" action="index.php" onSubmit="return (add_checks(document.ConfigureSettings) && check_form('ConfigureSettings'));">
<input type='hidden' name='action' value='SaveConfig'/>
<input type='hidden' name='module' value='Configurator'/>
<span class='error'><?php echo $this->_tpl_vars['error']['main']; ?>
</span>
<table width="100%" cellpadding="0" cellspacing="1" border="0" class="actionsContainer">
<tr>

	<td>
		<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="button primary" id="ConfigureSettings_save_button" type="submit"  name="save" value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " >
		&nbsp;<input title="<?php echo $this->_tpl_vars['MOD']['LBL_SAVE_BUTTON_TITLE']; ?>
"  id="ConfigureSettings_restore_button"  class="button"  type="submit" name="restore" value="  <?php echo $this->_tpl_vars['MOD']['LBL_RESTORE_BUTTON_LABEL']; ?>
  " >
		&nbsp;<input title="<?php echo $this->_tpl_vars['MOD']['LBL_CANCEL_BUTTON_TITLE']; ?>
" id="ConfigureSettings_cancel_button"   onclick="document.location.href='index.php?module=Administration&action=index'" class="button"  type="button" name="cancel" value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  " > </td>
	</tr>
</table>


<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
<tr>
	<th align="left" scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['DEFAULT_SYSTEM_SETTINGS']; ?>
</h4></th>
</tr>

	<tr>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LIST_ENTRIES_PER_LISTVIEW']; ?>
: </td>
		<td  >
			<input type='text' size='4' id='ConfigureSettings_list_max_entries_per_page' name='list_max_entries_per_page' value='<?php echo $this->_tpl_vars['config']['list_max_entries_per_page']; ?>
'>
		</td>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LIST_ENTRIES_PER_SUBPANEL']; ?>
: </td>
		<td  >
			<input type='text' size='4' id='ConfigureSettings_list_max_entries_per_subpanel' name='list_max_entries_per_subpanel' value='<?php echo $this->_tpl_vars['config']['list_max_entries_per_subpanel']; ?>
'>
		</td>
	</tr>
	<tr>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LOCK_HOMEPAGE']; ?>
: </td>
		<td  >
			<?php if (! empty ( $this->_tpl_vars['config']['lock_homepage'] )): ?>
				<?php $this->assign('lock_homepage_checked', 'CHECKED'); ?>
			<?php else: ?>
				<?php $this->assign('lock_homepage_checked', ''); ?>
			<?php endif; ?>
			<input type='hidden' name='lock_homepage' value='false'>
			<input type='checkbox' name='lock_homepage' value='true' <?php echo $this->_tpl_vars['lock_homepage_checked']; ?>
>
		</td>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LOCK_SUBPANELS']; ?>
: </td>
		<td  >
			<?php if (! empty ( $this->_tpl_vars['config']['lock_subpanels'] )): ?>
				<?php $this->assign('lock_subpanels_checked', 'CHECKED'); ?>
			<?php else: ?>
				<?php $this->assign('lock_subpanels_checked', ''); ?>
			<?php endif; ?>
			<input type='hidden' name='lock_subpanels' value='false'>
			<input type='checkbox' name='lock_subpanels' value='true' <?php echo $this->_tpl_vars['lock_subpanels_checked']; ?>
>
		</td>
	</tr>
	<tr>
		<td  scope="row" nowrap><?php echo $this->_tpl_vars['MOD']['MAX_DASHLETS']; ?>
: </td>
		<td>
			<input type='text' size='4' name='max_dashlets_homepage' value='<?php echo $this->_tpl_vars['config']['max_dashlets_homepage']; ?>
'>
		</td>
		<td  scope="row" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_USE_REAL_NAMES']; ?>
: &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_USE_REAL_NAMES_DESC']), $this);?>
</td>
		<?php if (! empty ( $this->_tpl_vars['config']['use_real_names'] )): ?>
			<?php $this->assign('use_real_names', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('use_real_names', ''); ?>
		<?php endif; ?>
		<td >
			<input type='hidden' name='use_real_names' value='false'>
			<input name='use_real_names'  type="checkbox" value="true" <?php echo $this->_tpl_vars['use_real_names']; ?>
>
		</td>
	</tr>
	<tr>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['DISPLAY_RESPONSE_TIME']; ?>
: </td>
		<?php if (! empty ( $this->_tpl_vars['config']['calculate_response_time'] )): ?>
			<?php $this->assign('calculate_response_time_checked', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('calculate_response_time_checked', ''); ?>
		<?php endif; ?>
		<td ><input type='hidden' name='calculate_response_time' value='false'><input name='calculate_response_time'  type="checkbox" value="true" <?php echo $this->_tpl_vars['calculate_response_time_checked']; ?>
></td>
		<td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_MODULE_FAVICON']; ?>
 &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_MODULE_FAVICON_HELP']), $this);?>
 </td>
		<?php if (! empty ( $this->_tpl_vars['config']['default_module_favicon'] )): ?>
			<?php $this->assign('default_module_favicon', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('default_module_favicon', ''); ?>
		<?php endif; ?>
		<td >
			<input type='hidden' name='default_module_favicon' value='false'>
			<input name='default_module_favicon'  type="checkbox" value="true" <?php echo $this->_tpl_vars['default_module_favicon']; ?>
>
		</td>
	</tr>
	<tr>
		<td scope="row" width='15%' nowrap><?php echo $this->_tpl_vars['MOD']['SYSTEM_NAME']; ?>
 </td>
		<td width='35%'>
			<input type='text' name='system_name' value='<?php echo $this->_tpl_vars['settings']['system_name']; ?>
'>
		</td>
		<td scope="row" width='15%' nowrap><?php echo $this->_tpl_vars['MOD']['LBL_MIN_AUTO_REFRESH_INTERVAL']; ?>
 &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_MIN_AUTO_REFRESH_INTERVAL_HELP']), $this);?>
 </td>
		<td width='35%'>
		    <select name='dashlet_auto_refresh_min' id='dashlet_auto_refresh_min'><?php echo $this->_tpl_vars['AUTO_REFRESH_INTERVAL_OPTIONS']; ?>
</select>
		</td>
    </tr>
    <tr>
        <td  scope="row" width='12%' nowrap>
        <?php echo $this->_tpl_vars['MOD']['CURRENT_LOGO']; ?>
&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['CURRENT_LOGO_HELP']), $this);?>

        </td>
        <td width='35%' >
            <img id="company_logo_image" src='<?php echo $this->_tpl_vars['company_logo']; ?>
' alt=$mod_strings.LBL_LOGO>
        </td>
    </tr>
    <tr>
        <td  scope="row" width='12%' nowrap>
            <?php echo $this->_tpl_vars['MOD']['NEW_LOGO']; ?>
&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['NEW_LOGO_HELP_NO_SPACE']), $this);?>

        </td>
        <td  width='35%'>
            <div id="container_upload"></div>
            <input type='text' id='company_logo' name='company_logo' style="display:none">
        </td>
    </tr>
    <tr>
            <td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_LEAD_CONV_OPTION']; ?>
:&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LEAD_CONV_OPT_HELP']), $this);?>
</td>
            <td> <select name="lead_conv_activity_opt"><?php echo $this->_tpl_vars['lead_conv_activities']; ?>
</select></td>
            <td><a href="./index.php?module=Administration&action=ConfigureAjaxUI" id="configure_ajax"><?php echo $this->_tpl_vars['MOD']['LBL_CONFIG_AJAX']; ?>
</a>&nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_CONFIG_AJAX_DESC']), $this);?>
</td>
    </tr>

    <tr>
        <td  scope="row" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_DISALBE_CONVERT_LEAD']; ?>
: &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_DISALBE_CONVERT_LEAD_DESC']), $this);?>
</td>
        <?php if (! empty ( $this->_tpl_vars['config']['disable_convert_lead'] )): ?>
            <?php $this->assign('disable_convert_lead', 'CHECKED'); ?>
        <?php else: ?>
            <?php $this->assign('disable_convert_lead', ''); ?>
        <?php endif; ?>
        <td>
            <input type='hidden' name='disable_convert_lead' value='false'>
            <input name='disable_convert_lead'  type="checkbox" value="true" <?php echo $this->_tpl_vars['disable_convert_lead']; ?>
>
        </td>
        <td colspan="2">&nbsp;</td>
    </tr>

    <tr>
        <td  scope="row" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_ENABLE_ACTION_MENU']; ?>
: &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_ENABLE_ACTION_MENU_DESC']), $this);?>
</td>
    <?php if (isset ( $this->_tpl_vars['config']['enable_action_menu'] ) && $this->_tpl_vars['config']['enable_action_menu'] != 'true'): ?>
        <?php $this->assign('enable_action_menu', ''); ?>
        <?php else: ?>
        <?php $this->assign('enable_action_menu', 'CHECKED'); ?>
    <?php endif; ?>
        <td>
            <input type='hidden' name='enable_action_menu' value='false'>
            <input name='enable_action_menu'  type="checkbox" value="true" <?php echo $this->_tpl_vars['enable_action_menu']; ?>
>
        </td>
        <td colspan="2">&nbsp;</td>
    </tr>

    <tr>
        <td  scope="row" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_ENABLE_INLINE_EDITING_LIST']; ?>
: &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_ENABLE_INLINE_EDITING_LIST_DESC']), $this);?>
</td>
        <?php if (isset ( $this->_tpl_vars['config']['enable_line_editing_list'] ) && $this->_tpl_vars['config']['enable_line_editing_list'] != 'true'): ?>
            <?php $this->assign('enable_line_editing_list', ''); ?>
        <?php else: ?>
            <?php $this->assign('enable_line_editing_list', 'CHECKED'); ?>
        <?php endif; ?>
        <td>
            <input type='hidden' name='enable_line_editing_list' value='false'>
            <input name='enable_line_editing_list'  type="checkbox" value="true" <?php echo $this->_tpl_vars['enable_line_editing_list']; ?>
>
        </td>
        <td  scope="row" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_ENABLE_INLINE_EDITING_DETAIL']; ?>
: &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_ENABLE_INLINE_EDITING_DETAIL_DESC']), $this);?>
</td>
        <?php if (isset ( $this->_tpl_vars['config']['enable_line_editing_detail'] ) && $this->_tpl_vars['config']['enable_line_editing_detail'] != 'true'): ?>
            <?php $this->assign('enable_line_editing_detail', ''); ?>
        <?php else: ?>
            <?php $this->assign('enable_line_editing_detail', 'CHECKED'); ?>
        <?php endif; ?>
        <td>
            <input type='hidden' name='enable_line_editing_detail' value='false'>
            <input name='enable_line_editing_detail' type="checkbox" value="true" <?php echo $this->_tpl_vars['enable_line_editing_detail']; ?>
>
        </td>
    </tr>


	<tr>
		<td  scope="row" nowrap><?php echo $this->_tpl_vars['MOD']['LBL_HIDE_SUBPANELS']; ?>
: &nbsp;<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_HIDE_SUBPANELS']), $this);?>
</td>
		<?php if (( isset ( $this->_tpl_vars['config']['hide_subpanels'] ) && $this->_tpl_vars['config']['hide_subpanels'] != 'true' ) || ! isset ( $this->_tpl_vars['config']['hide_subpanels'] )): ?>
			<?php $this->assign('hide_subpanels', ''); ?>
		<?php else: ?>
			<?php $this->assign('hide_subpanels', 'CHECKED'); ?>
		<?php endif; ?>
		<td>
			<input type='hidden' name='hide_subpanels' value='false'>
			<input name='hide_subpanels'  type="checkbox" value="true" <?php echo $this->_tpl_vars['hide_subpanels']; ?>
>
		</td>
	</tr>

</table>



<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">

	<tr>
	<th align="left" scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['LBL_PROXY_TITLE']; ?>
</h4></th>
	</tr>
	<tr>
	<td width="25%" scope="row" valign='middle'><?php echo $this->_tpl_vars['MOD']['LBL_PROXY_ON']; ?>
&nbsp<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_PROXY_ON_DESC']), $this);?>
</td>
		<?php if (! empty ( $this->_tpl_vars['settings']['proxy_on'] )): ?>
		<?php $this->assign('proxy_on_checked', 'CHECKED'); ?>
	<?php else: ?>
		<?php $this->assign('proxy_on_checked', ''); ?>
	<?php endif; ?>
	<td width="75%" align="left"  valign='middle' colspan='3'><input type='hidden' name='proxy_on' value='0'><input name="proxy_on" id="proxy_on" value="1" class="checkbox" tabindex='1' type="checkbox" <?php echo $this->_tpl_vars['proxy_on_checked']; ?>
 onclick='toggleDisplay_2("proxy_config_display")'></td>
	</tr><tr>
	<td colspan="4">
	<div id="proxy_config_display" style='display:<?php echo $this->_tpl_vars['PROXY_CONFIG_DISPLAY']; ?>
'>
		<table width="100%" cellpadding="0" cellspacing="1"><tr>
		<td width="15%" scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_PROXY_HOST']; ?>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></td>
		<td width="35%" ><input type="text" id="proxy_host" name="proxy_host" size="25"  value="<?php echo $this->_tpl_vars['settings']['proxy_host']; ?>
" tabindex='1' ></td>
		<td width="15%" scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_PROXY_PORT']; ?>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></td>
		<td width="35%" ><input type="text" id="proxy_port" name="proxy_port" size="6"  value="<?php echo $this->_tpl_vars['settings']['proxy_port']; ?>
" tabindex='1' ></td>
		</tr><tr>
		<td width="15%" scope="row" valign='middle'><?php echo $this->_tpl_vars['MOD']['LBL_PROXY_AUTH']; ?>
</td>
	<?php if (! empty ( $this->_tpl_vars['settings']['proxy_auth'] )): ?>
		<?php $this->assign('proxy_auth_checked', 'CHECKED'); ?>
	<?php else: ?>
		<?php $this->assign('proxy_auth_checked', ''); ?>
	<?php endif; ?>
		<td width="35%" align="left"  valign='middle' ><input type='hidden' name='proxy_auth' value='0'><input id="proxy_auth" name="proxy_auth" value="1" class="checkbox" tabindex='1' type="checkbox" <?php echo $this->_tpl_vars['proxy_auth_checked']; ?>
 onclick='toggleDisplay_2("proxy_auth_display")'> </td>
		</tr></table>

		<div id="proxy_auth_display" style='display:<?php echo $this->_tpl_vars['PROXY_AUTH_DISPLAY']; ?>
'>

		<table width="100%" cellpadding="0" cellspacing="1"><tr>
		<td width="15%" scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_PROXY_USERNAME']; ?>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></td>

		<td width="35%" ><input type="text" id="proxy_username" name="proxy_username" size="25"  value="<?php echo $this->_tpl_vars['settings']['proxy_username']; ?>
" tabindex='1' ></td>
		<td width="15%" scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_PROXY_PASSWORD']; ?>
<span class="required"><?php echo $this->_tpl_vars['APP']['LBL_REQUIRED_SYMBOL']; ?>
</span></td>
		<td width="35%" ><input type="password" id="proxy_password" name="proxy_password" size="25"  value="<?php echo $this->_tpl_vars['settings']['proxy_password']; ?>
" tabindex='1' ></td>
		</tr></table>
		</div>
	</div>
  </td>
  </tr>
 </table>


<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
	<tr>
	<th align="left" scope="row" colspan="4"><h4><?php echo $this->_tpl_vars['MOD']['ADVANCED']; ?>
</h4></th>
	</tr>
	<tr>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['VERIFY_CLIENT_IP']; ?>
: </td>
		<?php if (! empty ( $this->_tpl_vars['config']['verify_client_ip'] )): ?>
			<?php $this->assign('verify_client_ip_checked', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('verify_client_ip_checked', ''); ?>
		<?php endif; ?>
		<td  ><input type='hidden' name='verify_client_ip' value='false'><input name='verify_client_ip'  type="checkbox" value="1" <?php echo $this->_tpl_vars['verify_client_ip_checked']; ?>
></td>

		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LOG_MEMORY_USAGE']; ?>
: </td>
		<?php if (! empty ( $this->_tpl_vars['config']['log_memory_usage'] )): ?>
			<?php $this->assign('log_memory_usage_checked', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('log_memory_usage_checked', ''); ?>
		<?php endif; ?>
		<td  ><input type='hidden' name='log_memory_usage' value='false'><input name='log_memory_usage'  type="checkbox" value='true' <?php echo $this->_tpl_vars['log_memory_usage_checked']; ?>
></td>

	</tr>
	<tr>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LOG_SLOW_QUERIES']; ?>
: </td>
		<?php if (! empty ( $this->_tpl_vars['config']['dump_slow_queries'] )): ?>
			<?php $this->assign('dump_slow_queries_checked', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('dump_slow_queries_checked', ''); ?>
		<?php endif; ?>
		<td ><input type='hidden' name='dump_slow_queries' value='false'><input name='dump_slow_queries'  type="checkbox" value='true' <?php echo $this->_tpl_vars['dump_slow_queries_checked']; ?>
></td>

		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['SLOW_QUERY_TIME_MSEC']; ?>
: </td>
		<td  >
			<input type='text' size='5' name='slow_query_time_msec' value='<?php echo $this->_tpl_vars['config']['slow_query_time_msec']; ?>
'>
		</td>

	</tr>
	<tr>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['UPLOAD_MAX_SIZE']; ?>
: </td>
		<td  >
			<input type='text' size='8' name='upload_maxsize' value='<?php echo $this->_tpl_vars['config']['upload_maxsize']; ?>
'>
		</td>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['STACK_TRACE_ERRORS']; ?>
: </td>
		<?php if (! empty ( $this->_tpl_vars['config']['stack_trace_errors'] )): ?>
			<?php $this->assign('stack_trace_errors_checked', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('stack_trace_errors_checked', ''); ?>
		<?php endif; ?>
		<td ><input type='hidden' name='stack_trace_errors' value='false'><input name='stack_trace_errors'  type="checkbox" value='true' <?php echo $this->_tpl_vars['stack_trace_errors_checked']; ?>
></td>



	</tr>

	<tr>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['DEVELOPER_MODE']; ?>
: </td>
		<?php if (! empty ( $this->_tpl_vars['config']['developerMode'] )): ?>
			<?php $this->assign('developerModeChecked', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('developerModeChecked', ''); ?>
		<?php endif; ?>
		<td ><input type='hidden' name='developerMode' value='false'><input name='developerMode'  type="checkbox" value='true' <?php echo $this->_tpl_vars['developerModeChecked']; ?>
></td>
	</tr>
	<tr>
		<td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_VCAL_PERIOD']; ?>
 <?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['vCAL_HELP']), $this);?>
</td>
		<td >
			<input type='text' size='4' name='vcal_time' value='<?php echo $this->_tpl_vars['config']['vcal_time']; ?>
'>
		</td>
        <td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_IMPORT_MAX_RECORDS']; ?>
 <?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_IMPORT_MAX_RECORDS_HELP']), $this);?>
</td>
		<td >
			<input type='text' size='4' name='import_max_records_total_limit' value='<?php echo $this->_tpl_vars['config']['import_max_records_total_limit']; ?>
'>
		</td>

	</tr>



</table>

<table  width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
<?php if ($this->_tpl_vars['logger_visible']): ?>
<tr>
<th align="left" scope="row" colspan="6"><h4><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER']; ?>
</h4></th>
</tr>
	<tr>
		<td  scope="row" valign='middle'><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER_FILENAME']; ?>
</td>
		<td   valign='middle' >
			<input type='text' name = 'logger_file_name'  value="<?php echo $this->_tpl_vars['config']['logger']['file']['name']; ?>
">
			<div><span class="small"><?php echo $this->_tpl_vars['APP']['LBL_LOGGER_VALID_FILENAME_CHARACTERS']; ?>
</span></div>
		</td>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER_FILE_EXTENSION']; ?>
</td>
		<td ><input name ="logger_file_ext" type="text" size="5" value="<?php echo $this->_tpl_vars['config']['logger']['file']['ext']; ?>
"></td>
		<td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER_FILENAME_SUFFIX']; ?>
</td>
		<td ><select name = "logger_file_suffix" selected='<?php echo $this->_tpl_vars['config']['logger']['file']['suffix']; ?>
'><?php echo $this->_tpl_vars['filename_suffix']; ?>
</select></td>
	</tr>
	<tr>
		<td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER_MAX_LOG_SIZE']; ?>
 </td>
		<td > <input name="logger_file_maxSize" size="4" value="<?php echo $this->_tpl_vars['config']['logger']['file']['maxSize']; ?>
"></td>
		<td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER_DEFAULT_DATE_FORMAT']; ?>
</td>
		<td  ><input name ="logger_file_dateFormat" type="text" value="<?php echo $this->_tpl_vars['config']['logger']['file']['dateFormat']; ?>
"></td>
	</tr>
	<tr>
		<td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER_LOG_LEVEL']; ?>
 </td>
		<td > <select name="logger_level"><?php echo $this->_tpl_vars['log_levels']; ?>
</select></td>
		<td  scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_STACK_TRACE']; ?>
: </td>
		<?php if (! empty ( $this->_tpl_vars['config']['stackTrace'] )): ?>
			<?php $this->assign('stackTraceChecked', 'CHECKED'); ?>
		<?php else: ?>
			<?php $this->assign('stackTraceChecked', ''); ?>
		<?php endif; ?>
		<td ><input type='hidden' name='stackTrace' value='false'><input name='stackTrace'  type="checkbox" value='true' <?php echo $this->_tpl_vars['stackTraceChecked']; ?>
></td>
		<td scope="row"><?php echo $this->_tpl_vars['MOD']['LBL_LOGGER_MAX_LOGS']; ?>
 </td>
		<td > <input name="logger_file_maxLogs" value="<?php echo $this->_tpl_vars['config']['logger']['file']['maxLogs']; ?>
"></td>
	</tr>
<?php endif; ?>
	<tr>
	    <td><a href="index.php?module=Configurator&action=LogView" target="_blank"><?php echo $this->_tpl_vars['MOD']['LBL_LOGVIEW']; ?>
</a></td>
	</tr>
</table>


<div style="padding-top: 2px;">
<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" class="button primary"  type="submit" name="save" value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " class="button primary"/>
		&nbsp;<input title="<?php echo $this->_tpl_vars['MOD']['LBL_SAVE_BUTTON_TITLE']; ?>
"  class="button"  type="submit" name="restore" value="  <?php echo $this->_tpl_vars['MOD']['LBL_RESTORE_BUTTON_LABEL']; ?>
 " />
		&nbsp;<input title="<?php echo $this->_tpl_vars['MOD']['LBL_CANCEL_BUTTON_TITLE']; ?>
"  onclick="document.location.href='index.php?module=Administration&action=index'" class="button"  type="button" name="cancel" value="  <?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
  " />
</div>
<?php echo $this->_tpl_vars['JAVASCRIPT']; ?>


</form>
<div id='upload_panel' style="display:none">
    <form id="upload_form" name="upload_form" method="POST" action='index.php' enctype="multipart/form-data">
        <input type="file" id="my_file_company" name="file_1" size="20" onchange="uploadCheck(false)"/>
        <?php echo smarty_function_sugar_getimage(array('name' => 'sqsWait','ext' => ".gif",'alt' => $this->_tpl_vars['mod_strings']['LBL_LOADING'],'other_attributes' => 'id="loading_img_company" style="display:none" '), $this);?>

    </form>
</div>
<?php if ($this->_tpl_vars['error']['company_logo']): ?>
<script type='text/javascript'>
<?php echo '$(function(){alert(\''; ?>
<?php echo $this->_tpl_vars['error']['company_logo']; ?>
<?php echo '\');});'; ?>

</script>
<?php endif; ?>
<?php echo '
<script type=\'text/javascript\'>
function init_logo(){
    document.getElementById(\'upload_panel\').style.display="inline";
    document.getElementById(\'upload_panel\').style.position="absolute";
    YAHOO.util.Dom.setX(\'upload_panel\', YAHOO.util.Dom.getX(\'container_upload\'));
    YAHOO.util.Dom.setY(\'upload_panel\', YAHOO.util.Dom.getY(\'container_upload\')-5);
}
YAHOO.util.Event.onDOMReady(function(){
    init_logo();
});
function toggleDisplay_2(div_string){
    toggleDisplay(div_string);
    init_logo();
}
 function uploadCheck(quotes){
    //AJAX call for checking the file size and comparing with php.ini settings.
    var callback = {
        upload:function(r) {
            eval("var file_type = " + r.responseText);
            var forQuotes = file_type[\'forQuotes\'];
            document.getElementById(\'loading_img_\'+forQuotes).style.display="none";
            bad_image = SUGAR.language.get(\'Configurator\',(forQuotes == \'quotes\')?\'LBL_ALERT_TYPE_JPEG\':\'LBL_ALERT_TYPE_IMAGE\');
            switch(file_type[\'data\']){
                case \'other\':
                    alert(bad_image);
                    document.getElementById(\'my_file_\' + forQuotes).value=\'\';
                    break;
                case \'size\':
                    alert(SUGAR.language.get(\'Configurator\',\'LBL_ALERT_SIZE_RATIO\'));
                    document.getElementById(forQuotes + "_logo").value=file_type[\'path\'];
                    document.getElementById(forQuotes + "_logo_image").src=file_type[\'url\'];
                    break;
                case \'file_error\':
                    alert(SUGAR.language.get(\'Configurator\',\'ERR_ALERT_FILE_UPLOAD\'));
                    document.getElementById(\'my_file_\' + forQuotes).value=\'\';
                    break;
                //File good
                case \'ok\':
                    document.getElementById(forQuotes + "_logo").value=file_type[\'path\'];
                    document.getElementById(forQuotes + "_logo_image").src=file_type[\'url\'];
                    break;
                //error in getimagesize because unsupported type
                default:
                   alert(bad_image);
                   document.getElementById(\'my_file_\' + forQuotes).value=\'\';
            }
        },
        failure:function(r){
            alert(SUGAR.language.get(\'app_strings\',\'LBL_AJAX_FAILURE\'));
        }
    }
    document.getElementById("company_logo").value=\'\';
    document.getElementById(\'loading_img_company\').style.display="inline";
    var file_name = document.getElementById(\'my_file_company\').value;
    postData = \'&entryPoint=UploadFileCheck&forQuotes=false\';
    YAHOO.util.Connect.setForm(document.getElementById(\'upload_form\'), true,true);
    if(file_name){
        if(postData.substring(0,1) == \'&\'){
            postData=postData.substring(1);
        }
        YAHOO.util.Connect.asyncRequest(\'POST\', \'index.php\', callback, postData);
    }
}

</script>
'; ?>

<?php /* Smarty version 2.6.33, created on 2023-05-08 03:33:36
         compiled from custom/themes%5CSuiteP%5Cmodules/Calendar/tpls/settings.tpl */ ?>

<script type="text/javascript">
<?php echo '
function toggleDisplayTimeslots() {
	if (document.getElementById(\'display_timeslots\').checked) {
		$(".time_range_options_row").css(\'display\', \'\');
	} else {
		$(".time_range_options_row").css(\'display\', \'none\');
	}
}

$(function() {
	toggleDisplayTimeslots();
});

'; ?>

</script>
<div class="modal fade modal-calendar-settings" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
				<h4 class="modal-title"><?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_TITLE']; ?>
</h4>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<form name="settings" id="form_settings" method="POST" action="index.php?module=Calendar&action=SaveSettings">

						<div class="panel panel-default ">
							 <div class="panel-heading  panel-heading-collapse">
								<a id="subpanel_title_activities" class="" role="button" data-toggle="collapse" href="#subpanel_settings_settings">
									<div class="col-xs-10 col-sm-11 col-md-11">
										<div>
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_TITLE']; ?>

										</div>
									</div>
								</a>
							</div>
							<div id="subpanel_settings_settings" class="panel-body panel-collapse collapse in">
								<input type="hidden" name="view" value="<?php echo $this->_tpl_vars['view']; ?>
">
								<input type="hidden" name="day" value="<?php echo $this->_tpl_vars['day']; ?>
">
								<input type="hidden" name="month" value="<?php echo $this->_tpl_vars['month']; ?>
">
								<input type="hidden" name="year" value="<?php echo $this->_tpl_vars['year']; ?>
">

								<table class='table-responsive'>
									<tr>
										<td scope="row" valign="top" width="55%">
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_DISPLAY_TIMESLOTS']; ?>

										</td>
										<td width="45%">
											<input type="hidden" name="display_timeslots" value="">
											<input type="checkbox" id="display_timeslots" name="display_timeslots" <?php if ($this->_tpl_vars['display_timeslots']): ?>checked<?php endif; ?> value="1" tabindex="102" onchange="toggleDisplayTimeslots();">
										</td>
									</tr>
									<tr>
										<td scope="row" valign="top" width="55%">
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_DISPLAY_SHARED_CALENDAR_SEPARATE']; ?>

										</td>
										<td width="45%">
											<input type="hidden" name="shared_calendar_separate" value="">
											<input type="checkbox" id="shared_calendar_separate" name="shared_calendar_separate" <?php if ($this->_tpl_vars['shared_calendar_separate']): ?>checked<?php endif; ?> value="1" tabindex="102" >
										</td>
									</tr>
									<tr class="time_range_options_row">
										<td scope="row" valign="top">
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_TIME_STARTS']; ?>

										</td>
										<td>
											<div id="d_start_time_section">
												<select size="1" id="day_start_hours" name="day_start_hours" tabindex="102">
													<?php echo $this->_tpl_vars['TIME_START_HOUR_OPTIONS']; ?>

												</select>&nbsp;:

												<select size="1" id="day_start_minutes" name="day_start_minutes"  tabindex="102">
													<?php echo $this->_tpl_vars['TIME_START_MINUTES_OPTIONS']; ?>

												</select>
												&nbsp;
												<?php echo $this->_tpl_vars['TIME_START_MERIDIEM']; ?>

											</div>
										</td>
									</tr>
									<tr class="time_range_options_row">
										<td scope="row" valign="top">
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_TIME_ENDS']; ?>

										</td>
										<td>
											<div id="d_end_time_section">
												<select size="1" id="day_end_hours" name="day_end_hours" tabindex="102">
													<?php echo $this->_tpl_vars['TIME_END_HOUR_OPTIONS']; ?>

												</select>&nbsp;:

												<select size="1" id="day_end_minutes" name="day_end_minutes"  tabindex="102">
													<?php echo $this->_tpl_vars['TIME_END_MINUTES_OPTIONS']; ?>

												</select>
												&nbsp;
												<?php echo $this->_tpl_vars['TIME_END_MERIDIEM']; ?>

											</div>
										</td>
									</tr>
									<tr>
										<td scope="row" valign="top">
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_CALLS_SHOW']; ?>

										</td>
										<td>
											<select size="1" name="show_calls" tabindex="102">
												<option value='' <?php if (! $this->_tpl_vars['show_calls']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['MOD']['LBL_NO']; ?>
</option>
												<option value='true' <?php if ($this->_tpl_vars['show_calls']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['MOD']['LBL_YES']; ?>
</option>
											</select>
										</td>
									</tr>
									<tr>
										<td scope="row" valign="top">
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_TASKS_SHOW']; ?>

										</td>
										<td>
											<select size="1" name="show_tasks" tabindex="102">
												<option value='' <?php if (! $this->_tpl_vars['show_tasks']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['MOD']['LBL_NO']; ?>
</option>
												<option value='true' <?php if ($this->_tpl_vars['show_tasks']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['MOD']['LBL_YES']; ?>
</option>
											</select>
										</td>
									</tr>
									<tr>
										<td scope="row" valign="top">
											<?php echo $this->_tpl_vars['MOD']['LBL_SETTINGS_COMPLETED_SHOW']; ?>

										</td>
										<td>
											<select size="1" name="show_completed" tabindex="102">
												<option value='' <?php if (! $this->_tpl_vars['show_completed']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['MOD']['LBL_NO']; ?>
</option>
												<option value='true' <?php if ($this->_tpl_vars['show_completed']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['MOD']['LBL_YES']; ?>
</option>
											</select>
										</td>
									</tr>



								</table>
							</div>
						</div>

						<div class="panel panel-default ">
							<div class="panel-heading panel-heading-collapse">
								<a id="subpanel_title_activities" class="" role="button" data-toggle="collapse" href="#subpanel_settings_color">
									<div class="col-xs-10 col-sm-11 col-md-11">
										<div>
											<?php echo $this->_tpl_vars['MOD']['LBL_COLOR_SETTINGS']; ?>

										</div>
									</div>
								</a>
							</div>
							<div id="subpanel_settings_color" class="panel-body panel-collapse collapse in">
								<table class="table-responsive">
									<tr>
										<th>Module</th><th>Body</th><th>Border</th><th>Text</th>
									</tr>
									<?php $_from = $this->_tpl_vars['activity']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['def']):
?>
										<tr>
											<td><?php echo $this->_tpl_vars['def']['label']; ?>
</td>
											<td>
												<input type="text" id="<?php echo $this->_tpl_vars['name']; ?>
" name="activity[<?php echo $this->_tpl_vars['name']; ?>
][body]" class="color" value="<?php echo $this->_tpl_vars['def']['body']; ?>
" size="8" />
											</td>
											<td>
												<input type="text" id="<?php echo $this->_tpl_vars['name']; ?>
" name="activity[<?php echo $this->_tpl_vars['name']; ?>
][border]" class="color" value="<?php echo $this->_tpl_vars['def']['border']; ?>
" size="8" />
											</td>
											<td>
												<input type="text" id="<?php echo $this->_tpl_vars['name']; ?>
" name="activity[<?php echo $this->_tpl_vars['name']; ?>
][text]" class="color" value="<?php echo $this->_tpl_vars['def']['text']; ?>
" size="8" />
											</td>
										</tr>
									<?php endforeach; endif; unset($_from); ?>
								</table>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-default" type="button"><?php echo $this->_tpl_vars['MOD']['LBL_CANCEL_BUTTON']; ?>
</button>
				<button id="btn-save-settings" onclick="$('#form_settings).submit();" class="btn btn-danger" type="button"><?php echo $this->_tpl_vars['MOD']['LBL_APPLY_BUTTON']; ?>
</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>

<?php /* Smarty version 2.6.33, created on 2023-05-08 03:49:37
         compiled from cache/themes/SuiteP/modules/Users/Popup.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_getjspath', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 8, false),array('function', 'counter', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 72, false),array('function', 'sugar_translate', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 78, false),array('function', 'sugar_action_menu', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 110, false),array('function', 'sugar_evalcolumn_old', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 181, false),array('function', 'sugar_currency_format', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 183, false),array('function', 'multienum_to_array', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 198, false),array('function', 'sugar_field', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 204, false),array('modifier', 'default', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 76, false),array('modifier', 'lower', 'cache/themes/SuiteP/modules/Users/Popup.tpl', 78, false),)), $this); ?>

<?php $this->assign('alt_start', $this->_tpl_vars['navStrings']['start']); ?>
<?php $this->assign('alt_next', $this->_tpl_vars['navStrings']['next']); ?>
<?php $this->assign('alt_prev', $this->_tpl_vars['navStrings']['previous']); ?>
<?php $this->assign('alt_end', $this->_tpl_vars['navStrings']['end']); ?>


<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'include/javascript/sugar_3.js'), $this);?>
"></script>
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'include/javascript/popup_helper.js'), $this);?>
"></script>
<?php echo $this->_tpl_vars['STYLE_JS']; ?>

<script type="text/javascript">
	<?php echo $this->_tpl_vars['ASSOCIATED_JAVASCRIPT_DATA']; ?>


<?php echo '
function clearAll() {
   for(i=0; i < document.popup_query_form.length; i++) {
       if(/select/i.test(document.popup_query_form.elements[i].type)) {
          for(x=0; x < document.popup_query_form.elements[i].options.length; x++) {
             document.popup_query_form.elements[i].options[x].removeAttribute(\'selected\');
          }
       }
   }
}
'; ?>

</script>
<?php echo $this->_tpl_vars['SEARCH_FORM_HEADER']; ?>

<table cellpadding="0" cellspacing="0" border="0" width="100%" class="edit view">
<tr>
<td>
<form action="index.php" method="post" name="popup_query_form" id="popup_query_form">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr><td>
<?php echo $this->_tpl_vars['searchForm']; ?>

</td></tr>
<tr>
<td>
<input type="hidden" name="module" value="<?php echo $this->_tpl_vars['module']; ?>
" />
<input type="hidden" name="action" value="Popup" />
<input type="hidden" name="query" value="true" />
<input type="hidden" name="metadata" value="<?php echo $this->_tpl_vars['metadata']; ?>
" />
<input type="hidden" name="func_name" value="" />
<input type="hidden" name="request_data" value="<?php echo $this->_tpl_vars['request_data']; ?>
" />
<input type="hidden" name="populate_parent" value="false" />
<input type="hidden" name="hide_clear_button" value="true" />
<input type="hidden" name="record_id" value="" />
<?php echo $this->_tpl_vars['MODE']; ?>

<input type="submit" name="button" class="button" id="search_form_submit"
	title="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_BUTTON_TITLE']; ?>
"
	value="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_BUTTON_LABEL']; ?>
" />
<input type="reset" onclick="SUGAR.searchForm.clear_form(this.form); return false;" class="button" id="search_form_clear"
	title="<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_TITLE']; ?>
"
	value="<?php echo $this->_tpl_vars['APP']['LBL_CLEAR_BUTTON_LABEL']; ?>
"/>
</td>
<td align='right'></td>
</tr>
</table>
</form>
</td>
</tr>
</table>
<?php echo $this->_tpl_vars['jsLang']; ?>

<?php echo $this->_tpl_vars['LIST_HEADER']; ?>

<?php if ($this->_tpl_vars['should_process']): ?>
	<table cellpadding='0' cellspacing='0' width='100%' border='0' class='list view'>

		<thead>
		<tr height='20'>
			<?php if ($this->_tpl_vars['prerow']): ?>
				<th nowrap="nowrap" width="43px" class="selectCol td_alt"></th>
				<th class='td_alt' nowrap="nowrap" width='1%'>&nbsp;</th>
			<?php endif; ?>
			<?php echo smarty_function_counter(array('start' => 0,'name' => 'colCounter','print' => false,'assign' => 'colCounter'), $this);?>

			<?php $_from = $this->_tpl_vars['displayColumns']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['colHeader'] => $this->_tpl_vars['params']):
?>
				<?php if ($this->_tpl_vars['colCounter'] == '0'): ?><th scope='col'  data-toggle="true">
				<?php else: ?><th scope='col'  data-hide="phone,tablet"><?php endif; ?>
					<div style='white-space: normal; width:100%; text-align:<?php echo ((is_array($_tmp=@$this->_tpl_vars['params']['align'])) ? $this->_run_mod_handler('default', true, $_tmp, 'left') : smarty_modifier_default($_tmp, 'left')); ?>
'>
	                <?php if (((is_array($_tmp=@$this->_tpl_vars['params']['sortable'])) ? $this->_run_mod_handler('default', true, $_tmp, true) : smarty_modifier_default($_tmp, true))): ?>
                                <a href="<?php echo $this->_tpl_vars['pageData']['urls']['orderBy']; ?>
<?php echo ((is_array($_tmp=((is_array($_tmp=@$this->_tpl_vars['params']['orderBy'])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['colHeader']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['colHeader'])))) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)); ?>
" onclick='sListView.save_checks(0, "<?php echo $this->_tpl_vars['moduleString']; ?>
");' class='listViewThLinkS1'><?php echo smarty_function_sugar_translate(array('label' => $this->_tpl_vars['params']['label'],'module' => $this->_tpl_vars['pageData']['bean']['moduleDir']), $this);?>
&nbsp;&nbsp;
						<?php if (((is_array($_tmp=((is_array($_tmp=@$this->_tpl_vars['params']['orderBy'])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['colHeader']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['colHeader'])))) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)) == $this->_tpl_vars['pageData']['ordering']['orderBy']): ?>
							<?php if ($this->_tpl_vars['pageData']['ordering']['sortOrder'] == 'ASC'): ?>
                                <?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ALT_SORT_DESC'), $this);?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('arrowAlt', ob_get_contents());ob_end_clean(); ?>
								<span class="suitepicon suitepicon-action-sorting-descending"></span>
							<?php else: ?>
                                <?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ALT_SORT_ASC'), $this);?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('arrowAlt', ob_get_contents());ob_end_clean(); ?>
                                <?php ob_start(); ?>arrow_up.<?php echo $this->_tpl_vars['arrowExt']; ?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('imageName', ob_get_contents());ob_end_clean(); ?>
								<span class="suitepicon suitepicon-action-sorting-ascending"></span>
							<?php endif; ?>
						<?php else: ?>
                            <?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ALT_SORT'), $this);?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('arrowAlt', ob_get_contents());ob_end_clean(); ?>
                            <?php ob_start(); ?>arrow.<?php echo $this->_tpl_vars['arrowExt']; ?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('imageName', ob_get_contents());ob_end_clean(); ?>
							<span class="suitepicon suitepicon-action-sorting-none"></span>
						<?php endif; ?>
					<?php else: ?>
						<?php echo smarty_function_sugar_translate(array('label' => $this->_tpl_vars['params']['label'],'module' => $this->_tpl_vars['pageData']['bean']['moduleDir']), $this);?>

					<?php endif; ?>
					</div>
				</th>
				<?php echo smarty_function_counter(array('name' => 'colCounter'), $this);?>

			<?php endforeach; endif; unset($_from); ?>
			<?php if (! empty ( $this->_tpl_vars['quickViewLinks'] )): ?>
			<th class='td_alt' nowrap="nowrap" width='1%'>&nbsp;</th>
			<?php endif; ?>
		</tr>
		<tr class='pagination'  role='presentation'>
			<td colspan='<?php echo $this->_tpl_vars['colCount']+1; ?>
' align='right'>
				<table border='0' cellpadding='0' cellspacing='0' width='100%'>
					<tr>
						<td align='left' >
							<div>
								<?php echo smarty_function_sugar_action_menu(array('id' => $this->_tpl_vars['link_select_id'],'params' => $this->_tpl_vars['selectLink']), $this);?>

							</div>
						</td>
						<td  align='right' nowrap='nowrap'>
							<?php if ($this->_tpl_vars['pageData']['urls']['startPage']): ?>
								<button type='button' id='popupViewStartButton' title='<?php echo $this->_tpl_vars['navStrings']['start']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks(0, "<?php echo $this->_tpl_vars['moduleString']; ?>
");'<?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['startPage']; ?>
"' <?php endif; ?>>
									<span class="suitepicon suitepicon-action-first"></span>
								</button>
							<?php else: ?>
								<button type='button' id='popupViewStartButton' title='<?php echo $this->_tpl_vars['navStrings']['start']; ?>
' class='button' disabled>
									<span class="suitepicon suitepicon-action-first"></span>
								</button>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['pageData']['urls']['prevPage']): ?>
								<button type='button' id='popupViewPrevButton' title='<?php echo $this->_tpl_vars['navStrings']['previous']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks(<?php echo $this->_tpl_vars['pageData']['offsets']['prev']; ?>
, "<?php echo $this->_tpl_vars['moduleString']; ?>
")' <?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['prevPage']; ?>
"'<?php endif; ?>>
									<span class="suitepicon suitepicon-action-left"></span>
								</button>
							<?php else: ?>
								<button type='button' id='popupViewPrevButton' class='button' disabled title='<?php echo $this->_tpl_vars['navStrings']['previous']; ?>
'>
									<span class="suitepicon suitepicon-action-left"></span>
								</button>
							<?php endif; ?>
							<span class='pageNumbers'>(<?php if ($this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage'] == 0): ?>0<?php else: ?><?php echo $this->_tpl_vars['pageData']['offsets']['current']+1; ?>
<?php endif; ?> - <?php echo $this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage']; ?>
 <?php echo $this->_tpl_vars['navStrings']['of']; ?>
 <?php if ($this->_tpl_vars['pageData']['offsets']['totalCounted']): ?><?php echo $this->_tpl_vars['pageData']['offsets']['total']; ?>
<?php else: ?><?php echo $this->_tpl_vars['pageData']['offsets']['total']; ?>
<?php if ($this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage'] != $this->_tpl_vars['pageData']['offsets']['total']): ?>+<?php endif; ?><?php endif; ?>)</span>
							<?php if ($this->_tpl_vars['pageData']['urls']['nextPage']): ?>
								<button type='button' id='popupViewNextButton' title='<?php echo $this->_tpl_vars['navStrings']['next']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks(<?php echo $this->_tpl_vars['pageData']['offsets']['next']; ?>
, "<?php echo $this->_tpl_vars['moduleString']; ?>
")' <?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['nextPage']; ?>
"'<?php endif; ?>>
									<span class="suitepicon suitepicon-action-right"></span>
								</button>
							<?php else: ?>
								<button type='button' id='popupViewNextButton' class='button' title='<?php echo $this->_tpl_vars['navStrings']['next']; ?>
' disabled>
									<span class="suitepicon suitepicon-action-right"></span>
								</button>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['pageData']['urls']['endPage'] && $this->_tpl_vars['pageData']['offsets']['total'] != $this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage']): ?>
								<button type='button' id='popupViewEndButton' title='<?php echo $this->_tpl_vars['navStrings']['end']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks("end", "<?php echo $this->_tpl_vars['moduleString']; ?>
")' <?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['endPage']; ?>
"'<?php endif; ?>>
									<span class="suitepicon suitepicon-action-last"></span>
								</button>
							<?php elseif (! $this->_tpl_vars['pageData']['offsets']['totalCounted'] || $this->_tpl_vars['pageData']['offsets']['total'] == $this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage']): ?>
								<button type='button' id='popupViewEndButton' class='button' disabled title='<?php echo $this->_tpl_vars['navStrings']['end']; ?>
'>
									<span class="suitepicon suitepicon-action-last"></span>
								</button>
							<?php endif; ?>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		</thead>
		<tbody>
		<?php $_from = $this->_tpl_vars['data']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }$this->_foreach['rowIteration'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['rowIteration']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['id'] => $this->_tpl_vars['rowData']):
        $this->_foreach['rowIteration']['iteration']++;
?>
			<?php if ((1 & $this->_foreach['rowIteration']['iteration'])): ?>
				<?php $this->assign('_rowColor', $this->_tpl_vars['rowColor'][0]); ?>
			<?php else: ?>
				<?php $this->assign('_rowColor', $this->_tpl_vars['rowColor'][1]); ?>
			<?php endif; ?>
			<tr height='20' class='<?php echo $this->_tpl_vars['_rowColor']; ?>
S1'>
				<?php if ($this->_tpl_vars['prerow']): ?>
				<td width='1%' nowrap='nowrap'>
						<input onclick='sListView.check_item(this, document.MassUpdate)' type='checkbox' class='checkbox' name='mass[]' value='<?php echo $this->_tpl_vars['rowData']['ID']; ?>
'>
				</td>
				<td width='1%' nowrap='nowrap'>
						<?php echo $this->_tpl_vars['pageData']['additionalDetails'][$this->_tpl_vars['id']]; ?>

				</td>
				<?php endif; ?>
				<?php echo smarty_function_counter(array('start' => 0,'name' => 'colCounter','print' => false,'assign' => 'colCounter'), $this);?>

				<?php $_from = $this->_tpl_vars['displayColumns']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['col'] => $this->_tpl_vars['params']):
?>
					<td scope='row' align='<?php echo ((is_array($_tmp=@$this->_tpl_vars['params']['align'])) ? $this->_run_mod_handler('default', true, $_tmp, 'left') : smarty_modifier_default($_tmp, 'left')); ?>
' valign=top class='<?php echo $this->_tpl_vars['_rowColor']; ?>
S1' bgcolor='<?php echo $this->_tpl_vars['_bgColor']; ?>
'>
						<?php if ($this->_tpl_vars['params']['link'] && ! $this->_tpl_vars['params']['customCode']): ?>

							<<?php echo ((is_array($_tmp=@$this->_tpl_vars['pageData']['tag'][$this->_tpl_vars['id']][$this->_tpl_vars['params']['ACLTag']])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['pageData']['tag'][$this->_tpl_vars['id']]['MAIN']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['pageData']['tag'][$this->_tpl_vars['id']]['MAIN'])); ?>
 href='javascript:void(0)' onclick="send_back('<?php if ($this->_tpl_vars['params']['dynamic_module']): ?><?php echo $this->_tpl_vars['rowData'][$this->_tpl_vars['params']['dynamic_module']]; ?>
<?php else: ?><?php echo ((is_array($_tmp=@$this->_tpl_vars['params']['module'])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['pageData']['bean']['moduleDir']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['pageData']['bean']['moduleDir'])); ?>
<?php endif; ?>','<?php echo ((is_array($_tmp=@$this->_tpl_vars['rowData'][$this->_tpl_vars['params']['id']])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['rowData']['ID']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['rowData']['ID'])); ?>
');"><?php echo $this->_tpl_vars['rowData'][$this->_tpl_vars['col']]; ?>
</<?php echo ((is_array($_tmp=@$this->_tpl_vars['pageData']['tag'][$this->_tpl_vars['id']][$this->_tpl_vars['params']['ACLTag']])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['pageData']['tag'][$this->_tpl_vars['id']]['MAIN']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['pageData']['tag'][$this->_tpl_vars['id']]['MAIN'])); ?>
>

						<?php elseif ($this->_tpl_vars['params']['customCode']): ?>
							<?php echo smarty_function_sugar_evalcolumn_old(array('var' => $this->_tpl_vars['params']['customCode'],'rowData' => $this->_tpl_vars['rowData']), $this);?>

						<?php elseif ($this->_tpl_vars['params']['currency_format']): ?>
							<?php echo smarty_function_sugar_currency_format(array('var' => $this->_tpl_vars['rowData'][$this->_tpl_vars['col']],'round' => $this->_tpl_vars['params']['currency_format']['round'],'decimals' => $this->_tpl_vars['params']['currency_format']['decimals'],'symbol' => $this->_tpl_vars['params']['currency_format']['symbol'],'convert' => $this->_tpl_vars['params']['currency_format']['convert'],'currency_symbol' => $this->_tpl_vars['params']['currency_format']['currency_symbol']), $this);?>

						<?php elseif ($this->_tpl_vars['params']['type'] == 'bool'): ?>
								<input type='checkbox' disabled=disabled class='checkbox'
								<?php if (! empty ( $this->_tpl_vars['rowData'][$this->_tpl_vars['col']] )): ?>
									checked=checked
								<?php endif; ?>
								/>
                        <?php elseif ($this->_tpl_vars['params']['type'] == 'multienum'): ?>
								<?php echo smarty_function_counter(array('name' => 'oCount','assign' => 'oCount','start' => 0), $this);?>

								<?php echo smarty_function_multienum_to_array(array('string' => $this->_tpl_vars['rowData'][$this->_tpl_vars['col']],'assign' => 'vals'), $this);?>

								<?php $_from = $this->_tpl_vars['vals']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
									<?php echo smarty_function_counter(array('name' => 'oCount'), $this);?>

									<?php echo smarty_function_sugar_translate(array('label' => $this->_tpl_vars['params']['options'],'select' => $this->_tpl_vars['item']), $this);?>
<?php if ($this->_tpl_vars['oCount'] != count ( $this->_tpl_vars['vals'] )): ?>,<?php endif; ?>
								<?php endforeach; endif; unset($_from); ?>
                        <?php else: ?>
                            <?php echo smarty_function_sugar_field(array('parentFieldArray' => $this->_tpl_vars['rowData'],'vardef' => $this->_tpl_vars['params'],'displayType' => 'ListView','field' => $this->_tpl_vars['col']), $this);?>

						<?php endif; ?>
					</td>
					<?php echo smarty_function_counter(array('name' => 'colCounter'), $this);?>

				<?php endforeach; endif; unset($_from); ?>

		<?php endforeach; endif; unset($_from); ?>
		</tbody>
		<tfoot>
		<tr class='pagination' role='presentation'>
			<td colspan='<?php echo $this->_tpl_vars['colCount']+1; ?>
' align='right'>
				<table border='0' cellpadding='0' cellspacing='0' width='100%'>
					<tr>
						<td align='left' >
							<div>
								<?php echo smarty_function_sugar_action_menu(array('id' => $this->_tpl_vars['link_select_id'],'params' => $this->_tpl_vars['selectLink']), $this);?>

							</div>
						</td>
						<td  align='right' nowrap='nowrap'>
							<?php if ($this->_tpl_vars['pageData']['urls']['startPage']): ?>
								<button type='button' title='<?php echo $this->_tpl_vars['navStrings']['start']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks(0, "<?php echo $this->_tpl_vars['moduleString']; ?>
");'<?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['startPage']; ?>
"' <?php endif; ?>>
									<span class="suitepicon suitepicon-action-first"></span>
								</button>
							<?php else: ?>
								<button type='button' title='<?php echo $this->_tpl_vars['navStrings']['start']; ?>
' class='button' disabled>
									<span class="suitepicon suitepicon-action-first"></span>
								</button>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['pageData']['urls']['prevPage']): ?>
								<button type='button' title='<?php echo $this->_tpl_vars['navStrings']['previous']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks(<?php echo $this->_tpl_vars['pageData']['offsets']['prev']; ?>
, "<?php echo $this->_tpl_vars['moduleString']; ?>
")' <?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['prevPage']; ?>
"'<?php endif; ?>>
									<span class="suitepicon suitepicon-action-left"></span>
								</button>
							<?php else: ?>
								<button type='button' class='button' disabled title='<?php echo $this->_tpl_vars['navStrings']['previous']; ?>
'>
									<span class="suitepicon suitepicon-action-left"></span>
								</button>
							<?php endif; ?>
							<span class='pageNumbers'>(<?php if ($this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage'] == 0): ?>0<?php else: ?><?php echo $this->_tpl_vars['pageData']['offsets']['current']+1; ?>
<?php endif; ?> - <?php echo $this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage']; ?>
 <?php echo $this->_tpl_vars['navStrings']['of']; ?>
 <?php if ($this->_tpl_vars['pageData']['offsets']['totalCounted']): ?><?php echo $this->_tpl_vars['pageData']['offsets']['total']; ?>
<?php else: ?><?php echo $this->_tpl_vars['pageData']['offsets']['total']; ?>
<?php if ($this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage'] != $this->_tpl_vars['pageData']['offsets']['total']): ?>+<?php endif; ?><?php endif; ?>)</span>
							<?php if ($this->_tpl_vars['pageData']['urls']['nextPage']): ?>
								<button type='button' title='<?php echo $this->_tpl_vars['navStrings']['next']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks(<?php echo $this->_tpl_vars['pageData']['offsets']['next']; ?>
, "<?php echo $this->_tpl_vars['moduleString']; ?>
")' <?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['nextPage']; ?>
"'<?php endif; ?>>
									<span class="suitepicon suitepicon-action-right"></span>
								</button>
							<?php else: ?>
								<button type='button' class='button' title='<?php echo $this->_tpl_vars['navStrings']['next']; ?>
' disabled>
									<span class="suitepicon suitepicon-action-right"></span>
								</button>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['pageData']['urls']['endPage'] && $this->_tpl_vars['pageData']['offsets']['total'] != $this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage']): ?>
								<button type='button' title='<?php echo $this->_tpl_vars['navStrings']['end']; ?>
' class='button' <?php if ($this->_tpl_vars['prerow']): ?>onclick='return sListView.save_checks(<?php echo $this->_tpl_vars['pageData']['offsets']['end']; ?>
, "<?php echo $this->_tpl_vars['moduleString']; ?>
")' <?php else: ?> onClick='location.href="<?php echo $this->_tpl_vars['pageData']['urls']['endPage']; ?>
"'<?php endif; ?>>
									<span class="suitepicon suitepicon-action-last"></span>
								</button>
							<?php elseif (! $this->_tpl_vars['pageData']['offsets']['totalCounted'] || $this->_tpl_vars['pageData']['offsets']['total'] == $this->_tpl_vars['pageData']['offsets']['lastOffsetOnPage']): ?>
								<button type='button' class='button' disabled title='<?php echo $this->_tpl_vars['navStrings']['end']; ?>
'>
									<span class="suitepicon suitepicon-action-last"></span>
								</button>
							<?php endif; ?>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		</tfoot>
	</table>
	<?php if ($this->_tpl_vars['prerow']): ?>
	<script>
	<?php echo 'function lvg_dtails(id){return SUGAR.util.getAdditionalDetails( \''; ?>
<?php echo $this->_tpl_vars['module']; ?>
<?php echo '\',id, \'adspan_\'+id);}'; ?>

	</script>
	<?php endif; ?>
<?php else: ?>
	<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_POPULATE_ONLY']; ?>

<?php endif; ?>

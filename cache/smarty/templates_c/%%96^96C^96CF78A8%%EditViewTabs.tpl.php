<?php /* Smarty version 2.6.33, created on 2023-05-04 06:03:45
         compiled from custom/themes%5CSuiteP%5Cmodules/Studio/TabGroups/EditViewTabs.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_getjspath', 'custom/themes\\SuiteP\\modules/Studio/TabGroups/EditViewTabs.tpl', 47, false),array('function', 'html_options', 'custom/themes\\SuiteP\\modules/Studio/TabGroups/EditViewTabs.tpl', 76, false),array('function', 'sugar_help', 'custom/themes\\SuiteP\\modules/Studio/TabGroups/EditViewTabs.tpl', 77, false),array('function', 'counter', 'custom/themes\\SuiteP\\modules/Studio/TabGroups/EditViewTabs.tpl', 97, false),)), $this); ?>


<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Studio/JSTransaction.js'), $this);?>
" ></script>
<script>
	var jstransaction = new JSTransaction();
</script>
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Studio/studiotabgroups.js'), $this);?>
"></script>
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Studio/ygDDListStudio.js'), $this);?>
"></script>
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Studio/studiodd.js'), $this);?>
" ></script>
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'modules/Studio/studio.js'), $this);?>
" ></script>
<?php echo '
<style type=\'text/css\'>

</style>
'; ?>

<h2 ><?php echo $this->_tpl_vars['title']; ?>
</h2>
<p><?php echo $this->_tpl_vars['MOD']['LBL_GROUP_TAB_WELCOME']; ?>
</p>

<table cellspacing=2>
<button class='button' style='cursor:default' onmousedown='this.className="buttonOn";return false;'
            onmouseup='this.className="button"' onmouseout='this.className="button"'
            onclick='studiotabs.generateForm("edittabs");document.edittabs.submit()'>
            <?php echo $this->_tpl_vars['MOD']['LBL_BTN_SAVEPUBLISH']; ?>
</button>
</table>
<p />
<form name='edittabs' id='edittabs' method='POST' action='index.php'>
<input type="hidden" name="slot_count" id="slot_count" value="" />
<table  cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
	<td width="100%" class='dataLabel' colspan=2>
	<?php echo $this->_tpl_vars['MOD']['LBL_TABGROUP_LANGUAGE']; ?>
&nbsp;
	<?php echo smarty_function_html_options(array('name' => 'grouptab_lang','options' => $this->_tpl_vars['available_languages'],'selected' => $this->_tpl_vars['tabGroupSelected_lang'],'onchange' => " tabLanguageChange(this)"), $this);?>

	<?php echo smarty_function_sugar_help(array('text' => $this->_tpl_vars['MOD']['LBL_TAB_GROUP_LANGUAGE_HELP']), $this);?>

	</td>
</tr>
</table>
<table><tr><td valign='top' nowrap class="edit view" >
<table  cellpadding="0" cellspacing="0" width="100%"   id='s_field_delete'>
							<tr><td ><ul id='trash' class='listContainer'>
<li class='nobullet' id='trashcan'><table>
  <tr>
	<td><?php echo $this->_tpl_vars['recycleImage']; ?>
</td>
	<td><?php echo $this->_tpl_vars['MOD']['LBL_DELETE_MODULE']; ?>
</td>
  </tr>
  </table></li>

</ul>
						</td></tr></table>


<div class='noBullet' style="padding-left: 20px;"><h2><?php echo $this->_tpl_vars['MOD']['LBL_MODULES']; ?>
</h2>
<ul class='listContainer'>
<?php echo smarty_function_counter(array('start' => 0,'name' => 'modCounter','print' => false,'assign' => 'modCounter'), $this);?>

<?php $_from = $this->_tpl_vars['availableModuleList']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['value']):
?>


<li  id='modSlot<?php echo $this->_tpl_vars['modCounter']; ?>
'><span class='slotB'><?php echo $this->_tpl_vars['value']['label']; ?>
</span></li>
<script>
tabLabelToValue['<?php echo $this->_tpl_vars['value']['label']; ?>
'] = '<?php echo $this->_tpl_vars['value']['value']; ?>
';
subtabModules['modSlot<?php echo $this->_tpl_vars['modCounter']; ?>
'] = '<?php echo $this->_tpl_vars['value']['label']; ?>
'</script>
<?php echo smarty_function_counter(array('name' => 'modCounter'), $this);?>

<?php endforeach; endif; unset($_from); ?>
</ul>
</td>
<td valign='top' nowrap>
<table class='tableContainer' id='groupTable'><tr>
<?php echo smarty_function_counter(array('start' => 0,'name' => 'tabCounter','print' => false,'assign' => 'tabCounter'), $this);?>


<?php $_from = $this->_tpl_vars['tabs']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['tabName'] => $this->_tpl_vars['tab']):
?>
<?php if ($this->_tpl_vars['tabCounter'] > 0 && $this->_tpl_vars['tabCounter'] % 6 == 0): ?>
</tr><tr>
<?php endif; ?>
<td valign='top' class='tdContainer'>
<div id='slot<?php echo $this->_tpl_vars['tabCounter']; ?>
' class='noBullet'><h2 id='handle<?php echo $this->_tpl_vars['tabCounter']; ?>
' ><span id='tabname_<?php echo $this->_tpl_vars['tabCounter']; ?>
' class='slotB'><?php echo $this->_tpl_vars['tab']['labelValue']; ?>
</span><span id='tabother_<?php echo $this->_tpl_vars['tabCounter']; ?>
'><span onclick='studiotabs.editTabGroupLabel(<?php echo $this->_tpl_vars['tabCounter']; ?>
, false)'><?php echo $this->_tpl_vars['editImage']; ?>
</span>&nbsp;
<?php if ($this->_tpl_vars['tab']['label'] != $this->_tpl_vars['otherLabel']): ?>
	<span onclick='studiotabs.deleteTabGroup(<?php echo $this->_tpl_vars['tabCounter']; ?>
)'><?php echo $this->_tpl_vars['deleteImage']; ?>
</span>
<?php endif; ?>
</span></h2><input type='hidden' name='tablabelid_<?php echo $this->_tpl_vars['tabCounter']; ?>
' id='tablabelid_<?php echo $this->_tpl_vars['tabCounter']; ?>
'  value='<?php echo $this->_tpl_vars['tab']['label']; ?>
'><input type='text' name='tablabel_<?php echo $this->_tpl_vars['tabCounter']; ?>
' id='tablabel_<?php echo $this->_tpl_vars['tabCounter']; ?>
' style='display:none' value='<?php echo $this->_tpl_vars['tab']['labelValue']; ?>
' onblur='studiotabs.editTabGroupLabel(<?php echo $this->_tpl_vars['tabCounter']; ?>
, true)'>
<ul id='ul<?php echo $this->_tpl_vars['tabCounter']; ?>
' class='listContainer'>
<?php echo smarty_function_counter(array('start' => 0,'name' => 'subtabCounter','print' => false,'assign' => 'subtabCounter'), $this);?>

<?php $_from = $this->_tpl_vars['tab']['modules']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['list'] => $this->_tpl_vars['name']):
?>

<li id='subslot<?php echo $this->_tpl_vars['tabCounter']; ?>
_<?php echo $this->_tpl_vars['subtabCounter']; ?>
' class='listStyle' name='<?php echo $this->_tpl_vars['list']; ?>
'><span class='slotB' ><?php echo $this->_tpl_vars['availableModuleList'][$this->_tpl_vars['list']]['label']; ?>
</span></li>
<script>subtabModules['subslot<?php echo $this->_tpl_vars['tabCounter']; ?>
_<?php echo $this->_tpl_vars['subtabCounter']; ?>
'] = '<?php echo $this->_tpl_vars['availableModuleList'][$this->_tpl_vars['list']]['label']; ?>
'</script>
<?php echo smarty_function_counter(array('name' => 'subtabCounter'), $this);?>

<?php endforeach; endif; unset($_from); ?>
<li class='noBullet' id='noselectbottom<?php echo $this->_tpl_vars['tabCounter']; ?>
'>&nbsp;</li>
<script>subtabCount[<?php echo $this->_tpl_vars['tabCounter']; ?>
] = <?php echo $this->_tpl_vars['subtabCounter']; ?>
;</script>
</ul>
</div>
<div id='slot<?php echo $this->_tpl_vars['tabCounter']; ?>
b'>
<input type='hidden' name='slot_<?php echo $this->_tpl_vars['tabCounter']; ?>
' id='slot_<?php echo $this->_tpl_vars['tabCounter']; ?>
' value ='<?php echo $this->_tpl_vars['tabCounter']; ?>
'>
<input type='hidden' name='delete_<?php echo $this->_tpl_vars['tabCounter']; ?>
' id='delete_<?php echo $this->_tpl_vars['tabCounter']; ?>
' value ='0'>
</div>
<?php echo smarty_function_counter(array('name' => 'tabCounter'), $this);?>

</td>
<?php endforeach; endif; unset($_from); ?>

</tr>
<tr><td><input type='button' class='button' onclick='addTabGroup()' value='<?php echo $this->_tpl_vars['MOD']['LBL_ADD_GROUP']; ?>
'></td></tr>
</table>

</td>
</table>



<span class='error'><?php echo $this->_tpl_vars['error']; ?>
</span>



<?php echo '


		<script>
		function tabLanguageChange(sel){
			var partURL = window.location.href;
			if(partURL.search(/&lang=\\w*&/i) != -1){
				partURL = partURL.replace(/&lang=\\w*&/i, \'&lang=\'+ sel.value+\'&\');
			}else if(partURL.search(/&lang=\\w*/i) != -1){
				partURL = partURL.replace(/&lang=\\w*/i, \'&lang=\'+ sel.value);
			}else{
				partURL = window.location.href + \'&lang=\'+ sel.value;
			}
			window.location.href = partURL;
		}

		function addTabGroup(){
			var table = document.getElementById(\'groupTable\');
		  	var rowIndex = table.rows.length - 1;
		  	var rowExists = false;
		  	for(var i = 0; i < rowIndex;i++){
		  		if(table.rows[i].cells.length < 6){
		  			rowIndex = i;
		  			rowExists = true;
		  		}
		  	}

		  	if(!rowExists)table.insertRow(rowIndex);
		  	cell = table.rows[rowIndex].insertCell(table.rows[rowIndex].cells.length);
		  	cell.className=\'tdContainer\';
		  	cell.vAlign=\'top\';
		  	var slotDiv = document.createElement(\'div\');
		  	slotDiv.id = \'slot\'+ slotCount;
		  	var header = document.createElement(\'h2\');
		  	header.id = \'handle\' + slotCount;
		  	headerSpan = document.createElement(\'span\');
		  	headerSpan.innerHTML = \''; ?>
<?php echo $this->_tpl_vars['TGMOD']['LBL_NEW_GROUP']; ?>
<?php echo '\';
		  	headerSpan.id = \'tabname_\' + slotCount;
		  	header.appendChild(headerSpan);
		  	headerSpan2 = document.createElement(\'span\');
		  	headerSpan2.id = \'tabother_\' + slotCount;
		  	subspan1 = document.createElement(\'span\');
		  	subspan1.slotCount=slotCount;
		  	subspan1.innerHTML = \'\';
		  	subspan1.onclick= function() {
		  		studiotabs.editTabGroupLabel(this.slotCount, false);
		  	};
		  	subspan2 = document.createElement(\'span\');
		  	subspan2.slotCount=slotCount;
		  	subspan2.innerHTML = \''; ?>
<?php echo $this->_tpl_vars['deleteImage']; ?>
<?php echo '&nbsp;\';
		  	subspan2.onclick= function(){
		  		studiotabs.deleteTabGroup(this.slotCount);
		  	};
		  	headerSpan2.appendChild(subspan1);
		  	headerSpan2.appendChild(subspan2);

		  	var editLabel = document.createElement(\'input\');
		  	editLabel.style.display = \'none\';
		  	editLabel.type = \'text\';
		  	editLabel.value = \''; ?>
<?php echo $this->_tpl_vars['TGMOD']['LBL_NEW_GROUP']; ?>
<?php echo '\';
		  	editLabel.id = \'tablabel_\' + slotCount;
		  	editLabel.name = \'tablabel_\' + slotCount;
		  	editLabel.slotCount = slotCount;
		  	editLabel.onblur = function(){
		  		studiotabs.editTabGroupLabel(this.slotCount, true);
		  	}

		  	var list = document.createElement(\'ul\');
		  	list.id = \'ul\' + slotCount;
		  	list.className = \'listContainer\';
		  	header.appendChild(headerSpan2);
		  	var li = document.createElement(\'li\');
		  	li.id = \'noselectbottom\' + slotCount;
		  	li.className = \'noBullet\';
		  	li.innerHTML = \''; ?>
<?php echo $this->_tpl_vars['TGMOD']['LBL_DROP_HERE']; ?>
<?php echo '\';
		  	list.appendChild(li);

		  	slotDiv.appendChild(header);
		  	slotDiv.appendChild(editLabel);
		  	slotDiv.appendChild(list);
			var slotB = document.createElement(\'div\');
		  	slotB.id = \'slot\' + slotCount + \'b\';
		  	var slot = document.createElement(\'input\');
		  	slot.type = \'hidden\';
		  	slot.id =  \'slot_\' + slotCount;
		  	slot.name =  \'slot_\' + slotCount;
		  	slot.value = slotCount;
		  	var deleteSlot = document.createElement(\'input\');
		  	deleteSlot.type = \'hidden\';
		  	deleteSlot.id =  \'delete_\' + slotCount;
		  	deleteSlot.name =  \'delete_\' + slotCount;
		  	deleteSlot.value = 0;
		  	slotB.appendChild(slot);
		  	slotB.appendChild(deleteSlot);
		  	cell.appendChild(slotDiv);
		  	cell.appendChild(slotB);

		  	yahooSlots["slot" + slotCount] = new ygDDSlot("slot" + slotCount, "mainTabs");
			yahooSlots["slot" + slotCount].setHandleElId("handle" + slotCount);
		  	yahooSlots["noselectbottom"+ slotCount] = new ygDDListStudio("noselectbottom"+ slotCount , "subTabs", -1);
		  	subtabCount[slotCount] = 0;
		  	slotCount++;
		  	ygDDListStudio.prototype.updateTabs();
		}

		var slotCount = '; ?>
<?php echo $this->_tpl_vars['tabCounter']; ?>
<?php echo ';
		var modCount = '; ?>
<?php echo $this->_tpl_vars['modCounter']; ?>
<?php echo ';
		var subSlots = [];
		var yahooSlots = [];

		function dragDropInit(){

			YAHOO.util.DDM.mode = YAHOO.util.DDM.POINT;

			for(mj = 0; mj <= slotCount; mj++){
				yahooSlots["slot" + mj] = new ygDDSlot("slot" + mj, "mainTabs");
				yahooSlots["slot" + mj].setHandleElId("handle" + mj);

				yahooSlots["noselectbottom"+ mj] = new ygDDListStudio("noselectbottom"+ mj , "subTabs", -1);
				for(msi = 0; msi <= subtabCount[mj]; msi++){
					yahooSlots["subslot"+ mj + \'_\' + msi] = new ygDDListStudio("subslot"+ mj + \'_\' + msi, "subTabs", 0);

				}

			}
			for(msi = 0; msi <= modCount ; msi++){
					yahooSlots["modSlot"+ msi] = new ygDDListStudio("modSlot" + msi, "subTabs", 1);

			}
			var trash1  = new ygDDListStudio("trashcan" , "subTabs", \'trash\');
			ygDDListStudio.prototype.updateTabs();

		}

		YAHOO.util.DDM.mode = YAHOO.util.DDM.INTERSECT;
		YAHOO.util.Event.addListener(window, "load", dragDropInit);

</script>
'; ?>

	<input type='hidden' name='action' value='SaveTabs'>
	<input type='hidden' name='module' value='Studio'>
</form>


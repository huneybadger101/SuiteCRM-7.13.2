

{if $fields.recurring_source.value != '' && $fields.recurring_source.value != 'Sugar'}
<div class="clear"></div>
<div class="error">{$MOD.LBL_SYNCED_RECURRING_MSG}</div>
{/if}
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">&nbsp;</div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='DEFAULT' module='Meetings'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="DEFAULT">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SUBJECT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SUBJECT' module='Meetings'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="name" field="name"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if}
<input type='text' name='{$fields.name.name}'
id='{$fields.name.name}' size='30'
maxlength='50'        value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="status">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_STATUS">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Meetings'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
{counter name="panelFieldCount" print=false}

<select name="{$fields.status.name}"
id="{$fields.status.name}"
title=''              
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
&nbsp;
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="date_start">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_DATE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE' module='Meetings'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="datetimecombo" field="date_start"  >
{counter name="panelFieldCount" print=false}

<table border="0" cellpadding="0" cellspacing="0" class="dateTime">
<tr valign="middle">
<td nowrap class="dateTimeComboColumn">
<input autocomplete="off" type="text" id="{$fields.date_start.name}_date" class="datetimecombo_date" value="{$fields[$fields.date_start.name].value}" size="11" maxlength="10" title='' tabindex="0" onblur="combo_{$fields.date_start.name}.update();" onchange="combo_{$fields.date_start.name}.update(); SugarWidgetScheduler.update_time();"    >
<button type="button" id="{$fields.date_start.name}_trigger" class="btn btn-danger" onclick="return false;"><span class="suitepicon suitepicon-module-calendar"  alt="{$APP.LBL_ENTER_DATE}"></span></button>
</td>
<td nowrap class="dateTimeComboColumn">
<div id="{$fields.date_start.name}_time_section" class="datetimecombo_time_section"></div>
</td>
</tr>
</table>
<input type="hidden" class="DateTimeCombo" id="{$fields.date_start.name}" name="{$fields.date_start.name}" value="{$fields[$fields.date_start.name].value}">
<script type="text/javascript" src="{sugar_getjspath file="include/SugarFields/Fields/Datetimecombo/Datetimecombo.js"}"></script>
<script type="text/javascript">
var combo_{$fields.date_start.name} = new Datetimecombo("{$fields[$fields.date_start.name].value}", "{$fields.date_start.name}", "{$TIME_FORMAT}", "0", '', false, true);
//Render the remaining widget fields
text = combo_{$fields.date_start.name}.html('SugarWidgetScheduler.update_time();');
document.getElementById('{$fields.date_start.name}_time_section').innerHTML = text;

//Call eval on the update function to handle updates to calendar picker object
eval(combo_{$fields.date_start.name}.jsscript('SugarWidgetScheduler.update_time();'));

addToValidateBinaryDependency('{$form_name}',"{$fields.date_start.name}_hours", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_HOURS}" ,"{$fields.date_start.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.date_start.name}_minutes", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MINUTES}" ,"{$fields.date_start.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.date_start.name}_meridiem", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MERIDIEM}","{$fields.date_start.name}_date");

YAHOO.util.Event.onDOMReady(function()
{ldelim}

	Calendar.setup ({ldelim}
	onClose : update_{$fields.date_start.name},
	inputField : "{$fields.date_start.name}_date",
    form : "CalendarEditView",
	ifFormat : "{$CALENDAR_FORMAT}",
	daFormat : "{$CALENDAR_FORMAT}",
	button : "{$fields.date_start.name}_trigger",
	singleClick : true,
	step : 1,
	weekNumbers: false,
        startWeekday: {$CALENDAR_FDOW|default:'0'},
	comboObject: combo_{$fields.date_start.name}
	{rdelim});

	//Call update for first time to round hours and minute values
	combo_{$fields.date_start.name}.update(false);

{rdelim}); 
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="parent_name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_LIST_RELATED_TO">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_LIST_RELATED_TO' module='Meetings'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="parent" field="parent_name"  >
{counter name="panelFieldCount" print=false}

<select name='parent_type' tabindex="0" id='parent_type' title=''  onchange='document.{$form_name}.{$fields.parent_name.name}.value="";document.{$form_name}.parent_id.value=""; changeParentQS("{$fields.parent_name.name}"); checkParentType(document.{$form_name}.parent_type.value, document.{$form_name}.btn_{$fields.parent_name.name});'>
{html_options options=$fields.parent_name.options selected=$fields.parent_type.value sortoptions=true}
</select>
{if empty($fields.parent_name.options[$fields.parent_type.value])}
{assign var="keepParent" value = 0}
{else}
{assign var="keepParent" value = 1}
{/if}
<input type="text" name="{$fields.parent_name.name}" id="{$fields.parent_name.name}" class="sqsEnabled" tabindex="0"
size="" {if $keepParent}value="{$fields.parent_name.value}"{/if} autocomplete="off"><input type="hidden" name="{$fields.parent_id.name}" id="{$fields.parent_id.name}"  
{if $keepParent}value="{$fields.parent_id.value}"{/if}>
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.parent_name.name}" id="btn_{$fields.parent_name.name}" tabindex="0"	
title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(document.{$form_name}.parent_type.value, 600, 400, "", true, false, {literal}{"call_back_function":"set_return","form_name":"CalendarEditView","field_to_name_array":{"id":"parent_id","name":"parent_name"}}{/literal}, "single", true);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.parent_name.name}" id="btn_clr_{$fields.parent_name.name}" tabindex="0" title="{sugar_translate label=""}" class="button lastChild" onclick="this.form.{$fields.parent_name.name}.value = ''; this.form.{$fields.parent_id.name}.value = '';" value="{sugar_translate label=""}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
{literal}
<script type="text/javascript">
if (typeof(changeParentQS) == 'undefined'){
function changeParentQS(field) {
    if(typeof sqs_objects == 'undefined') {
       return;
    }
	field = YAHOO.util.Dom.get(field);
    var form = field.form;
    var sqsId = form.id + "_" + field.id;
    var typeField =  form.elements.parent_type;
    var new_module = typeField.value;
    //Update the SQS globals to reflect the new module choice
    if (typeof(QSFieldsArray[sqsId]) != 'undefined')
    {
        QSFieldsArray[sqsId].sqs.modules = new Array(new_module);
    }
	if(typeof QSProcessedFieldsArray != 'undefined')
    {
	   QSProcessedFieldsArray[sqsId] = false;
    }
    if(sqs_objects[sqsId] == undefined){
    	return;
    }
    sqs_objects[sqsId]["modules"] = new Array(new_module);
    if(typeof(disabledModules) != 'undefined' && typeof(disabledModules[new_module]) != 'undefined') {
		sqs_objects[sqsId]["disable"] = true;
		field.readOnly = true;
	} else {
		sqs_objects[sqsId]["disable"] = false;
		field.readOnly = false;
    }
    enableQS(false);
}}
</script>
<script>var disabledModules=[];</script>
<script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['CalendarEditView_parent_name']={"form":"CalendarEditView","method":"query","modules":["{/literal}{if !empty($fields.parent_type.value)}{$fields.parent_type.value}{else}Accounts{/if}{literal}"],"group":"or","field_list":["name","id"],"populate_list":["parent_name","parent_id"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>
<script>
//change this in case it wasn't the default on editing existing items.
$(document).ready(function(){
	changeParentQS("parent_name")
});
</script>
{/literal}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="date_end">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_DATE_END">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_END' module='Meetings'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="datetimecombo" field="date_end"  >
{counter name="panelFieldCount" print=false}

<table border="0" cellpadding="0" cellspacing="0" class="dateTime">
<tr valign="middle">
<td nowrap class="dateTimeComboColumn">
<input autocomplete="off" type="text" id="{$fields.date_end.name}_date" class="datetimecombo_date" value="{$fields[$fields.date_end.name].value}" size="11" maxlength="10" title='' tabindex="0" onblur="combo_{$fields.date_end.name}.update();" onchange="combo_{$fields.date_end.name}.update(); SugarWidgetScheduler.update_time();"    >
<button type="button" id="{$fields.date_end.name}_trigger" class="btn btn-danger" onclick="return false;"><span class="suitepicon suitepicon-module-calendar"  alt="{$APP.LBL_ENTER_DATE}"></span></button>
</td>
<td nowrap class="dateTimeComboColumn">
<div id="{$fields.date_end.name}_time_section" class="datetimecombo_time_section"></div>
</td>
</tr>
</table>
<input type="hidden" class="DateTimeCombo" id="{$fields.date_end.name}" name="{$fields.date_end.name}" value="{$fields[$fields.date_end.name].value}">
<script type="text/javascript" src="{sugar_getjspath file="include/SugarFields/Fields/Datetimecombo/Datetimecombo.js"}"></script>
<script type="text/javascript">
var combo_{$fields.date_end.name} = new Datetimecombo("{$fields[$fields.date_end.name].value}", "{$fields.date_end.name}", "{$TIME_FORMAT}", "0", '', false, true);
//Render the remaining widget fields
text = combo_{$fields.date_end.name}.html('SugarWidgetScheduler.update_time();');
document.getElementById('{$fields.date_end.name}_time_section').innerHTML = text;

//Call eval on the update function to handle updates to calendar picker object
eval(combo_{$fields.date_end.name}.jsscript('SugarWidgetScheduler.update_time();'));

addToValidateBinaryDependency('{$form_name}',"{$fields.date_end.name}_hours", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_HOURS}" ,"{$fields.date_end.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.date_end.name}_minutes", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MINUTES}" ,"{$fields.date_end.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.date_end.name}_meridiem", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MERIDIEM}","{$fields.date_end.name}_date");

YAHOO.util.Event.onDOMReady(function()
{ldelim}

	Calendar.setup ({ldelim}
	onClose : update_{$fields.date_end.name},
	inputField : "{$fields.date_end.name}_date",
    form : "CalendarEditView",
	ifFormat : "{$CALENDAR_FORMAT}",
	daFormat : "{$CALENDAR_FORMAT}",
	button : "{$fields.date_end.name}_trigger",
	singleClick : true,
	step : 1,
	weekNumbers: false,
        startWeekday: {$CALENDAR_FDOW|default:'0'},
	comboObject: combo_{$fields.date_end.name}
	{rdelim});

	//Call update for first time to round hours and minute values
	combo_{$fields.date_end.name}.update(false);

{rdelim}); 
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="location">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_LOCATION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_LOCATION' module='Meetings'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="location"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.location.value) <= 0}
{assign var="value" value=$fields.location.default_value }
{else}
{assign var="value" value=$fields.location.value }
{/if}
<input type='text' name='{$fields.location.name}'
id='{$fields.location.name}' size='30'
maxlength='50'        value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="duration">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_DURATION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DURATION' module='Meetings'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="duration"  >
{counter name="panelFieldCount"  print=false}

<select name="{$fields.duration.name}"
id="{$fields.duration.name}"
title=''              
>
{if isset($fields.duration.value) && $fields.duration.value != ''}
{html_options options=$fields.duration.options selected=$fields.duration.value}
{else}
{html_options options=$fields.duration.options selected=$fields.duration.default}
{/if}
</select>
<input tabindex="0"  id="duration_hours" name="duration_hours" type="hidden" value="{$fields.duration_hours.value}">
<input tabindex="0"  id="duration_minutes" name="duration_minutes" type="hidden" value="{$fields.duration_minutes.value}">
{sugar_getscript file="modules/Meetings/duration_dependency.js"}
<script type="text/javascript">
                    var date_time_format = "{$CALENDAR_FORMAT}";
                    {literal}
                    SUGAR.util.doWhen(function(){return typeof DurationDependency != "undefined" && typeof document.getElementById("duration") != "undefined"}, function(){
                        var duration_dependency = new DurationDependency("date_start","date_end","duration",date_time_format);
                        initEditView(YAHOO.util.Selector.query('select#duration')[0].form);
                    });
                    {/literal}
                </script>            
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item" data-field="reminders">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_REMINDERS">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_REMINDERS' module='Meetings'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="function" field="reminders"  >
{counter name="panelFieldCount"  print=false}
{include file="modules/Reminders/tpls/reminders.tpl"}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="assigned_user_name">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_ASSIGNED_TO_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='Meetings'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name" colspan='3' >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"CalendarEditView","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="description">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_DESCRIPTION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='Meetings'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="description" colspan='3' >
{counter name="panelFieldCount" print=false}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
    rows="6"
    cols="80"
    title='' tabindex="0" 
     >{$value}</textarea>
{literal}{/literal}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>
</div>
</div>

<script type="text/javascript">
YAHOO.util.Event.onContentReady("CalendarEditView",
    function () {ldelim} initEditView(document.forms.CalendarEditView) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
{literal}
<script type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
        $('#EditView_tabs div.panel-content div.panel').hide();
        $('#EditView_tabs div.panel-content div.panel.tab-panel-' + tab).show()
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^tab-content-(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]').click(function(e){
            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(?<number>(.)*)$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse-edit"]').click(function(e){
            if($(this).hasClass('collapsed')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass('collapsed');
                // Expand .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').addClass('in');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass('collapsed');
                // Collapse .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').removeClass('in');
            }
        });
    });

    </script>
{/literal}{literal}
<script type="text/javascript">
addForm('CalendarEditView');addToValidate('CalendarEditView', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_SUBJECT' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('CalendarEditView', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('CalendarEditView', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'accept_status', 'varchar', false,'{/literal}{sugar_translate label='LBL_ACCEPT_STATUS' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'set_accept_links', 'varchar', false,'{/literal}{sugar_translate label='LBL_ACCEPT_LINK' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'location', 'varchar', false,'{/literal}{sugar_translate label='LBL_LOCATION' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'password', 'varchar', false,'{/literal}{sugar_translate label='LBL_PASSWORD' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'join_url', 'varchar', false,'{/literal}{sugar_translate label='LBL_URL' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'host_url', 'varchar', false,'{/literal}{sugar_translate label='LBL_HOST_URL' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'displayed_url', 'url', false,'{/literal}{sugar_translate label='LBL_DISPLAYED_URL' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'creator', 'varchar', false,'{/literal}{sugar_translate label='LBL_CREATOR' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'external_id', 'varchar', false,'{/literal}{sugar_translate label='LBL_EXTERNALID' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'duration_hours', 'int', true,'{/literal}{sugar_translate label='LBL_DURATION_HOURS' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'duration_minutes', 'int', false,'{/literal}{sugar_translate label='LBL_DURATION_MINUTES' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'date_start_date', 'date', true,'Start Date' );
addToValidateDateBefore('CalendarEditView', 'date_start', 'datetimecombo', true,'{/literal}{sugar_translate label='LBL_DATE' module='Meetings' for_js=true}{literal}', 'date_end' );
addToValidate('CalendarEditView', 'date_end_date', 'date', true,'End Date' );
addToValidate('CalendarEditView', 'parent_type', 'parent_type', false,'{/literal}{sugar_translate label='LBL_PARENT_TYPE' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'status', 'enum', false,'{/literal}{sugar_translate label='LBL_STATUS' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'type', 'enum', false,'{/literal}{sugar_translate label='LBL_TYPE' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'direction', 'enum', false,'{/literal}{sugar_translate label='LBL_DIRECTION' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'parent_id', 'id', false,'{/literal}{sugar_translate label='LBL_PARENT_ID' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'reminder_checked', 'bool', false,'{/literal}{sugar_translate label='LBL_REMINDER' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'reminder_time', 'enum', false,'{/literal}{sugar_translate label='LBL_REMINDER_TIME' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'email_reminder_checked', 'bool', false,'{/literal}{sugar_translate label='LBL_EMAIL_REMINDER' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'email_reminder_time', 'enum', false,'{/literal}{sugar_translate label='LBL_EMAIL_REMINDER_TIME' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'email_reminder_sent', 'bool', false,'{/literal}{sugar_translate label='LBL_EMAIL_REMINDER_SENT' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'reminders', 'function', false,'{/literal}{sugar_translate label='LBL_REMINDERS' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'outlook_id', 'varchar', false,'{/literal}{sugar_translate label='LBL_OUTLOOK_ID' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'sequence', 'int', false,'{/literal}{sugar_translate label='LBL_SEQUENCE' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'contact_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CONTACT_NAME' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'parent_name', 'parent', false,'{/literal}{sugar_translate label='LBL_LIST_RELATED_TO' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'repeat_type', 'enum', false,'{/literal}{sugar_translate label='LBL_REPEAT_TYPE' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'repeat_interval', 'int', false,'{/literal}{sugar_translate label='LBL_REPEAT_INTERVAL' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'repeat_dow', 'varchar', false,'{/literal}{sugar_translate label='LBL_REPEAT_DOW' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'repeat_until', 'date', false,'{/literal}{sugar_translate label='LBL_REPEAT_UNTIL' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'repeat_count', 'int', false,'{/literal}{sugar_translate label='LBL_REPEAT_COUNT' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'repeat_parent_id', 'id', false,'{/literal}{sugar_translate label='LBL_REPEAT_PARENT_ID' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'recurring_source', 'varchar', false,'{/literal}{sugar_translate label='LBL_RECURRING_SOURCE' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'duration', 'enum', false,'{/literal}{sugar_translate label='LBL_DURATION' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'gsync_id', 'varchar', false,'{/literal}{sugar_translate label='LBL_GSYNC_ID' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'gsync_lastsync', 'int', false,'{/literal}{sugar_translate label='LBL_GSYNC_LASTSYNC' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'jjwg_maps_address_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_JJWG_MAPS_ADDRESS' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'jjwg_maps_geocode_status_c', 'varchar', false,'{/literal}{sugar_translate label='LBL_JJWG_MAPS_GEOCODE_STATUS' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'jjwg_maps_lat_c', 'float', false,'{/literal}{sugar_translate label='LBL_JJWG_MAPS_LAT' module='Meetings' for_js=true}{literal}' );
addToValidate('CalendarEditView', 'jjwg_maps_lng_c', 'float', false,'{/literal}{sugar_translate label='LBL_JJWG_MAPS_LNG' module='Meetings' for_js=true}{literal}' );
addToValidateBinaryDependency('CalendarEditView', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='Meetings' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='Meetings' for_js=true}{literal}', 'assigned_user_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['CalendarEditView_parent_name']={"form":"CalendarEditView","method":"query","modules":["Accounts"],"group":"or","field_list":["name","id"],"populate_list":["parent_name","parent_id"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['CalendarEditView_assigned_user_name']={"form":"CalendarEditView","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};</script>{/literal}

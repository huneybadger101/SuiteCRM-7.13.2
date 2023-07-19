<?php /* Smarty version 2.6.33, created on 2023-04-17 15:45:04
         compiled from modules/AOP_Case_Updates/tpl/caseUpdateForm.tpl */ ?>
<button id="addFileButton" class="button primary" type="button"><?php echo $this->_tpl_vars['MOD']['LBL_ADD_CASE_FILE']; ?>
</button>
<?php echo '
<script>
    $(document).ready(function(){
        var docCount = 0;
        $(document).on(\'change\',\'.caseDocumentTypeSelect\',function(){
            var wrapper = $(this).closest(\'.caseDocumentWrapper\');
            if($(this).val() == \'internal\'){
                wrapper.find(\'#case_update_file\\\\[\\\\]\').hide();
                wrapper.find(\'.internalCaseDocumentWrapper\').show();
            }else{
                wrapper.find(\'#case_update_file\\\\[\\\\]\').show();
                wrapper.find(\'.internalCaseDocumentWrapper\').hide();
            }

        });

        $(\'#addFileButton\').click(function(e){
            var template = $(\'#updateFileRowTemplate\').html();
            template = template.replace(/case_document_name/g, \'case_update_name_\'+docCount);
            template = template.replace(/case_document_id/g, \'case_update_id_\'+docCount);
            $(e.target).before(template);
            if(typeof sqs_objects == \'undefined\'){
                sqs_objects = new Array;
            }
            sqs_objects[\'EditView_case_document_name_\'+docCount]={
                "form":"EditView",
                "method":"query",
                \'modules\': \'Documents\',
                "field_list":["name","id"],
                "populate_list":["case_document_name_"+docCount,"case_document_id_"+docCount],
                "required_list":["case_document_id_"+docCount],
                "conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],
                "limit":"30",
                "no_match_text":"No Match"};
            SUGAR.util.doWhen(
                    "typeof(sqs_objects) != \'undefined\' && typeof(sqs_objects[\'EditView_case_document_name_"+docCount+"\']) != \'undefined\'",
                    enableQS
            );

            $(\'.caseDocumentTypeSelect\').change();
            docCount++;
        });
        $(document).on(\'click\',\'.removeFileButton\',function(e){
            $(e.target).closest(\'span\').remove();
        });
    });
</script>
'; ?>

<script id="updateFileRowTemplate"  type="text/template">
    <span class="caseDocumentWrapper">
        <select class="caseDocumentTypeSelect">
            <option value="internal"><?php echo $this->_tpl_vars['MOD']['LBL_SELECT_INTERNAL_CASE_DOCUMENT']; ?>
</option>
            <option value="external"><?php echo $this->_tpl_vars['MOD']['LBL_SELECT_EXTERNAL_CASE_DOCUMENT']; ?>
</option>
        </select>
        <input type="file" id="case_update_file[]" name="case_update_file[]">
        <span class="internalCaseDocumentWrapper">
            <input type="text" name="case_document_name" class="sqsEnabled" tabindex="0" id="case_document_name" size="" value="" title='' autocomplete="off">
            <input type="hidden" name="case_document_id" id="case_document_id" value="">

            <span class="id-ff multiple">
                <button type="button" name="btn_case_document_name" id="btn_case_document_name" tabindex="0" title="<?php echo $this->_tpl_vars['MOD']['LBL_SELECT_CASE_DOCUMENT']; ?>
" class="button firstChild" value="<?php echo $this->_tpl_vars['MOD']['LBL_SELECT_CASE_DOCUMENT']; ?>
"
                        <?php echo '
                        onclick=\'open_popup(
                                "Documents",
                                600,
                                400,
                                "",
                                true,
                                false,
                                {"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"case_document_id","name":"case_document_name"}},
                                "single",
                                true
                                );\' >
                        '; ?>

                <span class="suitepicon suitepicon-action-select"></span></button>
                <button type="button" name="btn_clr_case_document_name"
                        id="btn_clr_case_document_name" tabindex="0" title="<?php echo $this->_tpl_vars['MOD']['LBL_CLEAR_CASE_DOCUMENT']; ?>
"  class="button lastChild"
                        onclick="SUGAR.clearRelateField(this.form, 'case_document_name', 'case_document_id');"  value="<?php echo $this->_tpl_vars['MOD']['LBL_CLEAR_CASE_DOCUMENT']; ?>
" ><span class="suitepicon suitepicon-action-clear"></span></button>
            </span>
        </span>

<button class="removeFileButton" type="button"><?php echo $this->_tpl_vars['MOD']['LBL_REMOVE_CASE_FILE']; ?>
</button><br>
    </span>

</script>
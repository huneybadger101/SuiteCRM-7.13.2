<?php /* Smarty version 2.6.33, created on 2023-04-17 15:28:42
         compiled from include/ListView/ListViewColumnsFilterDialog.tpl */ ?>

<?php if (! $this->_tpl_vars['columnsFilterDialogAdded']): ?>
    <div id="columnsFilterDialog" class="modal fade modal-columns-filter" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"><?php echo $this->_tpl_vars['APP']['LBL_COLUMNS_FILTER_HEADER_TITLE']; ?>
</h4>
                </div>
                <div class="modal-body" id="columnsFilterList">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn button purple btn-default"
                            data-dismiss="modal"><?php echo $this->_tpl_vars['APP']['LBL_CLOSE_BUTTON_TITLE']; ?>
</button>
                    <button type="button" onclick="columnsFilter.onSaveClick();" type="button"
                            class="button red"><?php echo $this->_tpl_vars['APP']['LBL_SAVE_CHANGES_BUTTON_TITLE']; ?>
</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <div id="chooserTemplate" class="hidden">
        <div class="chooserContent">
            <h1><?php echo $this->_tpl_vars['APP']['LBL_DISPLAYED']; ?>
</h1>
            <ul class="chooserList green"></ul>
            <div id="error-displayed-columns" class="error"></div>
            <h1><?php echo $this->_tpl_vars['APP']['LBL_HIDDEN']; ?>
</h1>
            <ul class="chooserList red"></ul>
        </div>
    </div>
<?php echo '
    <script>

        // TODO add it to sListView
        if (typeof columnsFilter == \'undefined\') {

            var columnsFilter = {

                onOpen: function () {
                    this.loadColumnsSettings();
                },

                showContents: function (contents) {
                    $(\'#columnsFilterList\').html(contents);
                },

                showPreload: function () {
                    this.showContents(\'<p class="preloading"></p>\');
                },

                loadColumnsSettings: function () {
                    var _this = this;
                    this.showPreload();

                    if (typeof module_sugar_grp1 != \'undefined\' && module_sugar_grp1) {

                        var url = \'index.php?module=\' + module_sugar_grp1 + \'&action=index&search_form_only=true&to_pdf=true&search_form_view=advanced_search&columnsFilter=true\';

                        var cObj = YAHOO.util.Connect.asyncRequest(\'GET\', url, {
                            success: function (e) {
                                _this.showContents(_this.getDragDropChooserHTML(JSON.parse($(\'<div></div>\').html(e.responseText).find(\'#responseData\').html())));
                                _this.initDragDropChooser();
                            }, failure: function () {
                                _this.showContents(\'ERR_COMMUNICATION_ERROR\');
                            }
                        });
                    }
                    else {
                        _this.showContents(\'ERR_NO_MODULE_SELECTED\');
                    }

                },

                getDragDropChooserHTML: function (chooserData) {

                    $(\'#chooserTemplate .chooserList.green\').html(\'\');
                    $.each(chooserData.args.values_array[0], function (key, value) {
                        $(\'#chooserTemplate .chooserList.green\').append(\'<li data-key="\' + key + \'">\' + value + \'</li>\');
                    });

                    $(\'#chooserTemplate .chooserList.red\').html(\'\');
                    $.each(chooserData.args.values_array[1], function (key, value) {
                        $(\'#chooserTemplate .chooserList.red\').append(\'<li data-key="\' + key + \'">\' + value + \'</li>\');
                    });

                    return $(\'#chooserTemplate\').html();
                },

                initDragDropChooser: function () {
                    var _this = this;
                    $("#columnsFilterList .chooserContent .chooserList.green").sortable({
                        connectWith: "#columnsFilterList .chooserContent .chooserList.red",
                        stop: function () {
                            _this.isValid();
                        }
                    });
                    $("#columnsFilterList .chooserContent .chooserList.green").disableSelection();

                    $("#columnsFilterList .chooserContent .chooserList.red").sortable({
                        connectWith: "#columnsFilterList .chooserContent .chooserList.green",
                        stop: function () {
                            _this.isValid();
                        }
                    });
                    $("#columnsFilterList .chooserContent .chooserList.red").disableSelection();

                },

                onSaveClick: function () {
                    if (this.isValid()) {
                        this.save();
                    }
                },

                // validation (return true if valid, otherwise show error(s) and return false)
                isValid: function () {
                    // clear error message
                    $(\'#error-displayed-columns\').html(\'\');
                    // check validation for empty list
                    var v = $(\'#columnsFilterList > div > ul.chooserList.green.ui-sortable li\').length > 0;
                    if (!v) {
                        // show error
                        $(\'#error-displayed-columns\').html(\''; ?>
<?php echo $this->_tpl_vars['APP']['ERR_EMPTY_COLUMNS_LIST']; ?>
<?php echo '\');
                        // scroll to error message
                        $(\'#columnsFilterDialog\').animate({
                            scrollTop: $("#error-displayed-columns").offset().top - 100
                        });
                    }
                    // return validation result
                    return v;
                },

                // send it to server to save user preferences (refresh the page to show changes)
                save: function () {

                    // TODO : show loading message...

                    // make query columns list
                    var cols = [];
                    $(\'#columnsFilterList > div > ul.chooserList.green.ui-sortable > li\').each(function (i, e) {
                        cols.push($(e).attr(\'data-key\'));
                    });

                    $.post($(\'#search_form\').attr(\'action\'), {
                        displayColumns: cols.join(\'|\'),
                        query: \'true\',
                        use_stored_query: \'true\',
                        update_stored_query: \'true\',
                        update_stored_query_key: \'displayColumns\',
                        last_search_tab: listViewSearchIcon.getLatestSearchDialogType(),
                        save_columns_order: \'true\'
                    }, function () {
                        //close form and refresh page after save
                        $(\'#columnsFilterDialog > div > div > div.modal-footer > button.btn.button.purple.btn-default\').click();
                        if ($(\'#search_form\').length > 0) {
                            document.location.href = $(\'#search_form\').attr(\'action\');
                        } else {
                            if (typeof module_sugar_grp1 != \'undefined\' && module_sugar_grp1) {
                                document.location.href = \'index.php?module=\' + module_sugar_grp1 + \'&action=index\';
                            } else {
                                document.location.href = document.location.href;
                            }
                        }
                    });

                }

            };

        }

    </script>
'; ?>


    <?php $this->assign('columnsFilterDialogAdded', 'true'); ?>
<?php endif; ?>
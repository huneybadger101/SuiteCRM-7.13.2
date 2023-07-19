<?php /* Smarty version 2.6.33, created on 2023-05-01 23:52:12
         compiled from C:%5Cxampp%5Chtdocs%5CToothMate%5CSuiteCRM-7.13.2%5CSuiteCRM-7.13.2%5Clib%5CSearch%5CUI/templates/search.form.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'search_controller', 'C:\\xampp\\htdocs\\ToothMate\\SuiteCRM-7.13.2\\SuiteCRM-7.13.2\\lib\\Search\\UI/templates/search.form.tpl', 45, false),array('function', 'html_options', 'C:\\xampp\\htdocs\\ToothMate\\SuiteCRM-7.13.2\\SuiteCRM-7.13.2\\lib\\Search\\UI/templates/search.form.tpl', 66, false),array('modifier', 'count', 'C:\\xampp\\htdocs\\ToothMate\\SuiteCRM-7.13.2\\SuiteCRM-7.13.2\\lib\\Search\\UI/templates/search.form.tpl', 70, false),array('modifier', 'key', 'C:\\xampp\\htdocs\\ToothMate\\SuiteCRM-7.13.2\\SuiteCRM-7.13.2\\lib\\Search\\UI/templates/search.form.tpl', 74, false),)), $this); ?>

<div class="moduleTitle">
    <h2 class="module-title-text"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_TITLE']; ?>
</h2>
</div>
<div style="clear:both;">
    <form id="search-wrapper-form">
                <?php echo smarty_function_search_controller(array(), $this);?>


        <table>
            <tbody>
            <tr style="padding-bottom: 10px">
                <td class="submitButtons" colspan="8" nowrap="">
                    <label for="searchFieldMain" class="text-muted hide"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_QUERY']; ?>
</label>
                    <input id="searchFieldMain" title="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_TEXT_FIELD_TITLE_ATTR']; ?>
" class="searchField"
                           type="text" size="80" name="search-query-string" value="<?php echo $this->_tpl_vars['searchQueryString']; ?>
" autofocus>
                    <input type="submit" onclick="searchForm.onSubmitClick(this);"
                           title="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_SUBMIT_FIELD_TITLE_ATTR']; ?>
" class="button primary"
                           value="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_SUBMIT_FIELD_VALUE']; ?>
">&nbsp;
                </td>
            <tr>
            <tr style="padding-top: 10px;">
                <td colspan="6" style="padding-left: 20px;" nowrap="">
                    <div id="inlineGlobalSearch">
                        <table style="margin-bottom:0;">
                            <tbody>
                            <label for="search-query-size"
                                   class="text-muted"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_RESULTS_PER_PAGE']; ?>
</label>
                            <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['sizeOptions'],'selected' => $this->_tpl_vars['searchQuerySize'],'id' => "search-query-size",'name' => "search-query-size"), $this);?>

                            &nbsp;&nbsp;
                            <input type="hidden" name="search-query-from" value="<?php echo $this->_tpl_vars['searchQueryFrom']; ?>
">

                            <?php if (count($this->_tpl_vars['engineOptions']) > 1): ?>
                                <label for="search-query-size" class="text-muted"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_ENGINE']; ?>
</label>
                                <?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['engineOptions'],'selected' => $this->_tpl_vars['searchQueryEngine'],'id' => "search-engine",'name' => "search-engine"), $this);?>

                            <?php else: ?>
                                <?php $this->assign('firstRow', key($this->_tpl_vars['engineOptions'])); ?>
                                <input type="hidden" name="search-engine" value="<?php echo $this->_tpl_vars['firstRow']; ?>
" />
                            <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
    <script>
        <?php echo '
        var searchForm = {
          onSubmitClick: function (e) {
            // jump to the first page on new results list
            $(\'input[name="search-query-from"]\').val(0);
            return true;
          }
        };
        '; ?>

    </script>
</div>
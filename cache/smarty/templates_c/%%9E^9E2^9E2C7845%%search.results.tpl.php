<?php /* Smarty version 2.6.33, created on 2023-05-01 23:52:18
         compiled from C:%5Cxampp%5Chtdocs%5CToothMate%5CSuiteCRM-7.13.2%5CSuiteCRM-7.13.2%5Clib%5CSearch%5CUI/templates/search.results.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'cycle', 'C:\\xampp\\htdocs\\ToothMate\\SuiteCRM-7.13.2\\SuiteCRM-7.13.2\\lib\\Search\\UI/templates/search.results.tpl', 106, false),array('modifier', 'string_format', 'C:\\xampp\\htdocs\\ToothMate\\SuiteCRM-7.13.2\\SuiteCRM-7.13.2\\lib\\Search\\UI/templates/search.results.tpl', 127, false),)), $this); ?>
<h2 class="moduleTitle"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_REAULTS_TITLE']; ?>
</h2>
<?php if ($this->_tpl_vars['total']): ?><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_TOTAL']; ?>
<?php echo $this->_tpl_vars['total']; ?>
<?php endif; ?>
<?php if (isset ( $this->_tpl_vars['error'] )): ?>
    <p class="error"><?php echo $this->_tpl_vars['APP']['ERR_SEARCH_INVALID_QUERY']; ?>
</p>
<?php else: ?>
    
    <?php if ($this->_tpl_vars['pagination']): ?>
        <ul class="nav nav-tabs">
            <li class="tab-inline-pagination">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td nowrap class="paginationWrapper">
                                <span class="pagination">
                                    <button type="button" class="button btn-pagination" title="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_PREV']; ?>
"<?php if (! $this->_tpl_vars['pagination']['prev']): ?>disabled="true"<?php else: ?>onclick="pagination.onClick('prev');"<?php endif; ?>>
                                        <span class="suitepicon suitepicon-action-left"> </span><span class="pagination-label"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_PREV']; ?>
</span>
                                    </button>
                                    &nbsp;&nbsp;
                                    <span class="pagination-range-label"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_PAGE']; ?>
<?php echo $this->_tpl_vars['pagination']['page']; ?>
<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_OF']; ?>
<?php echo $this->_tpl_vars['pagination']['last']; ?>
</span>
                                    &nbsp;&nbsp;
                                    <button type="button" class="button btn-pagination" title="<?php echo $this->_tpl_vars['APP']['LBL_SEARCH_NEXT']; ?>
"<?php if (! $this->_tpl_vars['pagination']['next']): ?>disabled="true"<?php else: ?>onclick="pagination.onClick('next');"<?php endif; ?>>
                                        <span class="pagination-label"><?php echo $this->_tpl_vars['APP']['LBL_SEARCH_NEXT']; ?>
</span><span class="suitepicon suitepicon-action-right"> </span>
                                    </button>
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </li>
        </ul>
        <script>
            <?php echo '
            var pagination = {
                onClick: function(dir) {
                    var from = '; ?>
<?php echo $this->_tpl_vars['pagination']['from']; ?>
<?php echo ';
                    var size = '; ?>
<?php echo $this->_tpl_vars['pagination']['size']; ?>
<?php echo ';
                    var string = "'; ?>
<?php echo $this->_tpl_vars['pagination']['string']; ?>
<?php echo '";
                    if (dir === \'prev\') {
                        from -= size;
                    } else if (dir === \'next\') {
                        from += size;
                    } else {
                        throw \'Invalid direction\';
                    }
                    // keep search form values
                    $(\'input[name="search-query-from"]\').val(from);
                    $(\'select[name="search-query-size"]\').val(size);
                    $(\'input[name="search-query-string"\').val(string);
                    $(\'#search-wrapper-form\').submit();
                }
            };
            '; ?>

        </script>
    <?php endif; ?>

    <?php $_from = $this->_tpl_vars['resultsAsBean']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['module'] => $this->_tpl_vars['beans']):
?>
    <h3><?php echo $this->_tpl_vars['module']; ?>
</h3>
    <table class="list view">
        <thead>
            <tr>
                <th></th>
                <?php $_from = $this->_tpl_vars['headers'][$this->_tpl_vars['module']]; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['header']):
?>
                <th title="<?php echo $this->_tpl_vars['header']['comment']; ?>
"><?php echo $this->_tpl_vars['header']['label']; ?>
</th>
                <?php endforeach; endif; unset($_from); ?>
            </tr>
        </thead>
        <tbody>
            <?php $_from = $this->_tpl_vars['beans']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['bean']):
?>
            <tr class="<?php echo smarty_function_cycle(array('values' => "oddListRowS1,evenListRowS1"), $this);?>
">
                <td><a href="<?php echo $this->_tpl_vars['APP_CONFIG']['site_url']; ?>
/index.php?action=EditView&module=<?php echo $this->_tpl_vars['module']; ?>
&record=<?php echo $this->_tpl_vars['bean']->id; ?>
&offset=1"><span class="suitepicon suitepicon-action-edit"></span></a></td>
                <?php $_from = $this->_tpl_vars['headers'][$this->_tpl_vars['module']]; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['header']):
?>
                <td><?php  
                        // using php to access to a smarty template object 
                        // variable field by a dynamic indexed array element 
                        // because it's impossible only with smarty syntax 
                        echo $this->get_template_vars('bean')->{$this->get_template_vars('header')['field']};
                     ?></td>
                <?php endforeach; endif; unset($_from); ?>
            </tr>
            <?php endforeach; endif; unset($_from); ?>
        </tbody>
        </thead>
    </table>
    <?php endforeach; else: ?>
    <p class="error"><?php echo $this->_tpl_vars['APP']['ERR_SEARCH_NO_RESULTS']; ?>
</p>
    <?php endif; unset($_from); ?>
    
    <?php if (! empty ( $this->_tpl_vars['results']->getSearchTime() )): ?>
        <p class="text-muted text-right" id="search-time">
            <?php echo $this->_tpl_vars['APP']['LBL_SEARCH_PERFORMED_IN']; ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['results']->getSearchTime()*1000)) ? $this->_run_mod_handler('string_format', true, $_tmp, "%.2f") : smarty_modifier_string_format($_tmp, "%.2f")); ?>
 ms
        </p>
    <?php endif; ?>
<?php endif; ?>
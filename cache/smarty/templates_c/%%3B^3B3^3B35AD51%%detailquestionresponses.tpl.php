<?php /* Smarty version 2.6.33, created on 2023-07-23 23:54:35
         compiled from modules/SurveyResponses/tpls/detailquestionresponses.tpl */ ?>
<div>
    <table id="questionResponseTable" class="table table-bordered">
        <tr>
            <th></th>
            <th>
                <?php echo $this->_tpl_vars['MOD']['LBL_QUESTION']; ?>

            </th>
            <th>
                <?php echo $this->_tpl_vars['MOD']['LBL_RESPONSE']; ?>

            </th>
        </tr>
        <?php $_from = $this->_tpl_vars['questionResponses']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['questionResponse']):
?>
            <tr>
                <td>Q<?php echo $this->_tpl_vars['questionResponse']['sort_order']+1; ?>
</td>
                <td>
                    <?php echo $this->_tpl_vars['questionResponse']['questionName']; ?>

                </td>
                <td>
                    <?php echo $this->_tpl_vars['questionResponse']['answer']; ?>

                </td>
            </tr>
        <?php endforeach; endif; unset($_from); ?>
    </table>
</div>
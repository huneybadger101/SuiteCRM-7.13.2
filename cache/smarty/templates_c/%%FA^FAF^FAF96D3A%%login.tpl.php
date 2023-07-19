<?php /* Smarty version 2.6.33, created on 2023-05-17 01:33:28
         compiled from custom/themes/SuiteP/tpls/login.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'custom/themes/SuiteP/tpls/login.tpl', 42, false),)), $this); ?>
<script type='text/javascript'>
    var LBL_LOGIN_SUBMIT = '<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_LOGIN_SUBMIT'), $this);?>
';
    var LBL_REQUEST_SUBMIT = '<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_REQUEST_SUBMIT'), $this);?>
';
    var LBL_SHOWOPTIONS = '<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_SHOWOPTIONS'), $this);?>
';
    var LBL_HIDEOPTIONS = '<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_HIDEOPTIONS'), $this);?>
';
</script>

<!-- Start login container -->

<div class="p_login">

	<div class="p_login_top">
		
		<a title="SuiteCRM" href="https://www.suitecrm.com">SuiteCRM</a>
		
	</div>
    
    <div class="p_login_middle">
        <?php if ($this->_tpl_vars['LOGIN_ERROR_MESSAGE']): ?>
            <p align='center' class='error'><?php echo $this->_tpl_vars['LOGIN_ERROR_MESSAGE']; ?>
</p>
        <?php endif; ?>


    <div id="loginform">
        
        <form class="form-signin" role="form" action="index.php" method="post" name="DetailView" id="form"
              onsubmit="return document.getElementById('cant_login').value == ''" autocomplete="off">
            <div class="companylogo"><?php echo $this->_tpl_vars['LOGIN_IMAGE']; ?>
</div>
        <span class="error" id="browser_warning" style="display:none">
            <?php echo smarty_function_sugar_translate(array('label' => 'WARN_BROWSER_VERSION_WARNING'), $this);?>

        </span>
		<span class="error" id="ie_compatibility_mode_warning" style="display:none">
		<?php echo smarty_function_sugar_translate(array('label' => 'WARN_BROWSER_IE_COMPATIBILITY_MODE_WARNING'), $this);?>

		</span>
            <?php if ($this->_tpl_vars['LOGIN_ERROR'] != ''): ?>
                <span class="error"><?php echo $this->_tpl_vars['LOGIN_ERROR']; ?>
</span>
                <?php if ($this->_tpl_vars['WAITING_ERROR'] != ''): ?>
                    <span class="error"><?php echo $this->_tpl_vars['WAITING_ERROR']; ?>
</span>
                <?php endif; ?>
            <?php else: ?>
                <span id='post_error' class="error"></span>
            <?php endif; ?>
            <input type="hidden" name="module" value="Users">
            <input type="hidden" name="action" value="Authenticate">
            <input type="hidden" name="return_module" value="Users">
            <input type="hidden" name="return_action" value="Login">
            <input type="hidden" id="cant_login" name="cant_login" value="">
            <?php $_from = $this->_tpl_vars['LOGIN_VARS']; if (($_from instanceof StdClass) || (!is_array($_from) && !is_object($_from))) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['var']):
?>
                <input type="hidden" name="<?php echo $this->_tpl_vars['key']; ?>
" value="<?php echo $this->_tpl_vars['var']; ?>
">
            <?php endforeach; endif; unset($_from); ?>
            <?php if (! empty ( $this->_tpl_vars['SELECT_LANGUAGE'] )): ?>
                <div class="login-language-chooser" >
                    <?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_LANGUAGE'), $this);?>
:
                    <select name='login_language' onchange="switchLanguage(this.value)"><?php echo $this->_tpl_vars['SELECT_LANGUAGE']; ?>
</select>
                </div>
            <?php endif; ?>
            <br>
            <div class="input-group">
                <input type="text" class="form-control"
                       placeholder="<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_USER_NAME'), $this);?>
" required autofocus
                       tabindex="1" id="user_name" name="user_name" value='<?php echo $this->_tpl_vars['LOGIN_USER_NAME']; ?>
' autocomplete="off">
            </div>
            <br>
            <div class="input-group">
                <input type="password" class="form-control"
                       placeholder="<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_PASSWORD'), $this);?>
" tabindex="2"
                       id="username_password" name="username_password" value='<?php echo $this->_tpl_vars['LOGIN_PASSWORD']; ?>
' autocomplete="off">
            </div>
            <br>
            <input id="bigbutton" class="btn btn-lg btn-primary btn-block" type="submit"
                   title="<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_LOGIN_BUTTON_TITLE'), $this);?>
" tabindex="3" name="Login"
                   value="<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_LOGIN_BUTTON_LABEL'), $this);?>
">
            <div id="forgotpasslink" style="cursor: pointer; display:<?php echo $this->_tpl_vars['DISPLAY_FORGOT_PASSWORD_FEATURE']; ?>
;"
                 onclick='toggleDisplay("forgot_password_dialog");'>
                <a href='javascript:void(0)'><?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_LOGIN_FORGOT_PASSWORD'), $this);?>
</a>
            </div>
        </form>
        
        <form class="form-signin passform" role="form" action="index.php" method="post" name="DetailView" id="form" name="fp_form" id="fp_form" autocomplete="off">
            <div id="forgot_password_dialog" style="display:none">
                <input type="hidden" name="entryPoint" value="GeneratePassword">
                <div id="generate_success" class='error' style="display:inline;"></div>
                <br>
                <div class="input-group">
                                        <input type="text" class="form-control" size='26' id="fp_user_name" name="fp_user_name"
                           value='<?php echo $this->_tpl_vars['LOGIN_USER_NAME']; ?>
'
                           placeholder="<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_USER_NAME'), $this);?>
" autocomplete="off">
                </div>
                <br>
                <div class="input-group">
                                        <input type="text" class="form-control" size='26' id="fp_user_mail" name="fp_user_mail" value=''
                           placeholder="<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_EMAIL'), $this);?>
" autocomplete="off">
                </div>
                <br>
                <?php echo $this->_tpl_vars['CAPTCHA']; ?>

                <div id='wait_pwd_generation'></div>
                <input title="Email Temp Password" class="button  btn-block" type="button" style="display:inline"
                       onclick="validateAndSubmit(); return document.getElementById('cant_login').value == ''"
                       id="generate_pwd_button" name="fp_login"
                       value="<?php echo smarty_function_sugar_translate(array('module' => 'Users','label' => 'LBL_LOGIN_SUBMIT'), $this);?>
" autocomplete="off">
            </div>
        </form>
        
    </div>
    </div>
    
    <div class="p_login_bottom">

    		<a id="admin_options">&copy; Supercharged by SuiteCRM</a>
            <a id="powered_by">&copy; Powered By SugarCRM</a>
    	
	</div>
    
</div>
<!-- End login container -->



<?php /* Smarty version 2.6.33, created on 2023-04-17 14:57:31
         compiled from C:%5Cxampp%5Chtdocs%5CToothMate%5CSuiteCRM-7.13.2%5CSuiteCRM-7.13.2%5Cinclude%5Cutils/recaptcha_disabled.tpl */ ?>
<?php echo '
<script>

  /**
   * Login Screen Validation
   */
  function validateAndSubmit() {
      generatepwd();
    }

  /**
   * Password reset screen validation
   */
  function validateCaptchaAndSubmit() {
      document.getElementById(\'username_password\').value = document.getElementById(\'new_password\').value;
      document.getElementById(\'ChangePasswordForm\').submit();
    }
</script>
'; ?>
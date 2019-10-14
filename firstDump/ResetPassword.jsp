<%-- 
    Document   : ResetPassword
    Created on : Oct 14, 2019, 4:46:27 PM
    Author     : Ijen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>

<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style>
  .file-input-wrapper {
    overflow: hidden;
    position: relative;
    cursor: pointer;
    z-index: 1;
  }
  .file-input-wrapper input[type=file], .file-input-wrapper input[type=file]:focus, .file-input-wrapper input[type=file]:hover {
    position: absolute;
    top: 0;
    left: 0;
    cursor: pointer;
    opacity: 0;
    filter: alpha(opacity=0);
    z-index: 99;
    outline: 0;
    }
    .file-input-name {
      margin-left: 8px;
    }
    </style>
  <link rel="stylesheet" type="text/css" href="resources/css/jquery-ui.min.css">
  <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-responsive.css">
  <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.icon-large.css">
  <link rel="stylesheet" type="text/css" href="resources/css/datepicker.css">
  <link rel="stylesheet" type="text/css" href="resources/css/datatables.css">
  <link rel="stylesheet" type="text/css" href="resources/css/TableTools.css">
  <link rel="stylesheet" type="text/css" href="resources/css/TableTools_JUI.css">
  <link rel="stylesheet" type="text/css" href="resources/css/select2.min.css">
  <link rel="stylesheet" type="text/css" href="resources/css/jstree.css">
  <link rel="stylesheet" type="text/css" href="resources/css/toastr.min.css">
  <link rel="stylesheet" type="text/css" href="resources/css/main.css">
  <link rel="stylesheet" type="text/css" href="resources/css/jchartfx.css">
  <script type="text/javascript" src="resources/css/jquery.min.js.download"></script>
  <script type="text/javascript" src="resources/css/jquery-ui.min.js.download"></script>
  <script type="text/javascript" src="resources/css/bootstrap.min.js.download"></script>
  <script type="text/javascript" src="resources/css/bootstrap-datepicker.js.download"></script>
  <script type="text/javascript" src="resources/css/bootstrap-fileinput.js.download"></script>
  <script type="text/javascript" src="resources/css/jquery.number.js.download"></script>
  <script type="text/javascript" src="resources/css/jquery.dataTables.js.download"></script>
  <script type="text/javascript" src="resources/css/ZeroClipboard.min.js.download"></script>
  <script type="text/javascript" src="resources/css/TableTools.min.js.download"></script>
  <script type="text/javascript" src="resources/css/jquery.form.min.js.download"></script>
  <script type="text/javascript" src="resources/css/jquery.maskedinput.min.js.download"></script>
  <script type="text/javascript" src="resources/css/select2.min.js.download"></script>
  <script type="text/javascript" src="resources/css/spel2js.min.js.download"></script>
  <script type="text/javascript" src="resources/css/moment.min.js.download"></script>
  <script type="text/javascript" src="resources/css/underscore-min.js.download"></script>
  <script type="text/javascript" src="resources/css/cleave.js.download"></script>
  <script type="text/javascript" src="resources/css/currency.min.js.download"></script>
  <script type="text/javascript" src="resources/css/toastr.min.js.download"></script>
  <script type="text/javascript" src="resources/css/jquery.yii.js.download"></script>
  <script type="text/javascript" src="resources/css/jquery.yiiactiveform.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.system.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.coreVector.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.advanced.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.annotation.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.coreVector3d.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.data.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.ui.js.download"></script>
  <script type="text/javascript" src="resources/css/jchartfx.vector.js.download"></script>

<title>Sekani Systems - Password Reset</title>
    </head>

    <body lang="en"><script type="text/javascript" src="/mlite-frontend/scripts/script.js?v=1570616489"></script>
<script type="text/javascript" src="/mlite-frontend/scripts/modules/tableStorage.js?v=1570616489"></script>


<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="brand" href="/demo/index.php">


                <img src="ozi_logo.png" alt="Logo" />
            </a>
            <ul class="nav">
                            </ul>
            <div class="pull-right" style="margin-top: 10px;">
                                <div class="dropdown" id="langdrop">
    <a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="">
    	<img src="en.png" alt="EN" style="width: 20px;" />    </a>
    <span style="max-height: auto;" class="dropdown-menu musoni-pull-right-lang" role="menu" aria-labelledby="dLabel">
        <form action="/demo/index.php/Site/Login" method="post">
          <span id="lang">
            <input value="en" id="lang_0" checked="checked" type="radio" name="lang" />
            <label for="lang_0">
              <img src="en.png" alt="EN" style="width: 20px;"/>
            </label>
            <!--<br />
            <input value="nl" id="lang_1" type="radio" name="lang" />
            <label for="lang_1">
              <img src="/mlite-frontend/images/icons/flags/nl.png" alt="NL" /></label>
              <br />
              <input value="mm" id="lang_2" type="radio" name="lang" />
              <label for="lang_2">
                <img src="/mlite-frontend/images/icons/flags/mm.png" alt="MM" />
              </label>
              <br />
              <input value="fr" id="lang_3" type="radio" name="lang" />
              <label for="lang_3">
                <img src="/mlite-frontend/images/icons/flags/fr.png" alt="FR" /></label>
                <br />
                <input value="pt" id="lang_4" type="radio" name="lang" />
                <label for="lang_4">
                  <img src="/mlite-frontend/images/icons/flags/pt.png" alt="PT" /></label>
                  <br />
                  <input value="zh" id="lang_5" type="radio" name="lang" />
                  <label for="lang_5">
                    <img src="/mlite-frontend/images/icons/flags/cn.png" alt="ZH" /></label>
                    <br />
                    <input value="es" id="lang_6" type="radio" name="lang" />
                    <label for="lang_6">
                      <img src="/mlite-frontend/images/icons/flags/es.png" alt="ES" /></label>-->
                    </span>
                  </form>
                </span>
</div>
<script type="text/javascript">
    $(function () {
        $('#langdrop input:radio').addClass('input_hidden');
        $('br').remove();
    });
</script>

          </div>
        </div>
    </div>
</div>

<div id="changePasswordModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="changePasswordModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="changePasswordModalLabel">Change Password</h3>
    </div>
    <div class="modal-body">
        <form class="well form-horizontal" id="changePasswordForm" action="/demo/index.php/User/EditMyPassword" method="post">
          <div class="control-group ">
            <label class="control-label required" for="ChangePasswordForm_currentPassword">Current Password <span class="required">*</span></label>
            <div class="controls">
              <input class="span3" name="ChangePasswordForm[currentPassword]" id="ChangePasswordForm_currentPassword" type="password" />
              <span class="help-inline error" id="ChangePasswordForm_currentPassword_em_" style="display: none"></span>
            </div>
          </div>
          <div class="control-group ">
            <label class="control-label required" for="ChangePasswordForm_password">Password <span class="required">*</span></label>
            <div class="controls">
              <input class="span3" name="ChangePasswordForm[password]" id="ChangePasswordForm_password" type="password" />
              <span class="help-inline error" id="ChangePasswordForm_password_em_" style="display: none"></span>
            </div>
          </div>
          <div class="control-group ">
            <label class="control-label required" for="ChangePasswordForm_repeatPassword">Repeat Password <span class="required">*</span>
            </label>
            <div class="controls">
              <input class="span3" name="ChangePasswordForm[repeatPassword]" id="ChangePasswordForm_repeatPassword" type="password" />
              <span class="help-inline error" id="ChangePasswordForm_repeatPassword_em_" style="display: none"></span>
            </div>
          </div>
          <button class="btn btn-primary" type="submit">Save</button>
        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
        </form>
      </div>
</div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="row-fluid" id="content">
	<div style="text-align: center">
	<h3>Create Password</h3>


	<div class="form-horizontal" style="width:500px;margin:0px auto;">
		<form id="reset-form" action="/demo/index.php/Site/Login" method="post">

			<div class="control-group">
				<div class="control-label">
          <label for="resetNewPassword" class="required">New Password <span class="required">*</span></label>
        </div>
		        <div class="controls">
					<input name="resetNewPassword" id="resetPassword" type="password" />
          <div class="errorMessage" id="reset_password_em_" style="display:none"></div>
        </div>
			</div>
			<div class="control-group">
				<div class="control-label">
          <label for="repeatNewPassword" class="required">Repeat Password <span class="required">*</span></label>
        </div>
		        <div class="controls">
					<input name="repeatNewPassword" id="repeatPassword" type="password" />
          <div class="errorMessage" id="repeat_password_em_" style="display:none"></div>
        </div>
			</div>
        <input type="hidden" name="lang" value="en">

			<div class="control-group buttons">
				<input class="btn btn-primary" type="submit" name="yt0" value="Create New Password" />
      </div>
		</form>
  </div>
</div>
</div><!-- content -->
</div>
</div>

            <hr />

            <div id="footer">
                <div class="container alignCenter">
                    <!-- servername = demo-ireland01.musoniservices.com - 2228592  Bytes -->

                    <p><a href='https://sekanisystems.com'>Help</a> - <a href='mailto:contactcenter@sekanisystems'>Support</a></p><span class="muted credit">&copy; 2019 Sekani Systems. All Rights Reserved</span>
                </div>
            </div>



        </div>

        <div id="page-alert" class="hide">
            <div class="row-fluid">
                <div class="alert span6 offset3"><a href="#" class="close close-alert" >&times;</a>
                    <span class="message"></span>
                </div>
            </div>
        </div>
    <script type="text/javascript">
/*<![CDATA[*/
jQuery(function($) {
jQuery('#login-form').yiiactiveform({'validateOnSubmit':true,'attributes':[{'id':'LoginForm_username','inputID':'LoginForm_username','errorID':'LoginForm_username_em_','model':'LoginForm','name':'username','enableAjaxValidation':false,'clientValidation':function(value, messages, attribute) {

if(jQuery.trim(value)=='') {
	messages.push("Username cannot be blank.");
}

}},{'id':'LoginForm_password','inputID':'LoginForm_password','errorID':'LoginForm_password_em_','model':'LoginForm','name':'password','enableAjaxValidation':false,'clientValidation':function(value, messages, attribute) {

if(jQuery.trim(value)=='') {
	messages.push("Password cannot be blank.");
}

}}],'errorCss':'error'});
jQuery('body').on('click','#lang_0',function(){jQuery.yii.submitForm(this,'',{});return false;});
jQuery('body').on('click','#lang_1',function(){jQuery.yii.submitForm(this,'',{});return false;});
jQuery('body').on('click','#lang_2',function(){jQuery.yii.submitForm(this,'',{});return false;});
jQuery('body').on('click','#lang_3',function(){jQuery.yii.submitForm(this,'',{});return false;});
jQuery('body').on('click','#lang_4',function(){jQuery.yii.submitForm(this,'',{});return false;});
jQuery('body').on('click','#lang_5',function(){jQuery.yii.submitForm(this,'',{});return false;});
jQuery('body').on('click','#lang_6',function(){jQuery.yii.submitForm(this,'',{});return false;});
jQuery('#changePasswordForm').yiiactiveform({'validateOnSubmit':true,'afterValidate':editPassword,'attributes':[{'id':'ChangePasswordForm_currentPassword','inputID':'ChangePasswordForm_currentPassword','errorID':'ChangePasswordForm_currentPassword_em_','model':'ChangePasswordForm','name':'ChangePasswordForm\x5BcurrentPassword\x5D','enableAjaxValidation':false,'inputContainer':'div.control\x2Dgroup','clientValidation':function(value, messages, attribute) {

if(jQuery.trim(value)=='') {
	messages.push("Current Password cannot be blank.");
}

}},{'id':'ChangePasswordForm_password','inputID':'ChangePasswordForm_password','errorID':'ChangePasswordForm_password_em_','model':'ChangePasswordForm','name':'ChangePasswordForm\x5Bpassword\x5D','enableAjaxValidation':false,'inputContainer':'div.control\x2Dgroup','clientValidation':function(value, messages, attribute) {

if(jQuery.trim(value)=='') {
	messages.push("Password cannot be blank.");
}


if(value.length<6) {
	messages.push("Password is too short (minimum is 6 characters).");
}

}},{'id':'ChangePasswordForm_repeatPassword','inputID':'ChangePasswordForm_repeatPassword','errorID':'ChangePasswordForm_repeatPassword_em_','model':'ChangePasswordForm','name':'ChangePasswordForm\x5BrepeatPassword\x5D','enableAjaxValidation':false,'inputContainer':'div.control\x2Dgroup','clientValidation':function(value, messages, attribute) {

if(jQuery.trim(value)=='') {
	messages.push("Repeat Password cannot be blank.");
}


if(value.length<6) {
	messages.push("Repeat Password is too short (minimum is 6 characters).");
}


if(value!=jQuery('#ChangePasswordForm_password').val()) {
	messages.push("Repeat Password must be repeated exactly.".replace('{compareValue}', jQuery('#ChangePasswordForm_password').val()));
}

}}],'errorCss':'error'});
});
/*]]>*/
</script>
</body>
</html>
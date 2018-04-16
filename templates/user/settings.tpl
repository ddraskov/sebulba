
<?php if(!isset($x)){ ?>
<div class="container is-fullhd">
	<h4><?php print $text_access_settings; ?></h4>
    <p><em><?php print $text_access_setting_explanation; ?></em></p>
    
    <table class="table is-striped">
	 <tr>
		<td class="span2"><?php print $text_email_addresses; ?>:</td>
		<td class="span8">
			<?php print $emails; ?>
		</td>
	 </tr>   
   
<?php if(Registry::get('auditor_user') == 1 && RESTRICTED_AUDITOR == 1) { ?>
   
	 <tr>
		<td><?php print $text_domains; ?>:</td>
		<td>
			<?php print $domains; ?>
		</td>
	 </tr>

<?php } ?>
	 
<?php if(Registry::get('auditor_user') == 0 || RESTRICTED_AUDITOR == 0) { ?>
	 
	 <tr>
		<td><?php print $text_groups; ?>:</td>
		<td>
			<?php print $groups; ?>
		</td>
	 </tr>

<?php } ?>
	 
<?php if(ENABLE_FOLDER_RESTRICTIONS == 1) { ?>
	 
	 <tr>
		<td><?php print $text_folders; ?>:</td>
		<td>
			<?php print $folders; ?>
		</td>
	 </tr>

<?php } ?>
	 
   </table>

<div class="columns is-multiline">

<div class="column is-6">
<div class="card-wrapper">
<div class="card">

<form action="/settings.php" method="post" name="setpagelen" class="form-horizontal">
<header class="card-header">
   <p class="card-header-title is-danger"><?php print $text_display_settings; ?></p>
       <a href="#" class="card-header-icon" aria-label="more options">
      <span class="icon">
        <i class="fas fa-angle-down" aria-hidden="true"></i>
      </span>
    </a>
</header>
   
<div class="card-content">

    <div class="field">
        <label class="label" for="pagelen"><?php print $text_page_length; ?></label>
        <div class="select is-medium">
           <select name="pagelen">
           <?php foreach(Registry::get('paging') as $t) { ?>
              <option value="<?php print $t; ?>"<?php if($page_len == $t) { ?> selected="selected"<?php } ?>><?php print $t; ?></option>
           <?php } ?>
           </select>
        </div>
    </div>
    <div class="field">
        <label class="label" for="theme"><?php print $text_theme; ?></label>
        <div class="select is-medium">
               <select name="theme">
            <?php foreach(Registry::get('themes') as $t) { ?>
                  <option value="<?php print $t; ?>"<?php if($theme == $t) { ?> selected="selected"<?php } ?>><?php print $t; ?></option>
            <?php } ?>
               </select>
        </div>
    </div>
    <div class="field">
        <label class="label" for="theme"><?php print $text_language; ?></label>
        <div class="select is-medium">
               <select name="lang">
                  <option value=""><?php print $text_use_browser_settings; ?></option>
            <?php foreach(Registry::get('langs') as $t) { ?>
                  <option value="<?php print $t; ?>"<?php if($lang == $t) { ?> selected="selected"<?php } ?>><?php print $t; ?></option>
            <?php } ?>
               </select>
        </div>
    </div>
   </div>

<footer class="card-footer">

<input type="submit" value="<?php print $text_set; ?>" class="card-footer-item button is-primary is-medium" /> 
<input type="reset" value="<?php print $text_cancel; ?>" class="card-footer-item button is-danger is-medium" onclick="Piler.go_to_default_page();" />
        
  
  </footer>  
</form>

</div>
</div>
</div> <!-- Column -->

<div class="column is-4">
<?php if(ENABLE_GOOGLE_AUTHENTICATOR == 1) { ?>
<div class="card-wrapper">
<div class="card">
<form method="post" name="setqr" class="form">

<header class="card-header">
   <p class="card-header-title is-danger"><?php print $text_google_authenticator_settings; ?></p>
       <a href="#" class="card-header-icon" aria-label="more options">
      <span class="icon">
        <i class="fas fa-angle-down" aria-hidden="true"></i>
      </span>
    </a>
</header>
<div class="card-content">
    <div class="field">
                
           <input class="is-checkradio"type="checkbox" name="ga_enabled" id="ga_enabled" onclick="Piler.toggle_ga();" <?php if($ga['ga_enabled'] == 1) { ?>checked="checked"<?php } ?> />
        <label class="label" for="ga_enabled"><?php print $text_enable; ?></label>
        
    </div>
     <div class="field">
        <label class="label" for="ga_secret"><?php print $text_qr_code; ?></label>
        <div id="QR" class="control">
       
           <?php print $ga['ga_secret']; ?> <br /><img src="qr.php?ts=<?php print time(); ?>" />

   
        </div>

    </div>
    </div>
  

        <footer class="card-footer">
        <a class="card-footer-item button is-primary is-medium" href="#" onclick="Piler.new_qr(); return false;"> <?php print $text_refresh_qr_code; ?></a>
        </footer>
   </div>


</form>
</div>
</div>
</div>
</div>


<?php } ?>


<p>&nbsp;</p>

<?php if(PASSWORD_CHANGE_ENABLED == 1) { ?>
<h4><?php print $text_change_password; ?></h4>
<form name="pwdchange" action="index.php?route=common/home" method="post" autocomplete="off">
   <table border="0" cellpadding="0" cellspacing="0">
      <tr><td><?php print $text_password; ?>: </td><td><input type="password" name="password" /></td></tr>
      <tr><td><?php print $text_password_again; ?>: </td><td><input type="password" name="password2" /></td></tr>
     <tr><td>&nbsp;</td><td><input type="submit" value="<?php print $text_submit; ?>" /> <input type="reset" value="<?php print $text_cancel; ?>" /></td></tr>
   </table>
</form>
<?php } ?>

<?php } else { ?>
<?php print $x; ?>. <a href="index.php?route=common/home"><?php print $text_back; ?></a>

</div>
<?php } ?>



<div class="pageloader"><span class="title"><?php print $text_loading; ?></span></div>
<div id="deleteconfirm-modal" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" role="dialog" aria-hidden="true"><i class="icon-remove"></i></button>
    <h3><?php print $text_confirm; ?> <?php print $text_delete; ?></h3>
  </div>
  <div class="modal-body">
    <p><?php print $text_user_delete_confirm_message; ?> <span id="name">ERROR</span>?</p>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn" data-dismiss="modal" aria-hidden="true"><?php print $text_close; ?></a>
    <a href="index.php?route=user/remove&amp;uid=-1&amp;name=Error&amp;confirmed=0" class="btn btn-primary" id="id"><?php print $text_delete; ?></a>
  </div>
</div>

<section class="hero is-small">

    <div class="hero-body is-small">
      
         <div class="container">

<?php if(isset($errorstring)){ ?><div class="alert alert-danger"><?php print $text_error; ?>: <?php print $errorstring; ?></div><?php } ?>

<?php if(isset($x)){ ?>

<div class="alert alert-success"><?php print $x; ?>.</div>
<p><a class="button is-primary is-medium" href="index.php?route=user/list"><i class="fas fa-circle-arrow-left"></i>&nbsp;<?php print $text_back; ?></a></p>

<?php } elseif(isset($user)) { ?>

<p><a class="button is-medium is-primary is-warnning" href="index.php?route=user/list"><i class="icon-circle-arrow-left"></i>&nbsp;<?php print $text_back; ?></a> | <a href="index.php?route=user/remove&amp;id=<?php print $user['uid']; ?>&amp;user=<?php print $user['username']; ?>" class="confirm-delete" data-id="<?php print $user['uid']; ?>" data-name="<?php print $user['realname']; ?>"><i class="icon-remove-sign"></i>&nbsp;<?php print $text_remove_this_user; ?></a></p>

      <div class="columns is-multiline">

          <div class="column is-8">

    <form action="index.php?route=user/edit" name="edituser" method="post" autocomplete="off" class="form-horizontal">
      


     <div class="">    

     <div class="control-group<?php if(isset($errors['email'])){ print " error"; } ?>">
        <input type="hidden" name="uid" value="<?php print $uid; ?>" />
        
        <div class="field">
            <label class="label"><?php print $text_email_addresses; ?></label>
            <div class="control">
              <textarea class="input is-medium" type="text" placeholder="Text input" name="email"><?php print $emails; ?></textarea>
              <?php if ( isset($errors['email']) ) { ?><span class="help-inline"><?php print $errors['email']; ?></span><?php } ?>
            </div>
          </div>

          <div class="field <?php if(isset($errors['username'])){ print " tag is-danger"; } ?>">
              <label class="label"><?php print $text_username; ?></label>
              <div class="control">
                <input class="input is-medium" type="text" placeholder="Username" name="username" value="<?php print $user['username']; ?>"><?php if ( isset($errors['username']) ) { ?><span class="help-inline"><?php print $errors['username']; ?></span><?php } ?>
                <?php if ( isset($errors['email']) ) { ?><span class="help-inline"><?php print $errors['email']; ?></span><?php } ?>
              </div>
            </div>

         <div class="field <?php if(isset($errors['realname'])){ print " tag is-danger"; } ?>">
            <label class="label" for="realname"><?php print $text_realname; ?>:</label>
            <div class="control">
              <input type="text" name="realname" value="<?php print $user['realname']; ?>" class="input is-medium" />
              <?php if ( isset($errors['realname']) ) { ?><span class="help-inline"><?php print $errors['realname']; ?></span><?php } ?>
            </div>
        </div>	
        
        <div class="field <?php if(isset($errors['domain'])){ print " tag is-danger"; } ?>">
            <label class="label" for="domain"><?php print $text_domain; ?>:</label>
            <div class="select">
              <select name="domain" class="select is-medium">
                   <?php asort($domains); foreach ($domains as $domain) { ?>
                      <option slass="is-medium" value="<?php print $domain; ?>"<?php if($domain == $user['domain']){ ?> selected="selected"<?php } ?>><?php print $domain; ?></option>
                   <?php } ?>
              </select>
            </div>
        </div>	
        
        <div class="field">
            <label class="label" for="s_piler_domains"><?php print $text_search_domains; ?>*:</label>
            <div class="control">
              <input type="text" id="s_piler_domain" name="s_piler_domain" placeholder="<?php print $text_search_domain_to_add; ?>" class="input is-medium autocompletetext" />
            </div>
        </div>

        <div class="field <?php if(isset($errors['domains'])){ print " tag is-danger"; } ?>">
            <label class="label" for="group"><?php print $text_domains; ?>**:</label>
            <div class="control">
              <textarea class="input is-medium" style="height:80px;" name="domains" id="domains"><?php if(isset($user['domains'])){ print $user['domains']; } ?></textarea>
            </div>
        </div>    
        
        <div class="field">
            <label class="label" for="s_piler_group"><?php print $text_search_groups; ?>*:</label>
            <div class="control">
              <input type="text" id="s_piler_group" name="s_piler_group" placeholder="<?php print $text_search_group_to_add; ?>" class="input is-medium autocompletetext" />
            </div>
        </div>

       <div class="field <?php if(isset($errors['group'])){ print " tag is-danger"; } ?>">
            <label class="label" for="group"><?php print $text_groups; ?>**:</label>
            <div class="control">
              <textarea class="input is-mediumn" style="height:80px;" name="group" id="group"><?php if(isset($user['group'])){ print $user['group']; } ?></textarea>
            </div>
        </div>

        <div class="filed">
            <label class="label" for="s_piler_folder"><?php print $text_search_folders; ?>*:</label>
            <div class="control">
              <input type="text" id="s_piler_folder" name="s_piler_folder" placeholder="<?php print $text_search_folder_to_add; ?>" class="input is-medium autocompletetext" />
            </div>
        </div>

       <div class="field<?php if(isset($errors['folder'])){ print " tag is-danger"; } ?>">
            <label class="label" for="folder"><?php print $text_folders; ?>**:</label>
            <div class="control">
              <textarea class="input is-medium" style="height:80px;" name="folder" id="folder"><?php if(isset($user['folder'])){ print $user['folder']; } ?></textarea>
            </div>
        </div>

    <?php if(ENABLE_LDAP_IMPORT_FEATURE == 1) { ?>
         <div class="field <?php if(isset($errors['dn'])){ print " tag is-medium"; } ?>">
            <label class="label" for="dn">LDAP DN:</label>
            <div class="control">
              <input type="text" name="dn" value="<?php print $user['dn']; ?>" class="input is-medium" /><br /> (<?php print $text_dn_asterisk_means_skip_sync; ?>)
            </div>
        </div>
    <?php } ?>

        <div class="field<?php if(isset($errors['password'])){ print " tag is-danger"; } ?>">
            <label class="label" for="password"><?php print $text_password; ?>:</label>
            <div class="control">
              <input type="password" name="password" value="" class="input" />
            </div>
        </div>	

        <div class="field<?php if(isset($errors['password2'])){ print " tag is-danger"; } ?>">
            <label class="label" for="password2"><?php print $text_password_again; ?>:</label>
            <div class="control">
              <input type="password" name="password2" value="" class="input" />
            </div>
        </div>	
        
        <div class="field">
             <label class="label" for="uiddisplay"><?php print $text_user_id; ?>:</label>
             <div class="control">
                <input type="text" name="uiddisplay" value="<?php print $uid; ?>" class="input" disabled />
             </div>
        </div>
        
        <div class="field">
            <label class="label" for="isadmin"><?php print $text_admin_user; ?>:</label>
            <div class="select">
              <select name="isadmin">
                   <option class="input is-medium" value="0"<?php if(isset($user['isadmin']) && $user['isadmin'] == 0){ ?> selected="selected"<?php } ?>><?php print $text_user_regular; ?></option>
                   <?php if(Registry::get('admin_user') == 1) { ?><option class="input is-medium"value="1"<?php if(isset($user['isadmin']) && $user['isadmin'] == 1){ ?> selected="selected"<?php } ?>><?php print $text_user_masteradmin; ?></option><?php } ?>
                   <option class="input is-medium" value="2"<?php if(isset($user['isadmin']) && $user['isadmin'] == 2){ ?> selected="selected"<?php } ?>><?php print $text_user_auditor; ?></option>
              </select>
            </div>
        </div>	
        
        <div class="alert alert-info">*: <?php print $text_min_2_chars; ?><br />**: <?php print $text_enter_one_group_per_line; ?></div>
        
        <div class="form-actions">
            <input type="submit" value="<?php print $text_modify; ?>" class="button is-primary" /> <a href="index.php?route=user/list" class="button is-secondary"><?php print $text_cancel; ?></a>
        </div>
      </div>
    </div>
    </div>
    </div>
    </form>

<?php } ?>

  </section>
  </div>
</div>
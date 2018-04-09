
<!-- ################# MODAL Confirmation #################### -->
<div class="modal" id="deleteconfirm-modal">
    <div class="modal-background"></div>
    <div class="modal-card">
      <header class="modal-card-head">
        <p class="modal-card-title">Modal title</p>
        <button class="delete close-modal" aria-label="close"></button>
      </header>
      <section class="modal-card-body">
          <p><?php print $text_user_delete_confirm_message; ?> <span id="name"><?php print $user['realname']; ?></span>?</p>
      </section>
      <footer class="modal-card-foot">
          <a href="#" class="button close-modal" data-dismiss="modal" aria-hidden="true" ><?php print $text_close; ?></a>
          <a href="index.php?route=user/remove&amp;uid=-1&amp;name=Error&amp;confirmed=0" class="button is-primary" id="id"><?php print $text_delete; ?></a>

      </footer>
    </div>
  </div>

<!-- ################# MODAL  #################### -->

<section class="hero is-small">
    <div class="hero-body is-small">
      
        
      <div class="container">
          <div class="columns">
    <div class="column is-6">
          <div class="card">
           
              <header class="card-header">
                <p class="card-header-title">
                  User 
                </p>
                <a href="#" class="card-header-icon" aria-label="more options">
                  <span class="icon">
                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                  </span>
                </a>
              </header>
              <div class="card-content">
                <div class="content ">
                    <form method="post" name="search1" action="index.php?route=user/list">
                      <div class="field has-addons ">
                    
                        <div class="control has-icons-left">
                            <input type="text" name="search" class="input is-medium " value="<?php print $search; ?>" />
                            <span class="icon is-medium is-left">
                                <i class="fa fa-search"></i>
                              </span>
                          </div>  
                          <div class="control">
                            <input type="submit" class="button is-primary is-medium " value="<?php print $text_search; ?>" />
                        </div> 
                       </div>
                    </form>
   
             </div> 
            
    </div>
</div> 
</div>

<div class="column is-6">
<div class="card">
    <header class="card-header">
      <p class="card-header-title">
        Add new user
      </p>
      <a href="#" class="card-header-icon" aria-label="more options">
        <span class="icon">
          <i class="fas fa-plus-circle" aria-hidden="true"></i>
        </span>
      </a>
    </header>
    <div class="card-content">
      <div class="content">
        <div class="control has-icons-left ">
            <a class="button is-medium is-primary" href="index.php?route=user/add"><i class=""></i>&nbsp;<?php print $text_add_new_user_alias; ?></a>
            <span class="icon">
                <i class="fas fa-plus-circle" aria-hidden="true"></i>
              </span>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<!--  ########################## End CARDS ############################################ -->

<div class="columns">
    <div class="column is-fullwidth">
    <div class="card events-card">
            <header class="card-header">
              <p class="card-header-title">
                  <?php print $text_existing_users; ?>
              </p>
              <a href="#" class="card-header-icon" aria-label="more options">
                <span class="icon">
                  <i class="fa fa-angle-down" aria-hidden="true"></i>
                </span>
              </a>
            </header>
    







<?php if(isset($users) && is_array($users)){ ?>

    
<nav id="pagenav" class="pagination is-centered" role="navigation" aria-label="pagination">
   <?php if($page > 0){ ?><a href="index.php?route=user/list&amp;page=0&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="fas icon-double-angle-left"></i><?php if($page > 0){ ?></a><?php } ?>
   &nbsp;
   <?php if($page > 0){ ?><a href="index.php?route=user/list&amp;page=<?php print $prev_page; ?>&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="icon-angle-left"></i><?php if($page > 0){ ?></a><?php } ?>
   &nbsp;
   <?php print $users[0][$sort]; ?> - <?php print $users[count($users)-1][$sort]; ?>
   &nbsp;
   <?php if($total_users >= $page_len*($page+1) && $total_users > $page_len){ ?><a href="index.php?route=user/list&amp;page=<?php print $next_page; ?>&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="icon-angle-right"></i><?php if($total_users >= $page_len*($page+1) && $total_users > $page_len){ ?></a><?php } ?>
   &nbsp;
   <?php if($page < $total_pages){ ?><a href="index.php?route=user/list&amp;page=<?php print $total_pages; ?>&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="icon-double-angle-right"></i><?php if($page < $total_pages){ ?></a><?php } ?>
</nav>


<div class="card-table">
    <div class="content">

   <table class="table is-narrow is-striped is-fullwidth" id="ss1">
     <tbody>
      <tr class="domainrow">
         <th><?php print $text_realname; ?> <a href="index.php?route=user/list&amp;sort=realname&amp;order=0<?php print $querystring; ?>"><i class="fas fa-chevron-up"></i> <a href="index.php?route=user/list&amp;sort=realname&amp;order=1<?php print $querystring; ?>"><i class="fas fa-chevron-circle-down is-primary"></i></a></th>
         <th><?php print $text_username; ?> <a href="index.php?route=user/list&amp;sort=username&amp;order=0<?php print $querystring; ?>"><i class="fas fa-chevron-up"></i> <a href="index.php?route=user/list&amp;sort=username&amp;order=1<?php print $querystring; ?>"<?php print $querystring; ?>><i class="fas fa-chevron-circle-down is-primary"></i></a></th>
         <th><?php print $text_email; ?> <a href="index.php?route=user/list&amp;sort=email&amp;order=0"><i class="fas fa-chevron-up"></i> <a href="index.php?route=user/list&amp;sort=email&amp;order=1<?php print $querystring; ?>"><i class="fas fa-chevron-down"></i></a></th>
         <th><?php print $text_role; ?> <a href="index.php?route=user/list&amp;sort=role&amp;order=0"><i class="fas fa-chevron-up"></i> <a href="index.php?route=user/list&amp;sort=role&amp;order=1<?php print $querystring; ?>"><i class="fas fa-chevron-down"></i></a></th>
         <th>&nbsp;</th>
         <th>&nbsp;</th>
      </tr>

<?php foreach($users as $user) { ?>
      <tr class="">
         <td><?php print $user['realname']; ?></td>
         <td><?php print $user['username']; ?></td>
         <td><?php if($user['email'] != $user['shortemail']){ ?><span><?php print $user['shortemail']; ?></span><?php } else { print $user['email']; } ?></td>
         <td>
            <?php
               if($user['isadmin'] == 0){ print $text_user_regular; }
               if($user['isadmin'] == 1){ print $text_user_masteradmin; }
               if($user['isadmin'] == 2){ print $text_user_auditor; }
            ?>
         </td>
         <td><a class="button is-small is-primary" href="index.php?route=user/edit&amp;uid=<?php print $user['uid']; ?>"><?php print $text_edit_or_view; ?></a></td>
         <td><a class="modal-button button is-small is-danger " href="index.php?route=user/remove&amp;id=<?php print $user['uid']; ?>&amp;user=<?php print $user['username']; ?>" data-target="modal-ter" data-id="<?php print $user['uid']; ?>" data-name="<?php print $user['realname']; ?>"><i class="icon-remove-sign"></i>&nbsp;<?php print $text_remove; ?></a></td>
      </tr>
    </tbody>
<?php } ?>

   </table>
   </div>
   </div>
   </div>
<nav id="pagenav" class="pagination is-centered" role="navigation" aria-label="pagination"> 
   <?php if($page > 0){ ?><a href="index.php?route=user/list&amp;page=0&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="icon-double-angle-left"></i><?php if($page > 0){ ?></a><?php } ?>
   &nbsp;
   <?php if($page > 0){ ?><a href="index.php?route=user/list&amp;page=<?php print $prev_page; ?>&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="icon-angle-left"></i><?php if($page > 0){ ?></a><?php } ?>
   &nbsp;
   <?php print $users[0][$sort]; ?> - <?php print $users[count($users)-1][$sort]; ?>
   &nbsp;
   <?php if($total_users >= $page_len*($page+1) && $total_users > $page_len){ ?><a href="index.php?route=user/list&amp;page=<?php print $next_page; ?>&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="icon-angle-right"></i><?php if($total_users >= $page_len*($page+1) && $total_users > $page_len){ ?></a><?php } ?>
   &nbsp;
   <?php if($page < $total_pages){ ?><a href="index.php?route=user/list&amp;page=<?php print $total_pages; ?>&amp;search=<?php print $search; ?>&amp;sort=<?php print $sort; ?>&amp;order=<?php print $order; ?>" class="navlink"><?php } ?><i class="icon-double-angle-right"></i><?php if($page < $total_pages){ ?></a><?php } ?>
</nav>
</div>
</div>

<?php } else { ?>
<div class="alert alert-error lead">
<?php print $text_not_found; ?>


<?php } ?>

</section>
   </div>
   </div>

 <script>
  document.querySelector('.modal-button').addEventListener('click', function(event) {
  event.preventDefault();
  var modal = document.querySelector('.modal');  // assuming you have only 1
  var html = document.querySelector('html');
  modal.classList.add('is-active');
  html.classList.add('is-clipped');

  modal.querySelector('.close-modal').addEventListener('click', function(e) {
    e.preventDefault();
    modal.classList.remove('is-active');
    html.classList.remove('is-clipped');
  });
});
   </script>



<!-- ################# MODAL Confirmation #################### -->
<div class="modal " id="deleteconfirmation">
    <div class="modal-background"></div>
      <div class="modal-content">
      <div class="box">
      <div class="media-content">
        <div class="content">
          <p><?php print $text_user_delete_confirm_message; ?> <span><strong><?php print $user['username']; ?></strong></span>?</p>
        </div>
       <nav class="level is-mobile">
         <div class="level-left"> 
          <a href="#" class="level-item button modal-close" aria-hidden="true" ><?php print $text_close; ?></a>
          <a href="index.php?route=user/remove&amp;uid=-1&amp;name=Error&amp;confirmed=0" class="button level-item"><?php print $text_delete; ?></a>
        
        </div></nav>
        </div>
    
    </div></div>  
  </div>

<!-- ################# MODAL  #################### -->

<div class="modal" id="deleteconf">
    <div class="modal-background"></div>
    <div class="modal-content">
      <!-- Any other Bulma elements you want -->
    </div>
    <button class="modal-close is-large" aria-label="close"></button>
  </div>



<section class="hero is-small">
    <div class="hero-body is-small">
      
        
      <div class="container">
<!-- Main container -->
<nav class="level">
    <!-- Left side -->
    <div class="level-left">

      <div class="level-item">
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
  
    <!-- Right side -->
    <div class="level-right">
        
           
            <a class="button is-primary is-medium is-outlined" href="index.php?route=user/add">
                <span><?php print $text_add_new_user_alias; ?></span>
                <span class="icon is-small is-left">
                  <i class="fas fa-plus-circle"></i>
                </span>
              </a>
 
            
       
    </div>
  </nav>


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
         <td>
           <a class="button is-small is-primary" href="index.php?route=user/edit&amp;uid=<?php print $user['uid']; ?>"><?php print $text_edit_or_view; ?></a></td>
           <script>
              var id= <?php print $user['uid']; ?>
             
             $("#showModal-"+id).click(function() {
            $(".modal").addClass("is-active");  
          });
          
          $(".modal-close").click(function() {
             $(".modal").removeClass("is-active");
          });
             </script>
         
           <td>  <!--a class="button is-primary is-small modal-button" href="index.php?route=user/remove&amp;id=<?php print $user['uid']; ?>&amp;user=<?php print $user['username']; ?>" data-target="deleteconfirmation" data-id="<?php print $user['uid']; ?>" data-name="<?php print $user['realname']; ?>"><span><?php print $text_remove; ?></span>
            <span class="icon is-small">
              <i class="fas fa-times"></i>
            </span>
          </a-->
          <a href="index.php?route=user/remove&amp;id=<?php print $user['uid']; ?>&amp;user=<?php print $user['username']; ?>" class="modal-button"  data-target="#deleteconf" data-id="<?php print $user['uid']; ?>" data-name="<?php print $user['realname']; ?>"><i class="icon-remove-sign"></i>&nbsp;<?php print $text_remove; ?></a></td>
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
<a class="button is-primary is-large modal-button" data-target="#deleteconf">Launch example modal</a>
</section>
   </div>
   </div>

   <script>
    $(".modal-button").click(function() {
  var target = $(this).data("target");
  $("html").addClass("is-clipped");
  $(target).addClass("is-active");
});

$(".modal-close").click(function() {
  $("html").removeClass("is-clipped");
  $(this).parent().removeClass("is-active");
});
   </script>

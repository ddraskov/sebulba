<?php if(Registry::get('username')) { ?>
<navbar class="navbar ">
    <div class="navbar-brand">
      <a class="navbar-item" href="https://binarium.space">
        <img src="../view/theme/sebulba/images/binarium.png" alt="MailArhiver Haldasar" width="102" height="22">
      </a>
  
      <a class="navbar-item is-hidden-desktop" href="https://github.com/jgthms/bulma" target="_blank">
        <span class="icon" style="color: #333;">
          <i class="fa fa-github"></i>
        </span>
      </a>
  
      <a class="navbar-item is-hidden-desktop" href="https://twitter.com/jgthms" target="_blank">
        <span class="icon" style="color: #55acee;">
          <i class="fa fa-twitter"></i>
        </span>
      </a>
  
      <div class="navbar-burger burger" data-target="navMenubd-example">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
 <?php if($admin_user == 1) { ?>
    <div id="navMenubd-example" class="navbar-menu">
      <div class="navbar-start">
        <div class="navbar-item has-dropdown is-hoverable">
          <a class="navbar-link  is-active">
            Monitor
          </a>
          <div class="navbar-dropdown ">

              <a class="navbar-item " href="index.php?route=stat/stat&timespan=daily">
                <div class="level is-mobile">
                  <div class="level-left">
                    <div class="level-item">
                      <p>
                        <strong><?php print $text_statistics; ?></strong>
                        <br>
                        <small>Statistic Daily / Monthly</small>
                      </p>
                    </div>
                  </div>
                  <div class="level-right">
                    <div class="level-item">
                      <span class="icon has-text-info is-right">
                        <i class="fas fa-chart-bar"></i>
                      </span>
                    </div>
                  </div>
                </div>
              </a>

              <a class="navbar-item " href="index.php?route=accounting/accounting&view=email">
                <div class="level is-mobile">
                  <div class="level-left">
                    <div class="level-item">
                      <p>
                        <strong><?php print $text_accounting; ?></strong>
                        <br>
                        <small>Accounting details</small>
                      </p>
                    </div>
                  </div>
                  <div class="level-left is-right">
                    <div class="level-item">
                      <span class="icon has-text-info">
                        <i class="fas fas fa-tasks is-right"></i>
                      </span>
                    </div>
                  </div>
                </div>
              </a>  

              <a class="navbar-item " href="index.php?route=health/health">
                <div class="level is-mobile">
                  <div class="level-left">
                    <div class="level-item">
                      <p>
                        <strong><?php print $text_health; ?></strong>
                        <br>
                        <small>Health</small>
                      </p>
                    </div>
                  </div>
                  <div class="level-right">
                    <div class="level-item">
                      <span class="icon has-text-info">
                        <i class="fas fa-medkit is-right"></i>
                      </span>
                    </div>
                  </div>
                </div>
              </a>  

   <?php if(ENABLE_AUDIT == 1) { ?>
            <a class="navbar-item " href="index.php?route=audit/audit">
              Audit
            </a>
   <?php } ?>

          </div>
        </div>

        <div class="navbar-item has-dropdown is-hoverable">
          <div class="navbar-link">
            Administration
          </div>
          <div id="adminDropdown" class="navbar-dropdown ">

              <a class="navbar-item " href="index.php?route=user/list">
                  <span class="icon">
                      <i class="fas fa-user"></i>
                   </span>
                <strong><?php print $text_users; ?></strong>
                </a>
                <a class="navbar-item " href="index.php?route=group/list">
                  <span class="icon">
                      <i class="fas fa-users"></i>
                   </span>
                <strong><?php print $text_groups; ?></strong>
                </a>
                <a class="navbar-item " href="index.php?route=domain/domain">
                  <span class="icon">
                      <i class="fas fa-globe"></i>
                   </span>
                <strong><?php print $text_domain; ?></strong>
                </a>
<?php if(ENABLE_SAAS == 1) { ?>
                 <a class="navbar-item " href="index.php?route=ldap/list">
                      <span class="icon">
                          <i class="fas fa-co"></i>
                       </span>
                    <strong><?php print $text_ldap; ?></strong>
                    </a>
                    <a class="navbar-item " href="index.php?route=customer/list">
                      <span class="icon">
                          <i class="fas fa-co"></i>
                       </span>
                    <strong><?php print $text_customers; ?></strong>
                    </a>
                    <a class="navbar-item " href="index.php?route=import/list">
                      <span class="icon">
                          <i class="fas fa-co"></i>
                       </span>
                    <strong><?php print $text_import; ?></strong>
                    </a>
 <?php } ?>


                    <a class="navbar-item " href="index.php?route=policy/archiving">
                        <span class="icon">
                            <i class="fas fa-archive"></i>
                         </span>
                      <strong><?php print $text_archiving_rules; ?></strong>
                      </a>
                      <a class="navbar-item " href="index.php?route=policy/retention">
                          <span class="icon">
                              <i class="far fa-clock"></i>
                           </span>
                        <strong><?php print $text_retention_rules; ?></strong>
                        </a>
                        <a class="navbar-item " href="index.php?route=policy/folder">
                            <span class="icon">
                                <i class="fas fa-folder"></i>
                             </span>
                          <strong><?php print $text_folder_rules; ?></strong>
                         </a>
                         <a class="navbar-item " href="index.php?route=policy/legalhold">
                              <span class="icon">
                                  <i class="far fa-registered"></i>
                               </span>
                            <strong><?php print $text_legal_hold; ?></strong>
                            </a>
            <hr class="navbar-divider ">                
            <a class="navbar-item " href="index.php?route=search/autosearch">
              <div class="level is-mobile">
                <div class="level-left">
                  <div class="level-item">
                    <p>
                      <strong><?php print $text_automated_search; ?></strong>
                      <br>
                    
                    </p>
                  </div>
                </div>
                <div class="level-right">
                  <div class="level-item">
                    <span class="icon has-text-info">
                      <i class="fa fa-search"></i>
                    </span>
                  </div>
                </div>
              </div>
            </a>
            <?php if(LDAP_ADMIN_MEMBER_DN || ADMIN_CAN_POWER_SEARCH) { ?>
              <a class="navbar-item " href="search.php">
                  <i class="fas fa-search"></i>&nbsp;<?php print $text_search; ?>
                </a>
            <?php } ?>

            <?php } else { ?>
   <!--search menu -->           
         <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link is-active " href="search.php" <?php if($settings['text_colour']) { ?> style="color: <?php print $settings['text_colour']; ?>;"<?php } ?>><i class="fas fa-search"></i>&nbsp;<?php print $text_search; ?></a>
              </div>
              <?php if(ENABLE_AUDIT == 1 && $auditor_user == 1) { ?>  
              <a class="navbar-item " href="index.php?route=audit/audit" <?php if($settings['text_colour']) { ?> style="color: <?php print $settings['text_colour']; ?>;"<?php } ?>><i class="fas fa-book"></i>&nbsp;<?php print $text_audit; ?></a>
              <?php } ?>
              <?php if($settings['support_link']) { ?>
                <a class="navbar-item " href="<?php print $settings['support_link']; ?>" <?php if($settings['text_colour']) { ?> style="color: <?php print $settings['text_colour']; ?>;"<?php } ?>><?php print $text_contact_support; ?></a>  
              <?php } ?>
              <?php if(ENABLE_FOLDER_RESTRICTIONS == 1) { ?>  
                <a class="navbar-item " href="/folders.php" <?php if($settings['text_colour']) { ?> style="color: <?php print $settings['text_colour']; ?>;"<?php } ?>><i class="fas fa-folder-close"></i>&nbsp;<?php print $text_folders; ?></a> 
              <?php } ?>
           <?php } ?>

           <?php if($settings['branding_url']) { ?>
           <?php } ?>
           <?php if($settings['support_link']) { ?>
          <?php } ?>   
          
          </div>
       
        </div> <!-- Administracijski navbar  -->

      </div>   <!-- Navbar start -->



      <!-- -------------------------------------- Meni desno logout ---------------------------------------------------------------------- -->  
  <div class="navbar-end">
      <div class="navbar-item has-dropdown is-hoverable">
          <div class="navbar-link">
            <span class="icon">
           <i class="fas fa-user"></i>
        </span>
              <?php if($realname) { print $realname; ?>&nbsp;<?php } ?>
          </div>

          <div class="navbar-dropdown is-right"> 
 <?php if($settings['support_link']) { ?>
                <a class"navbar-item" href="<?php print $settings['support_link']; ?>" target="_blank"><i class="icon-question-sign"></i>&nbsp;<?php print $text_contact_support; ?></a>
        
<?php } ?>
        
            <a class="navbar-item " href="settings.php">
                <span class="icon">
                    <i class="fas fa-cog"></i>
                 </span>
              <strong>Settings</strong>
              </a>

              <a class="navbar-item " href="logout.php">
                  <span class="icon">
                      <i class="fas fa-sign-out-alt">&nbsp;</i>
                   </span>
                <strong>Logout</strong>
                </a>
   
          </div>
        </div>
  
      </div>
  <!-- -------------------------------------- Meni desno---------------------------------------------------------------------- -->

        <!--a class="navbar-item is-hidden-desktop-only" href="https://github.com/jgthms/bulma" target="_blank">
          <span class="icon" style="color: #333;">
            <i class="fab fa-github"></i>
          </span>
        </a>
        <a class="navbar-item is-hidden-desktop-only" href="https://twitter.com/jgthms" target="_blank">
          <span class="icon" style="color: #55acee;">
            <i class="fab fa-twitter"></i>
          </span>
        </a-->

        
 
      </div>

    </div>

  
  <?php } ?>
</nav>
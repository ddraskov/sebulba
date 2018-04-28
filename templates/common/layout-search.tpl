<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print DEFAULT_LANG; ?>" lang="<?php print DEFAULT_LANG; ?>">

<head>
   <title><?php print $title; ?></title>
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
   <meta http-equiv="Content-Language" content="<?php print DEFAULT_LANG; ?>" />
   <?php if(SITE_KEYWORDS) { ?><meta name="keywords" content="<?php print SITE_KEYWORDS; ?>" /><?php } ?>
   <?php if(SITE_DESCRIPTION) { ?><meta name="description" content="<?php print SITE_DESCRIPTION; ?>" /><?php } ?>
   <?php if(PROVIDED_BY) { ?><meta name="author" content="<?php print PROVIDED_BY; ?>" /><?php } ?>
   <meta name="rating" content="general" />
   <meta name="robots" content="all" />
   <meta http-equiv="x-ua-compatible" content="IE=edge">
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
   <link rel="stylesheet" href="/view/theme/sebulba/assets/css/bulma.css">
   <link rel="stylesheet" href="/view/theme/sebulba/assets/css/bulma-radio-checkbox.css">
   <link rel="stylesheet" href="/view/theme/sebulba/assets/css/bulma-radio-checkbox.css">
   <link rel="stylesheet" href="/view/theme/sebulba/assets/css/bulma-extensions.min.css">
  
   

  

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!-- original location: http://html5shim.googlecode.com/svn/trunk/html5.js -->
    <!--[if lt IE 9]>
      <script src="/view/theme/default/assets/js/html5.js"></script>
      <style>body{padding-top:70px;}</style>
    <![endif]-->
	
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/view/theme/default/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/view/theme/default/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/view/theme/default/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/view/theme/default/assets/ico/apple-touch-icon-57-precomposed.png">
    <?php if(BRANDING_FAVICON) { ?><link rel="shortcut icon" href="<?php print BRANDING_FAVICON; ?>" /><?php } ?>
    
    <script type="text/javascript" src="/view/javascript/jquery.min.js"></script>
    <script type="text/javascript" src="/view/javascript/jquery-ui-custom.min.js"></script>
    <script type="text/javascript" src="/view/javascript/rc-splitter.js"></script>
    <script type="text/javascript" src="/view/theme/default/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="/view/javascript/piler.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    
</head>

<body class="has-navbar-fixed-top" onclick="Piler.add_shortcuts();">

<div id="deleteconfirm-modal" class="modal ">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" role="dialog" aria-hidden="true"><i class="icon-remove"></i></button>
    <h3><?php print $text_forward_selected_emails_to; ?></h3>
  </div>
  <div class="modal-body">
    <input type="text" id="restore_address" name="restore_address" />
  </div>
  <div class="modal-footer">
    <a href="#" class="button" data-dismiss="modal" aria-hidden="true"><?php print $text_close; ?></a>
    <a href="#" onclick="var addr =  $('#restore_address').val(); if(addr) { Piler.bulk_restore_messages('<?php print $text_restored; ?>', addr); }" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">OK</a>
  </div>
</div>

<?php if(!(OUTLOOK == 1 && SHOW_MENU_FOR_OUTLOOK == 0)) { ?>
    <div id="menu">
        <?php print $menu; ?>
    </div>
<?php } ?>

    <div id="messagebox1" class="alert alert-info lead"></div>

    <div id="piler1" class="container is-fluid">
     <div class="hero is-small" >
       
    <nav class="navbar is-transparent is-fullwidth">

    <div id="searchcontainer" class="navbar-menu">
      <div class="navbar-start">
         <input type="hidden" name="searchtype" id="searchtype" value="expert" />
         <input type="hidden" name="sort" id="sort" value="date" />
         <input type="hidden" name="order" id="order" value="0" />
         <input type="hidden" name="ref" id="ref" value="" />
         <input type="hidden" name="prefix" id="prefix" value="" />

         <div class="field has-addons ">
          <div class="control has-icons-left">
          <input class="input is-medium" type="text" id="_search" name="_search" placeholder="<?php print $text_enter_search_terms; ?>" <?php if(ENABLE_DELETE == 1) { ?>style="background: #faafbe;"<?php } ?> />
          <span class="icon is-medium is-left">
              <i class="fa fa-search"></i>
            </span>
        </div>      
        <div class="control">
            <button id="button_search" class="button is-primary is-medium"  onclick="Piler.expert(this); return false;"><?php print $text_search; ?></button>
        </div>
      </div>  
    
         </div>
       <div class="navbar-end">
         
          <button id="button_expert" class="button is-danger is-medium" onclick="$('#searchpopup1').addClass('is-active');"><?php print $text_advanced_search; ?> &nbsp;<span class="caret"></span></button>
      
         <div class="button is-notification is-medium navbar-item has-dropdown is-hoverable">
            <div class="navbar-link is-medium has-dropdown is-hoverable">
                <?php print $text_options; ?>
            </div>
            <div id="adminDropdown" class="navbar-dropdown is-hoverable">  
                <a class="navbar-item is-medium" href="#" onclick="Piler.saved_search_terms('<?php print $text_saved; ?>');"><?php print $text_save; ?></a>
                <a class="navbar-item is-medium" href="#" onclick="Piler.load_saved_search_terms();"><?php print $text_load; ?></a>
             </div> </div>  
            </div>
                    
                   
                  

               
          
          

    </div>

    </nav>
  </div>

    <?php print $popup; ?>
    <div id="mainscreen">
        <div id="mailleftcontainer">
        <?php if(ENABLE_FOLDER_RESTRICTIONS == 1) { ?>
        <div id="mailboxlist-container">
        <?php print $folder; ?>
        </div>

        <?php } ?>
        </div>
        <div id="mailrightcontainer<?php if(ENABLE_FOLDER_RESTRICTIONS == 0) { ?>nofolder<?php } ?>">

            <div id="mailrightcontent">
              <div id="mailcontframe">
                <div id="sspinner" class="alert alert-info lead"><i class="icon-spinner icon-spin icon-2x pull-left"></i><?php print $text_working; ?></div>
                <div id="messagelistcontainer" class="boxlistcontent"> 
                
                <?php print $content; ?>

                </div>
              </div>


              <div id="mailpreviewframe"></div>
              
          </div>

        </div>
    </div>

    <script type="text/javascript">
    $(document).ready(function(){
       split.init();
    });
    </script>


<?php if(TRACKING_CODE) { print TRACKING_CODE; } ?>



</body>
</html>

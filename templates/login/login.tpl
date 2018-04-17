<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><?php if($title_prefix) { print $title_prefix; ?> | <?php } ?><?php print $title; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if(SITE_KEYWORDS) { ?><meta name="keywords" content="<?php print SITE_KEYWORDS; ?>" /><?php } ?>
    <?php if(SITE_DESCRIPTION) { ?><meta name="description" content="<?php print SITE_DESCRIPTION; ?>" /><?php } ?>
    <?php if(PROVIDED_BY) { ?><meta name="author" content="<?php print PROVIDED_BY; ?>" /><?php } ?>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="/view/theme/sebulba/assets/css/bulma.css">
    <link rel="stylesheet" type="text/css" href="/view/theme/sebulba/assets/css/landing.css">
    
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    <!--   <link href="/view/theme/default/assets/css/metro-bootstrap.css" rel="stylesheet"> -->

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!-- original location: http://html5shim.googlecode.com/svn/trunk/html5.js -->
    <!--[if lt IE 9]>
      <script src="/view/theme/default/assets/js/html5.js"></script>
    <![endif]-->
	
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/view/theme/default/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/view/theme/default/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/view/theme/default/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/view/theme/default/assets/ico/apple-touch-icon-57-precomposed.png">
    <?php if(BRANDING_FAVICON) { ?><link rel="shortcut icon" href="<?php print BRANDING_FAVICON; ?>" /><?php } ?>
  </head>

  <body id="loginpage">
  <section class="hero is-info is-fullheight">
<?php if(!Registry::get('username')) { ?>
    <div class="hero-body">
        <div class="container has-text-centered">
               
    <div id="logincontainer" class="container">
            <div class="column is-4 is-offset-4">
                <div class="box">
                        <h3 class="title has-text-grey"><?php print $text_login; ?></h3>
        <div id="logo-lg"><img src="<?php print SITE_URL; ?><?php print SITE_LOGO_LG; ?>" alt="Archive Logo Image" title="Login" /></div>
        
        <form name="login" action="login.php" method="post" class="form-signin">

  
            
            
            <?php if(isset($x)){ ?><div class="notification is-warning"><button class="delete"></button><p class="">
                <?php print $x; ?></p> </div><?php } ?>
           
            <input type="hidden" name="relocation" value="<?php if(isset($_GET['route']) && !preg_match("/^login/", $_GET['route']) ) { if(isset($_SERVER['REDIRECT_URL'])) { print $_SERVER['REDIRECT_URL']; } else { print $_SERVER['QUERY_STRING']; } } ?>" />
            <div class="field">
                    <div class="control">
            <input type="text" class="input is-primary is-medium" name="username" placeholder="<?php print $text_email; ?>" required autofocus>
                    </div></div>
                    <div class="field">
                            <div class="control">
            <input type="password" class="input is-primary is-medium" name="password" placeholder="<?php print $text_password; ?>">
                            </div></div>

        <?php if(CAPTCHA_FAILED_LOGIN_COUNT > 0 && $failed_login_count > CAPTCHA_FAILED_LOGIN_COUNT) { ?>
            <img src="securimage/securimage_show.php" alt="captcha image" id="captcha" />
            <input type="text" class="input-block-level" name="captcha" placeholder="CAPTCHA" />
        <?php } ?>

            <button class="button is-block is-large is-primary is-fullwidth" type="submit" value="<?php print $text_submit; ?>"><?php print $text_submit; ?></button>

        </form>
        </div>

        <div id="compatibility" class="is-small">

            <?php if(ENABLE_GOOGLE_LOGIN == 1) { ?>
               <p><a href="<?php print $auth_url; ?>"><?php print $text_login_via_google; ?></a></p>
            <?php } ?>

        <?php if(ENABLE_DELETE == 1) { ?>
            <p><?php print $text_compliance_warning; ?></p>
        <?php } ?>

            <p><?php print COMPATIBILITY; ?></p>
        </div>

   </div>

<?php } ?>

<!-- <?php print PILER_LOGIN_HELPER_PLACEHOLDER; ?> -->

  <?php if(TRACKING_CODE) { print TRACKING_CODE; } ?>
        </div>
    </div>
    </div>
   </section>
  </body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print DEFAULT_LANG; ?>" lang="<?php print DEFAULT_LANG; ?>">

<head>
    <title><?php print $title; ?></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="en" />
    <?php if(SITE_KEYWORDS) { ?><meta name="keywords" content="<?php print SITE_KEYWORDS; ?>" /><?php } ?>
    <?php if(SITE_DESCRIPTION) { ?><meta name="description" content="<?php print SITE_DESCRIPTION; ?>" /><?php } ?>
    <?php if(PROVIDED_BY) { ?><meta name="author" content="<?php print PROVIDED_BY; ?>" /><?php } ?>
    <meta name="rating" content="general" />
    <meta name="robots" content="all" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="/view/theme/sebulba/assets/css/bulma.css">
    <link rel="stylesheet" href="/view/theme/sebulba/assets/css/bulma-extensions.min.css">
   
    
  
   <!-- <link href="/view/theme/default/assets/css/metro-bootstrap.css" rel="stylesheet" /> -->

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!-- original location: http://html5shim.googlecode.com/svn/trunk/html5.js -->
    <!--[if lt IE 9]>
      <script src="/view/theme/default/assets/js/html5.js"></script>
    <![endif]-->
    
    <!--script type="text/javascript" src="/view/javascript/jquery.min.js"></script-->

    <!--script type="text/javascript" src="/view/javascript/jquery-ui-custom.min.js"></script>
    <script type="text/javascript" src="/view/javascript/jscolor.js"></script>
    <script type="text/javascript" src="/view/javascript/fileupload.js"></script>
    <script type="text/javascript" src="/view/javascript/rc-splitter.js"></script>
    <script type="text/javascript" src="/view/theme/sebulba/assets/js/modal.js"></script>
    <script type="text/javascript" src="/view/theme/default/assets/js/bootstrap.js"></script-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="/view/javascript/piler.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    
    
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/view/theme/default/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/view/theme/default/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/view/theme/default/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/view/theme/default/assets/ico/apple-touch-icon-57-precomposed.png">
    <?php if(BRANDING_FAVICON) { ?><link rel="shortcut icon" href="<?php print BRANDING_FAVICON; ?>" /><?php } ?>
</head>

<body class="has-navbar-top" <?php


if(isset($this->request->get['route'])) {

   if($this->request->get['route'] == 'health/health') { ?> onload="Piler.load_health(); setInterval('Piler.load_health()', Piler.health_refresh * 1000);"<?php }
   if($this->request->get['route'] == 'stat/online') { ?> onload="setInterval('Piler.reload_page()', Piler.health_refresh * 1000);"<?php }
   if($this->request->get['route'] == 'import/jobs') { ?> onload="setInterval('Piler.reload_page()', 10 * 1000);"<?php }

} ?>>

<div id="menu">
    <?php print $menu; ?>
</div>

<div id="messagebox1" class="alert alert-info lead"></div>

<div id="piler1" class="container">


   <div id="main" class="container ">
     

   <section class="hero">
          <div class="hero-body">
            <div class="container">
              <h1 class="title title has-text-primary is-4">
               <?php if($title) { ?><?php print $title; ?><?php } ?>
              </h1>

            </div>
          </div>
        </section>

    
<div class="container">
      <?php print $content; ?>
</div>

   </div> <!-- main -->

   <div id="footer"><?php print $footer; ?></div>


</div>

<?php if(TRACKING_CODE) { print TRACKING_CODE; } ?>
<script async type="text/javascript" src="/view/theme/sebulba/assets/js/bulma.js"></script>
</body>
</html>

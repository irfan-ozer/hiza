<!DOCTYPE html>
<html lang="<?php echo $this->language ?>">
<head>
    <meta charset="utf-8">
    <title><?php echo $this->site->get('metaTitle') ?></title>
    <meta name="description" content="<?php echo $this->site->get('metaDescription') ?>">
    <meta name="keywords" content="<?php echo $this->site->get('metaKeywords') ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height" />

    <base href="<?php echo base_url('/') ?>" />

    <link rel="stylesheet" type="text/css" href="public/plugin/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="public/plugin/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="public/plugin/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet" type="text/css" href="public/plugin/fancybox/source/helpers/jquery.fancybox-buttons.css">
    <link rel="stylesheet" type="text/css" href="public/plugin/fancybox/source/helpers/jquery.fancybox-thumbs.css">
    <link rel="stylesheet" type="text/css" href="public/plugin/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="public/plugin/owl-carousel/owl.transitions.css">
    <link rel="stylesheet" type="text/css" href="public/plugin/owl-carousel/owl.theme.css">
    <link rel="stylesheet" type="text/css" href="public/plugin/pace/spin.css">
    <link rel="stylesheet" type="text/css" href="public/plugin/notify/pnotify.custom.min.css">
    <link rel="stylesheet" type="text/css" href="public/css/main.css" />
    <link rel="stylesheet" type="text/css" href="public/css/custom.css" />

    <?php foreach ($this->site->assets('css') as $asset): ?>
        <link rel="stylesheet" type="text/css" href="<?php echo $asset ?>" />
    <?php endforeach; ?>

    <link rel="shortcut icon" type="image/png" href="public/img/favicon.png">

    <script type="text/javascript" src="public/js/jquery.js"></script>
    <script type="text/javascript" src="public/js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="public/js/jquery.numeric.min.js"></script>
    <script type="text/javascript" src="public/js/bootstrap.filestyle.min.js"></script>
    <script type="text/javascript" src="public/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="public/plugin/fancybox/source/jquery.fancybox.js?v=2.1.5"></script>
    <script type="text/javascript" src="public/plugin/fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>
    <script type="text/javascript" src="public/plugin/fancybox/source/helpers/jquery.fancybox-buttons.js"></script>
    <script type="text/javascript" src="public/plugin/fancybox/source/helpers/jquery.fancybox-thumbs.js"></script>
    <script type="text/javascript" src="public/plugin/owl-carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="public/plugin/pace/pace.min.js"></script>
    <script type="text/javascript" src="public/plugin/notify/pnotify.custom.min.js"></script>
    <script type="text/javascript" src="public/js/smoothscroll.js"></script>

    <?php foreach ($this->site->assets('js') as $asset): ?>
        <script type="text/javascript" src="<?php echo $asset ?>"></script>
    <?php endforeach; ?>

    <script type="text/javascript" src="public/js/main.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <?php if ($ogType = $this->site->get('ogType')): ?>
        <meta property="og:type" content="<?php echo $ogType ?>" />
    <?php endif; ?>
    <?php if ($ogTitle = $this->site->get('ogTitle')): ?>
        <meta property="og:title" content="<?php echo htmlspecialchars($ogTitle) ?>" />
    <?php endif; ?>
    <?php if ($ogDescription = $this->site->get('ogDescription')): ?>
        <meta property="og:description" content="<?php echo htmlspecialchars($ogDescription) ?>" />
    <?php endif; ?>
    <?php if ($ogImage = $this->site->get('ogImage')): ?>
        <meta property="og:image" content="<?php echo base_url('/').$ogImage ?>"/>
    <?php endif; ?>

    <meta property="og:url" content="<?php echo current_url() ?>"/>

    <?php echo $this->site->get('customMeta') ?>
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-131351658-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-131351658-1');
</script>


<script>

function sayac()
{
	
	gtag("event","click",{event_category:"Arama"})




}



</script>





</head>
<body>

<a style="color:white; line-height: 17px; font-weight: bold;  font-size:12px; text-align: center;"  onclick="sayac()" href="tel:05326947587" >
    <style>

        .textshowhide{
            -webkit-animation: flash linear 0.1s infinite;
            animation: flash linear 1.3s infinite;
        }

        @-webkit-keyframes flash {
            0% { opacity: 9; }
            10% { opacity: .9; }
            20% { opacity: 9; }
        }

        @keyframes flash {
            0% { opacity: 1; }
            50% { opacity: .1; }
            100% { opacity: 1; }
        }
    </style>



    <div class="mobilshw" style="width: 100%; background-color: #7fbd34; position:fixed; text-align: center; z-index:99999; right: 0px; bottom: 0px; left: 0px;">
        <div class="textareacall" style="width: 100%; font-size:20px; line-height: 55px;  height: 55px;padding-right: 12px; background-color: #72b029;float:left;">
            <i  style=" font-size:31px; line-height: 55px; color:White;" class="fas fa-phone-volume "></i>
            <l class="textshowhide">7-24 , ARA HIZLI TEKLİF AL </l>

        </div>

        <div style="clear: both"></div>

    </div>
</a>



<header id="header">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="top-contact">
                <a  onclick="sayac()"  href="tel:<?= $this->site->get('sitePhone') ?>">
                    <span><?= $this->site->get('sitePhone') ?></span>
                </a>
            </div>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mobilmenu" aria-expanded="false">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?= clink('@home') ?>">
                    <img src="public/img/logo.png" class="logo-img" alt="Web Site Satışı Logo" width="200" height="116">
                </a>
            </div>

            <div class="collapse navbar-collapse" id="mobilmenu">
                <ul class="nav navbar-nav navbar-right">
                    <?php foreach ($this->menu->get('main') as $menu): ?>
                        <li class="<?= !empty($menu->childs) ? 'dropdown' : '' ?>
                                <?= clink($menu->link) == uri_string() ? 'active' : '' ?>
                                <?= uri_string() == "" && clink($menu->link) == './' ? 'active' : '' ?>">
                            <a href="<?= clink($menu->link) ?>" title="<?= $menu->hint ?>"
                               class="<?= !empty($menu->childs) ? ' dropdown-toggle' : '' ?>"
                                <?= !empty($menu->childs) ? 'data-toggle="dropdown" aria-expanded="false"' : '' ?>>
                                <?= $menu->title; ?><?= !empty($menu->childs) ? '<span class="caret"></span>' : '' ?>
                            </a>
                            <?php if (!empty($menu->childs)): ?>
                                <ul class="dropdown-menu">
                                    <?php foreach ($menu->childs as $child): ?>
                                        <li>
                                            <a href="<?= clink($child->link) ?>"
                                               title="<?= htmlspecialchars($child->title) ?>">
                                                <?= $child->title ?>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>
                        </li>
                    <?php endforeach; ?>
                    <?php foreach ($this->social->all() as $item): ?>
                        <li class="top-social">
                            <a href="<?= $item->link ?>" rel="external"
                               data-toggle="tooltip" data-placement="bottom"
                               title="<?= htmlspecialchars($item->title) ?>">
                                <i class="<?= $item->icon ?>"></i>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    </nav>
</header>

    <?php $this->view($view); ?>
	
	<!--
begin tag cloud : generated by TagCrowd.com
Feel free to modify as long as you keep this notice.

EMBEDDING INSTRUCTIONS:
1. Customize your cloud's style by editing the CSS where it says CUSTOMIZE below.
2. Insert this code in its entirety into your webpage or blog post.

This code and its rendered image are released under the Creative Commons Attribution-Noncommercial 3.0 Unported License. (http://creativecommons.org/licenses/by-nc/3.0/)

For COMMERCIAL USE LICENSING, visit https://tagcrowd.com/licensing.html
-->
<style type="text/css"><!-- #htmltagcloud{

/******************************************
 * CUSTOMIZE CLOUD CSS BELOW (optional)
 */
	font-size: 100%;
	width: auto;		/* auto or fixed width, e.g. 500px   */
	font-family:'lucida grande','trebuchet ms',arial,helvetica,sans-serif;
	background-color:#fff;
	margin:1em 1em 0 1em;
	border:2px dotted #ddd;
	padding:2em; 
/******************************************
 * END CUSTOMIZE
 */

}#htmltagcloud{line-height:2.4em;word-spacing:normal;letter-spacing:normal;text-transform:none;text-align:justify;text-indent:0}#htmltagcloud a:link{text-decoration:none}#htmltagcloud a:visited{text-decoration:none}#htmltagcloud a:hover{color:white;background-color:#05f}#htmltagcloud a:active{color:white;background-color:#03d}.wrd{padding:0;position:relative}.wrd a{text-decoration:none}.tagcloud0{font-size:1.0em;color:#ACC1F3;z-index:10}.tagcloud0 a{color:#ACC1F3}.tagcloud1{font-size:1.4em;color:#ACC1F3;z-index:9}.tagcloud1 a{color:#ACC1F3}.tagcloud2{font-size:1.8em;color:#86A0DC;z-index:8}.tagcloud2 a{color:#86A0DC}.tagcloud3{font-size:2.2em;color:#86A0DC;z-index:7}.tagcloud3 a{color:#86A0DC}.tagcloud4{font-size:2.6em;color:#607EC5;z-index:6}.tagcloud4 a{color:#607EC5}.tagcloud5{font-size:3.0em;color:#607EC5;z-index:5}.tagcloud5 a{color:#607EC5}.tagcloud6{font-size:3.3em;color:#4C6DB9;z-index:4}.tagcloud6 a{color:#4C6DB9}.tagcloud7{font-size:3.6em;color:#395CAE;z-index:3}.tagcloud7 a{color:#395CAE}.tagcloud8{font-size:3.9em;color:#264CA2;z-index:2}.tagcloud8 a{color:#264CA2}.tagcloud9{font-size:4.2em;color:#133B97;z-index:1}.tagcloud9 a{color:#133B97}.tagcloud10{font-size:4.5em;color:#002A8B;z-index:0}.tagcloud10 a{color:#002A8B}.freq{font-size:10pt !important;color:#bbb}#credit{text-align:center;color:#333;margin-bottom:0.6em;font:0.7em 'lucida grande',trebuchet,'trebuchet ms',verdana,arial,helvetica,sans-serif}#credit a:link{color:#777;text-decoration:none}#credit a:visited{color:#777;text-decoration:none}#credit a:hover{color:white;background-color:#05f}#credit a:active{text-decoration:underline}// -->
</style>

<div id="htmltagcloud"> <span id="0" class="wrd tagcloud0"><a href="#tagcloud">acipan</a></span> <span id="1" class="wrd tagcloud0"><a href="#tagcloud">akili</a></span> <span id="2" class="wrd tagcloud0"><a href="#tagcloud">akilli</a></span> <span id="3" class="wrd tagcloud2"><a href="#tagcloud">anahtar</a></span> <span id="4" class="wrd tagcloud2"><a href="#tagcloud">banyo</a></span> <span id="5" class="wrd tagcloud0"><a href="#tagcloud">boya</a></span> <span id="6" class="wrd tagcloud0"><a href="#tagcloud">boyama</a></span> <span id="7" class="wrd tagcloud0"><a href="#tagcloud">burada</a></span> <span id="8" class="wrd tagcloud10"><a href="#tagcloud">bursa</a></span> <span id="9" class="wrd tagcloud0"><a href="#tagcloud">daire</a></span> <span id="10" class="wrd tagcloud6"><a href="#tagcloud">dekorasyon</a></span> <span id="11" class="wrd tagcloud0"><a href="#tagcloud">diyafon</a></span> <span id="12" class="wrd tagcloud4"><a href="#tagcloud">dolabi</a></span> <span id="13" class="wrd tagcloud0"><a href="#tagcloud">elektrik</a></span> <span id="14" class="wrd tagcloud6"><a href="#tagcloud">ev</a></span> <span id="15" class="wrd tagcloud5"><a href="#tagcloud">firmalari</a></span> <span id="16" class="wrd tagcloud0"><a href="#tagcloud">fiyati</a></span> <span id="17" class="wrd tagcloud0"><a href="#tagcloud">fiyatlari</a></span> <span id="18" class="wrd tagcloud2"><a href="#tagcloud">ic</a></span> <span id="19" class="wrd tagcloud0"><a href="#tagcloud">kurumsal</a></span> <span id="20" class="wrd tagcloud0"><a href="#tagcloud">metrekare</a></span> <span id="21" class="wrd tagcloud0"><a href="#tagcloud">mimar</a></span> <span id="22" class="wrd tagcloud2"><a href="#tagcloud">modelleri</a></span> <span id="23" class="wrd tagcloud6"><a href="#tagcloud">mutfak</a></span> <span id="24" class="wrd tagcloud0"><a href="#tagcloud">nilufer</a></span> <span id="25" class="wrd tagcloud0"><a href="#tagcloud">parke</a></span> <span id="26" class="wrd tagcloud0"><a href="#tagcloud">sirketi</a></span> <span id="27" class="wrd tagcloud0"><a href="#tagcloud">sirketleri</a></span> <span id="28" class="wrd tagcloud2"><a href="#tagcloud">sistemleri</a></span> <span id="29" class="wrd tagcloud5"><a href="#tagcloud">tadilat</a></span> <span id="30" class="wrd tagcloud4"><a href="#tagcloud">tadilati</a></span> <span id="31" class="wrd tagcloud2"><a href="#tagcloud">teslim</a></span> <span id="32" class="wrd tagcloud0"><a href="#tagcloud">ustalar</a></span> <span id="33" class="wrd tagcloud0"><a href="#tagcloud">ustalari</a></span> <span id="34" class="wrd tagcloud0"><a href="#tagcloud">ustasi</a></span> <span id="35" class="wrd tagcloud0"><a href="#tagcloud">uygulamalari</a></span> <span id="36" class="wrd tagcloud4"><a href="#tagcloud">yapi</a></span>  <span id="36" class="wrd tagcloud4"><a href="#tagcloud">yapi</a></span>  
 <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Dekoratif</a></span> 
  <span id="36" class="wrd tagcloud4"><a href="#tagcloud">boya örnekleri</a></span> 
   <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Akıllı Ev Sistemleri</a></span> 
    <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Boyacı Ustası</a></span>
 <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Badana Fiyatları</a></span> 
 <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Ev Boya Dekorasyonları</a></span> 
 <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Bursa Badana Boya</a></span>  
  <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Dekoratif</a></span> 
   <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Banyo Dekorasyounu</a></span> 
    <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Dekoratif</a></span> 
	 <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Mutfak Yenileme</a></span> 
	 
	  <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Cam Balkon Fiyatları</a></span> 
	   <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Elektrik Ustası</a></span> 
	    <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Dekoratif</a></span> 
		 <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Alarm güvenlik Sistemleri</a></span> 
		  <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Audio Akıllı ev Sistemleri</a></span> 
		   <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Mağaza Güvenlik Sistemleri</a></span> 
		    <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Akıllı Bina Sistemleri</a></span> 
			 <span id="36" class="wrd tagcloud4"><a href="#tagcloud">Kablosuz Akıllı Ev</a></span> 
<!-- end tag cloud : generated by TagCrowd.com : please keep this notice -->
</div></div>

<footer id="footer" class="mT30">
    <div class="container">
        <div class="row">
            <div class="col-sm-3 mB30 clearfix">
                <h4 class="caption">HİZA YAPI HAKKINDA</h4>
                <p>
                    <?= $this->site->get('aboutText') ?>
                </p>
            </div>
            <div class="col-sm-2 mB30">
                <h4 class="caption">MENÜ</h4>
                <ul class="footer-menu">
                    <?php foreach ($this->menu->get('footer') as $key => $item): ?>
                        <li>
                            <a href="<?= clink($item->link) ?>" title="<?= $item->hint ?>">
                                <?= $item->title ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="col-sm-2 mB30 clearfix">
                <h4 class="caption">İLETİŞİM</h4>
                <address>
                    <span><?= $this->site->get('siteAddress') ?></span><br>
                    <span class="footer-phone"><?= $this->site->get('sitePhone') ?></span>
                </address>
                <ul class="footer-social">
                    <?php foreach ($this->social->all() as $item): ?>
                        <li>
                            <a href="<?= $item->link ?>" rel="external"
                               data-toggle="tooltip" data-placement="bottom"
                               title="<?= htmlspecialchars($item->title) ?>">
                                <i class="<?= $item->icon ?>"></i>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="col-sm-3 mB30 clearfix">
                <h4 class="caption">BİZE ULAŞIN</h4>
                <form class="footer-form" id="callyou" method="post" accept-charset="utf-8">
                    <div class="form-group">
                        <input type="text" class="form-control" name="fullname" placeholder="Adınız Soyadınız">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control mask-phone" name="phone" placeholder="Telefon Numaranız">
                    </div>
                    <button type="button" class="btn1 pull-right btnCallyou">Gönder</button>
                </form>
            </div>
			
			
            <div class="col-sm-2 mB30 clearfix">
                <div class="copyright">
                    <br><br>
                      Hiza Yapı Dekorasyon 
                    </a>
                </div>
            </div>

        </div>
    </div>
</footer>

</body>
</html>

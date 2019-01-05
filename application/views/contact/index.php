<main id="main">

    <?php if (! empty($this->module->arguments->googleMap)): ?>
    <section class="banner clearfix">
        <div id="map-canvas" class="bShadow" style="width: 100%; height: 400px;"></div>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAagFoZeT4A4IiqvyO_RRf4dQ5OnYRFyHQ&libraries=places"></script>
        <script type="text/javascript">
            function initialize() {
                var konum = new google.maps.LatLng(<?php echo $this->module->arguments->googleMap ?>);
                var isDraggable = !('ontouchstart' in document.documentElement);
                var mapOptions = {
                    zoom: 17,
                    center: konum,
                    scrollwheel: false,
                    draggable: isDraggable,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

                var contentString = '<?php echo htmlspecialchars($this->module->arguments->googleMapText) ?>';

                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                var marker = new google.maps.Marker({
                    position: konum,
                    map: map,
                    icon: 'public/img/marker3.png',
                    title: '<?php htmlspecialchars($this->module->arguments->title) ?>'
                });

                if (marker.getAnimation() != null) {
                    marker.setAnimation(null);
                } else {
                    marker.setAnimation(google.maps.Animation.DROP);
                }

                google.maps.event.addListener(marker, 'click', function() {
                    infowindow.open(map, marker);
                });
                console.log();
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </section>
    <?php endif; ?>

    <section class="content clearfix">
        <h3 class="captionCenter mB0">
            <span><?= $this->module->arguments->title ?></span>
        </h3>
        <div class="container">
            <div class="content-body clearfix">
                <div class="row">
                    <div class="col-sm-3 text-center mB30 contact-col">
                        <img src="public/img/adres.svg" alt="Gürkayalar adres" height="63" class="logo-img">
                        <p><?= $this->module->arguments->address ?></p>
                    </div>
                    <div class="col-sm-3 text-center mB30 contact-col">
                        <img src="public/img/telefon.svg" alt="Gürkayalar Telefon" height="63" class="logo-img">
                        <p>Telefon ve Faks</p>
                        <a class="contact-phone" href="tel:<?= $this->module->arguments->phone ?>">
                            <span><?= $this->module->arguments->phone ?></span>
                        </a>
                    </div>
                    <div class="col-sm-3 text-center mB30 contact-col">
                        <img src="public/img/message.svg" alt="Gürkayalar Mail" height="63" class="logo-img">
                        <p>Mail</p>
                        <span><?= $this->module->arguments->email ?></span>
                    </div>
                    <div class="col-sm-3 text-center mB30 contact-col">
                        <img src="public/img/sosyal.svg" alt="Gürkayalar Sosyal Medya" class="logo-img" height="63">
                        <div class="clearfix"></div>
                        <ul class="contact-social">
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
                </div>
                <div class="row">

                    <form method="post" action="<?php echo clink('@contact') ?>" accept-charset="utf-8" class="contact-form clearfix mB30">
                        <?php echo $this->site->alert() ?>

                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="<?php echo lang('contact-fullname') ?>"
                                               name="fullname" required="required" value="<?php echo set_value('fullname') ?>">
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="<?php echo lang('contact-email') ?>"
                                               name="email" required="required" value="<?php echo set_value('email') ?>" />
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <input type="text" class="form-control mask-phone" placeholder="<?php echo lang('contact-phone') ?>"
                                               name="phone" required="required" value="<?php echo set_value('phone') ?>" />
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-xs-12">
                            <textarea class="form-control" placeholder="<?php echo lang('contact-message') ?>"
                                      name="comment" required="required" rows="5"><?php echo set_value('comment') ?></textarea>
                        </div>

                        <div class="col-xs-12 text-right mT15">
                            <button type="submit" class="btn btn1"><span class="glyphicon glyphicon-ok"></span>&nbsp;
                                <?php echo lang('contact-send') ?></button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>

</main>

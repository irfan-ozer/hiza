<main id="main">
    <section class="banner clearfix">
        <?php if (isset($this->banner)): ?>
            <?php $this->view('banner/slider') ?>
        <?php endif; ?>
    </section>
    <section class="last-project clearfix">
        <h3 class="captionCenter">
            <span>TAMAMLANAN İŞLER</span>
        </h3>
        <div class="container">
            <div class="row">
                <?php if (!empty($lastProjects)): ?>
                    <div class="w100 clearfix last-project-slider">

                        <div class="buttons" id="Prev"><i class="fa fa-angle-left"></i></div>
                        <div class="buttons" id="Next"><i class="fa fa-angle-right"></i></div>

                        <div class="col-md-6 mB30 clearfix">
                            <div id="son-proje1">
                                <?php foreach ($lastProjects as $key => $lastProject): ?>
                                    <div class="item">
                                        <?php if (!empty($lastProject->images)): ?>
                                            <?php foreach ($lastProject->images as $image): ?>
                                                <div class="w50 last-project-img">
                                                    <a href="<?= uploadPath($image->image, 'project/normal') ?>"
                                                       rel="gallery[<?= $key ?>]" class="db fancyBox">
                                                        <div class="filter"></div>
                                                        <img src="<?= uploadPath($image->image, 'project/showcase') ?>"
                                                             alt="<?= htmlspecialchars($lastProject->title) ?>">
                                                    </a>
                                                </div>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                        <div class="col-md-6 mB30">
                            <h1 class="caption">TAMAMLANAN PROJELER</h1>
                            <div id="son-proje2">
                                <?php foreach ($lastProjects as $lastProject): ?>
                                    <div class="item">
                                        <h3 class="caption-alt eclipse">
                                            <?= $lastProject->title ?>
                                        </h3>
                                        <p>
                                            <?= $lastProject->summary ?>
                                        </p>
                                        <a class="btn1"
                                           href="<?= clink(array('@project', $lastProject->slug, $lastProject->id)) ?>">
                                            Detaya Git
                                        </a>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>

                    </div>
                <?php endif; ?>
            </div>
        </div>
    </section>

    <section class="projects cover" style="background-image: url(public/img/projects.png);">
        <div class="container">
            <div class="row">
                <?php if (! empty($nextProject)): ?>
                    <div class="col-md-6 mB30 projects-left">
                        <h2 class="caption"><?= $nextProject->title ?></h2>
                        <div class="row">
                            <div class="col-sm-8 mB15 text">
                                <p>
                                    <?= $nextProject->summary ?>
                                </p>
                            </div>
                            <div class="col-sm-4 mB15">
                                <img class="img-responsive center-block"
                                     src="<?= uploadPath($nextProject->image, 'category') ?>"
                                     alt="<?= htmlspecialchars($nextProject->title) ?>">
                            </div>
                            <div class="col-sm-12">
                                <a class="btn1" href="<?= clink(array('@category', $nextProject->slug, $nextProject->id)) ?>">
                                    Projeler
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                <?php if (! empty($doneProject)): ?>
                    <div class="col-md-6 mB30 projects-right">
                        <h2 class="caption"><?= $doneProject->title ?></h2>
                        <div class="row">
                            <div class="col-sm-8 mB15 text">
                                <p>
                                    <?= $doneProject->summary ?>
                                </p>
                            </div>
                            <div class="col-sm-4 mB15">
                                <img class="img-responsive center-block"
                                     src="<?= uploadPath($doneProject->image, 'category') ?>"
                                     alt="<?= htmlspecialchars($doneProject->title) ?>">
                            </div>
                            <div class="col-sm-12">
                                <a class="btn1" href="<?= clink(array('@category', $doneProject->slug, $doneProject->id)) ?>">
                                    Projeler
                                </a>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </section>
    <section class="services bG clearfix">
        <h3 class="captionCenter">
            <span class="bG"> HİZMETLERİMİZ - TEKLİF ALMAK İÇİN :<a  onclick="sayac()" href="tel:0532 964 75 87">(532) 964 75 87</a> </span>
        </h3>
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs">
                    <div class="man">
                        <img src="public/img/man.png"
                             alt="hiza yapı dekorasyon">
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <?php if (! empty($services)): ?>
                            <?php foreach ($services as $service): ?>
                                <div class="col-md-6 mB15">
                                    <a class="db" href="<?= clink(array('@service', $service->slug, $service->id)) ?>">
                                        <div class="service-box clearfix">
                                            <img class="trlY svg"
                                                 src="<?= uploadPath($service->icon, 'service/svg') ?>"
                                                 alt="<?= htmlspecialchars($service->title) ?>">
                                            <div class="text">
                                                <h4 class="f7"><?= $service->title ?></h4>
                                                <p>
                                                    <?= $service->summary ?>
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="news clearfix">
        <h3 class="captionCenter">
            <span>SEKTÖRÜN BİR NUMARALI TADİLAT FİRMASI</span>
        </h3>
        <div class="container">
            <div class="row">
                <?php if (! empty($news)): ?>
                    <?php foreach ($news as $new): ?>
                        <div class="col-md-4 mB30">
                            <div class="news-box clearfix">
                                <a href="<?= clink(array('@news', $new->slug, $new->id)) ?>">
                                    <img class="img-responsive"
                                         src="<?= uploadPath($new->image, 'news') ?>"
                                         alt="<?= htmlspecialchars($new->title) ?>">
                                </a>
                                <a href="<?= clink(array('@news', $new->slug, $new->id)) ?>">
                                    <h4 class="eclipse"><?= $new->title ?></h4>
                                </a>
                                <p>
                                    <?= $new->summary ?>
                                </p>
                                <div class="time pull-left">
                                    <?= $this->date->set($new->date)->dateWithName() ?>
                                </div>
                                <a class="btn1 sm pull-right"
                                   href="<?= clink(array('@news', $new->slug, $new->id)) ?>">
                                    Detaya Git
                                </a>
                            </div>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </div>
    </section>
    <?php if (! empty($references)): ?>
        <section class="referance main-ref">
            <h3 class="captionCenter">
                <span>REFERANSLAR</span>
            </h3>
            <div class="container">
                <div class="row">
                    <div class="referanslar">

                        <div class="buttons" id="Prev"><i class="fa fa-angle-left"></i></div>
                        <div class="buttons" id="Next"><i class="fa fa-angle-right"></i></div>

                        <div id="referanslar">
                            <?php foreach ($references as $reference): ?>
                                <div class="item flexCC">
                                    <img src="<?= uploadPath($reference->image, 'reference') ?>"
                                         alt="<?= htmlspecialchars($reference->title) ?>">
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <?php endif; ?>
</main>
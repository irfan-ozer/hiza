<main id="main">
    <section class="banner clearfix">
        <div class="bread cover" style="background-image: url(public/img/bread-back.png);"></div>
    </section>

    <section class="content clearfix">
        <div class="container">
            <div class="content-body clearfix">
                <div class="row">
                    <div class="col-sm-12 project-detail-title">
                        <h3><?= $project->title ?></h3>
                    </div>
                    <div class="col-sm-4 mB30">

                        <div id="project-slide" class="owl-carousel owl-theme clearfix">
                            <div class="item">
                                <a class="fancyBox db" rel="gallery"
                                   href="<?= uploadPath($project->image, 'project') ?>">
                                    <img src="<?= uploadPath($project->image, 'project/showcase') ?>"
                                         alt="<?= htmlspecialchars($project->title) ?>">
                                </a>
                            </div>
                            <?php if (!empty($project->images)): ?>
                                <?php foreach ($project->images as $image): ?>
                                    <div class="item">
                                        <a class="fancyBox db" rel="gallery"
                                           href="<?= uploadPath($image->image, 'project/normal') ?>">
                                            <img src="<?= uploadPath($image->image, 'project/show') ?>"
                                                 alt="<?= htmlspecialchars($project->title) ?>">
                                        </a>
                                    </div>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </div>

                        <div id="project-slide-thumb" class="owl-carousel owl-theme clearfix">
                            <div class="item">
                                <img src="<?= uploadPath($project->image, 'project/thumb') ?>"
                                     alt="<?= htmlspecialchars($project->title) ?>">
                            </div>
                            <?php if (!empty($project->images)): ?>
                                <?php foreach ($project->images as $image): ?>
                                    <div class="item">
                                        <img src="<?= uploadPath($image->image, 'project/thumb') ?>"
                                             alt="<?= htmlspecialchars($project->title) ?>">
                                    </div>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </div>

                    </div>
                    <div class="col-sm-3 mB30">
                        <div class="project-detail">
                            <img src="public/img/project-detail1.png" class="logo-img" alt="Proje Tipi">
                            <span>Proje Tipi: </span><?= $project->type ?>
                        </div>
                        <div class="project-detail">
                            <img src="public/img/project-detail2.png" class="logo-img" alt="Lokasyon">
                            <span>Lokasyon: </span><?= $project->location ?>
                        </div>
                        <div class="project-detail">
                            <img src="public/img/project-detail3.png" class="logo-img" alt="Fiyat">
                            <span>Fiyatı: </span><?= $project->price ?>
                        </div>
                        <div class="project-detail">
                            <img src="public/img/project-detail4.png" class="logo-img" alt="Oda Tipi">
                            <span>Oda Tipi: </span><?= $project->room ?>
                        </div>
                    </div>
                    <div class="col-sm-5 mB30">
                        <div class="project-detail-text">
                            <h4 class="caption">Proje Özellikleri</h4>
                            <?= $project->detail ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php $this->view('share', ['content' => $project]) ?>
        </div>
    </section>

    <?php if (! empty($project->others)): ?>
        <section class="other-project">
            <h3 class="captionLeft mB0">
                <div class="container">
                    <span>DİĞER PROJELER</span>
                </div>
            </h3>
            <div class="container">
                <div class="row">
                    <?php foreach ($project->others as $other): ?>
                        <div class="col-md-4 col-sm-6 mB30">
                            <a href="<?= clink(array('@project', $other->slug, $other->id)) ?>">
                                <div class="project-box">
                                    <img src="<?= uploadPath($other->image, 'project/showcase') ?>"
                                         alt="<?= htmlspecialchars($other->title) ?>">
                                    <h3 class="caption trlY"><?= $other->title ?></h3>
                                </div>
                            </a>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </section>
    <?php endif; ?>

    <?php $this->view('lastbar') ?>
</main>

<div class="row">
    <form action="" method="post" enctype="multipart/form-data">
        <div class="col-md-8">
            <?php echo $this->utils->alert(); ?>

            <div class="panel panel-default">
                <div class="panel-heading"><i class="fa fa-edit"></i> Kayıt Düzenle</div>
                <div class="panel-body">
                    <p class="help-block">
                        Lütfen kayıt yaparken icon veya resimden yalnız birini seçiniz. İkisinin seçilmesi halinde
                        yalnızca resim dikkate alınacaktır.
                    </p>
                    <?php echo bsFormText('title', 'Başlık', array('required' => true, 'value' => $record->title)) ?>
                    <?php echo bsFormText('link', 'Bağlantı', array('required' => true, 'value' => $record->link)) ?>
                    <?php echo bsFormImage('image', 'Resim', array('value' => $record->image, 'path' => '../public/upload/social/')) ?>


                </div>
                <div class="panel-footer">
                    <button class="btn btn-success" type="submit">Kaydet</button>
                    <a class="btn btn-default" href="<?php echo $this->module ?>/records">Vazgeç</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading"><i class="fa fa-fonticons"></i> İcon Seçimi</div>
                <div class="panel-body">
                    <?php foreach ($icons as $key => $icon): ?>
                        <div class="radio" style="margin-bottom: 16px;">
                            <label>
                                <input type="radio" name="icon" value="<?= $icon ?>"
                                    <?= $record->icon == $icon ? 'checked' : '' ?>>
                                <i class="<?= $icon ?>"></i> <?= $key ?>
                            </label>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>


    </form>
</div>


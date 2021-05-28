<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Requerimiento */
/* @var $form yii\widgets\ActiveForm */

?>

<div class="requerimiento-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'fecha_solicitud')->textInput()->hiddenInput()->label(false) ?>

    <?= 
        $form->field($model, 'id_tipo_requerimiento')->dropdownList([
            $listaTipoRequerimiento
        ],
        ['prompt'=>'SELECCIONAR TIPO DE REQUERIMIENTO...']
    )->label('DEPARTAMENTO: ');
    ?>

    

    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>
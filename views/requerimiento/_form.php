<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Requerimiento */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="requerimiento-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php 
        $fecha = date('d-m-Y H:i:s');
        $model->fecha_solicitud = $fecha;
    ?>

    <?= $form->field($model, 'fecha_solicitud')->hiddenInput()->label(false) ?>


    <?= 
        $form->field($model, 'id_tipo_requerimiento')->dropdownList([
            $listaTipoRequerimiento
        ],
        ['prompt'=>'SELECCIONAR TIPO DE REQUERIMIENTO...']
    );
    ?>

    <?= $form->field($model, 'objetivo')->textarea(['rows' => '4']) ?>

    <?= $form->field($model, 'descripcion')->textarea(['rows' => '8']) ?>

    <?= $form->field($model, 'datos')->textarea(['rows' => '4']) ?>

    <!-- <?#= $form->field($model, 'fecha_requerida')->textInput() ?> -->

    


    <div class="form-group field-requerimiento-fecha_requerida required">
        <label class="control-label" for="requerimiento-fecha_requerida">FECHA REQUERIDA</label>
        <input type="date" id="requerimiento-fecha_requerida" class="form-control" name="Requerimiento[fecha_requerida]" aria-required="true">
        <div class="help-block"></div>
    </div>





    <?php 
        $fecha = date('d-m-Y H:i:s');
        $model->fecha_registro = $fecha;
    ?>
    <?= $form->field($model, 'fecha_registro')->hiddenInput()->label(false) ?>


    <?php 
        $p00 = Yii::$app->user->identity->p00;
        // $model->p00_solicitante = $p00;
    ?>
    <!-- <?#= $form->field($model, 'p00_solicitante')->textInput()->label('P00 DEL SOLICITANTE') ?> -->
    <?= $form->field($model, 'p00_solicitante')->hiddenInput(['value'=>$p00])->label(false) ?>

    <?= 
        $form->field($model, 'id_frecuencia')->dropdownList([
            $listaFrecuencia
        ],
        ['prompt'=>'SELECCIONAR FRECUANCIA...']
    );
    ?>

    

    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>
<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\EstatusRequerimientoRequerimiento */

$this->title = 'Nro. Auditoria de Requerimiento: '.$model->id_estatus_requerimeinto__requerimiento;
$this->params['breadcrumbs'][] = ['label' => 'Estatus Requerimiento Requerimientos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="estatus-requerimiento-requerimiento-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <!-- <p>
        <?#= Html::a('Actualizar', ['update', 'id' => $model->id_estatus_requerimeinto__requerimiento], ['class' => 'btn btn-primary']) ?>
        <?#= Html::a('Eliminar', ['delete', 'id' => $model->id_estatus_requerimeinto__requerimiento], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p> -->

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_estatus_requerimeinto__requerimiento',
            'id_requerimiento',
            'id_estatus_requerimiento',
            'fecha_estatus_requerimiento',
        ],
    ]) ?>

</div>

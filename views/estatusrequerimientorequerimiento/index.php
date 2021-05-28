<?php

use yii\helpers\Html;
use yii\grid\GridView;

use app\models\EstatusRequerimiento;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EstatusRequerimientoRequerimientoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Estatus Requerimiento Requerimientos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estatus-requerimiento-requerimiento-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Estatus Requerimiento Requerimiento', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_estatus_requerimeinto__requerimiento',
            'id_requerimiento',
            // 'id_estatus_requerimiento',
            [
                'label' => 'ESTATUS REQUERIMIENTO',
                'content' => function($data){
                    $estatus = EstatusRequerimiento::find()->where(['id_estatus_requerimiento' => $data->id_estatus_requerimiento])->all();
                    $resp = $estatus[0]['descripcion'];
                    return  $resp;
                }
            ],
            'fecha_estatus_requerimiento',
            

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => ('{view}')
                
            ],
        ],
    ]); ?>

</div>

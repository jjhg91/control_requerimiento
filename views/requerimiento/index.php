<?php

use yii\helpers\Html;
use yii\grid\GridView;

use app\models\EstatusRequerimientoRequerimiento;
use app\models\EstatusRequerimiento;
use app\models\usuario;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RequerimientoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */




$this->title = 'REQUERIMIENTOS';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="requerimiento-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Crear Requerimiento', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_requerimiento',
            'fecha_solicitud',
            'objetivo',
            //'descripcion',
            //'datos',
            //'fecha_requerida',
            //'fecha_registro',
            // 'p00_solicitante',
            [
                'label' => 'SOLICITANTE',
                'content' => function($data){
                    $solicitante = Usuario::find()->where(['p00' => $data->p00_solicitante])->all();
                    $resp = $solicitante[0]['nombres'] . " ". $solicitante[0]['apellidos'];
                    // $resp = $data->p00_solicitante;
                    return  $resp;
                }
            ],
            [
                'label' => 'ESTATUS',
                'content' => function($model){
                    $estatusR = EstatusRequerimientoRequerimiento::find()->where(['id_requerimiento' => $model->id_requerimiento])->orderBy(['id_estatus_requerimeinto__requerimiento' => SORT_DESC])->all();
                    $estatusReq = $estatusR[0]->id_estatus_requerimiento;
                    $estatus = EstatusRequerimiento::find()->where(['id_estatus_requerimiento' => $estatusReq])->one();
                    
                    return  $estatus->descripcion;
                    }
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => ('{view}')
                
            ],
        ],
    ]); ?>

</div>
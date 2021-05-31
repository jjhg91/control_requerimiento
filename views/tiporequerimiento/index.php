<?php

use yii\helpers\Html;
use yii\grid\GridView;

use app\models\AreaResponsable;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TipoRequerimientoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tipos de Requerimientos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tipo-requerimiento-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Crear Tipo Requerimiento', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            // ['class' => 'yii\grid\SerialColumn'],

            'id_tipo_requerimiento',
            'descripcion',
            // 'id_area_responsable',
            [
                'label' => 'AREA RESPONSABLE',
                'content' => function($data){
                    $responsable = AreaResponsable::find()->where(['id_area_responsable' => $data->id_area_responsable])->all();
                    $resp = $responsable[0]['descripcion'];
                    return  $resp;
                }
            ],
            'envio_correo:boolean',
            'habilitado:boolean',
            

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => ('{view}')
                
            ],
        ],
    ]); ?>


</div>

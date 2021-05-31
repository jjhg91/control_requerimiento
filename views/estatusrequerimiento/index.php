<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EstatusRequerimientoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Estatus de Requerimientos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="estatus-requerimiento-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Crear Estatus de Requerimiento', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            // ['class' => 'yii\grid\SerialColumn'],

            'id_estatus_requerimiento',
            'descripcion',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => ('{view}')
                
            ],
        ],
    ]); ?>

</div>

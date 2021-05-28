<?php

use yii\helpers\Html;
use yii\grid\GridView;

use app\models\Cargo;
use app\models\Departamento;
use app\models\EstatusUsuario;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UsuarioSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Usuarios';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuario-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Crear Usuario', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'p00',
            'nombres',
            'apellidos',
            // 'password',
            // 'correo',
            // 'telefono',
            // 'id_departamento',
            // 'id_cargo',
            // 'id_estatus_usuario',
            'username',
            //'authKey',
            //'accessToken',
            [
                'label' => 'DEPARTAMENTO',
                'content' => function($data){
                    $departamento = Departamento::find()->where(['id_departamento' => $data->id_departamento])->all();
                    $resp = $departamento[0]['descripcion'];
                    return  $resp;
                }
            ],
            [
                'label' => 'CARGO',
                'content' => function($data){
                    $cargo = Cargo::find()->where(['id_cargo' => $data->id_cargo])->all();
                    $resp = $cargo[0]['descripcion'];
                    return  $resp;
                    }
            ],
            [
                'label' => 'ESTATUS USUARIO',
                'content' => function($data){
                    $estatusUsuario = EstatusUsuario::find()->where(['id_estatus_usuario' => $data->id_estatus_usuario])->all();
                    $resp = $estatusUsuario[0]['descripcion'];
                    return  $resp;
                    }
            ],

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => ('{view}')
                
            ],
        ],
    ]); ?>

</div>
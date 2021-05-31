<?php

use yii\helpers\Html;
use yii\grid\GridView;

use app\models\PerfilUsuario;
use app\models\Usuario;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PerfilUsuarioUsuarioSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Auditoría Perfiles de Usuarios';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="perfil-usuario-usuario-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <!-- <p>
        <?= Html::a('Crear Perfil Usuario Usuario', ['create'], ['class' => 'btn btn-success']) ?>
    </p> -->

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'columns' => [
            // ['class' => 'yii\grid\SerialColumn'],

            'id_perfil_usuario__usuario',
            'p00',
            [
                'label' => 'NOMBRE APELLIDO',
                'content' => function($data){
                    $usua = Usuario::find()->where(['p00' => $data->p00])->all();
                    $resp = $usua[0]['nombres'] .' '. $usua[0]['apellidos'];
                    return  $resp;
                    }
            ],
            // 'id_perfil_usuario',
            [
                'label' => 'PEFIL USUARIO',
                'content' => function($data){
                    $perf = PerfilUsuario::find()->where(['id_perfil_usuario' => $data->id_perfil_usuario])->all();
                    $resp = $perf[0]['descripcion'];
                    return  $resp;
                    }
            ],
            'estatus_perfil:boolean',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => ('{view}')
                
            ],
        ],
    ]); ?>

</div>

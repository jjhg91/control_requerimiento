<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Usuario */

$this->title = 'P00 Usuario: '.$model->p00;
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="usuario-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Actualizar', ['update', 'id' => $model->p00], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Eliminar', ['delete', 'id' => $model->p00], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Estas seguro que deseas eliminar el usuario?',
                'method' => 'POST',
            ],
        ]) ?> 
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'p00',
            'nombres',
            'apellidos',
            ['label' => 'Usuario', 'value' => $model->username],
            ['label' => 'Contraseña', 'value' => '* * * * * * * * * * * * * * * * * * '],
            'correo',
            'telefono',
            ['label' => 'Departamento', 'value' => $departamento],
            ['label' => 'Cargo', 'value' => $cargo],
            ['label' => 'Estatus Usuario', 'value' => $estatus],
            ['label' => 'Perfiles del Usuario','value' =>  $perfiles ]
        ],
    ]) ?>
</div>
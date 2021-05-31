<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cargo".
 *
 * @property int $id_cargo
 * @property string $descripcion
 *
 * @property Usuario[] $usuarios
 */
class Cargo extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cargo';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['descripcion','habilitado'], 'required'],
            [['descripcion'], 'string'],
            [['habilitado'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_cargo' => 'Id Cargo',
            'descripcion' => 'Descripcion',
            'habilitado' => 'Habilitado',
        ];
    }

    /**
     * Gets query for [[Usuarios]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuarios()
    {
        return $this->hasMany(Usuario::className(), ['id_cargo' => 'id_cargo']);
    }
}

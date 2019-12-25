<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "fields_tables".
 *
 * @property int $id
 * @property string|null $key
 * @property string|null $vaule
 */
class FieldsTables extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'fields_tables';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['key'], 'string', 'max' => 100],
            [['vaule'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'key' => 'Key',
            'vaule' => 'Vaule',
        ];
    }
}

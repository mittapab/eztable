<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tableau".
 *
 * @property int $id
 * @property string $pmid
 * @property string $data
 */
class Tableau extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tableau';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pmid', 'data'], 'required'],
            [['data'], 'string'],
            [['pmid'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'pmid' => 'Pmid',
            'data' => 'Data',
        ];
    }
}

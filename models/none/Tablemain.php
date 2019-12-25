<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tablemain".
 *
 * @property int $id
 * @property string $pmid
 * @property string $ti
 * @property string $sta
 */
class Tablemain extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tablemain';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pmid', 'ti', 'sta'], 'required'],
            [['ti'], 'string'],
            [['pmid', 'sta'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'pmid' => 'PMCID',
            'ti' => 'TITLE',
            'sta' => 'STATUS',
        ];
    }
}

<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "published".
 *
 * @property int $id
 * @property string|null $title ชื่อเรื่อง
 * @property string|null $author ผู้แต่ง
 * @property string|null $year
 */
class Published extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'published';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['author'], 'string'],
            [['title', 'year'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'author' => 'Author',
            'year' => 'Year',
        ];
    }
}

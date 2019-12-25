<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "publisheds".
 *
 * @property int $id
 * @property string|null $PMID
 * @property string|null $owner
 * @property string|null $status
 * @property string|null $date_last_revised
 * @property string|null $date_of_publication
 * @property string|null $title
 * @property string|null $abstract
 * @property string|null $copyright_Information
 * @property string|null $language
 * @property string|null $publication_type
 * @property string|null $date_of_electronic_publication
 * @property string|null $place_of_publication
 * @property string|null $journal_Title_abbreviation
 * @property string|null $journal_title
 * @property string|null $NLM_Unique_ID
 * @property string|null $subset
 * @property string|null $entrez_date
 * @property string|null $MeSH_date
 * @property string|null $create_date
 * @property string|null $publication_status
 * @property string|null $source
 */
class Publisheds extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'publisheds';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'abstract', 'copyright_Information', 'journal_title', 'source'], 'string'],
            [['entrez_date', 'MeSH_date', 'create_date'], 'safe'],
            [['PMID', 'owner', 'date_last_revised'], 'string', 'max' => 50],
            [['status', 'language', 'publication_type', 'date_of_electronic_publication', 'place_of_publication', 'journal_Title_abbreviation', 'publication_status'], 'string', 'max' => 255],
            [['date_of_publication', 'NLM_Unique_ID', 'subset'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'PMID' => 'Pmid',
            'owner' => 'Owner',
            'status' => 'Status',
            'date_last_revised' => 'Date Last Revised',
            'date_of_publication' => 'Date Of Publication',
            'title' => 'Title',
            'abstract' => 'Abstract',
            'copyright_Information' => 'Copyright Information',
            'language' => 'Language',
            'publication_type' => 'Publication Type',
            'date_of_electronic_publication' => 'Date Of Electronic Publication',
            'place_of_publication' => 'Place Of Publication',
            'journal_Title_abbreviation' => 'Journal Title Abbreviation',
            'journal_title' => 'Journal Title',
            'NLM_Unique_ID' => 'Nlm Unique ID',
            'subset' => 'Subset',
            'entrez_date' => 'Entrez Date',
            'MeSH_date' => 'Me Sh Date',
            'create_date' => 'Create Date',
            'publication_status' => 'Publication Status',
            'source' => 'Source',
        ];
    }
}

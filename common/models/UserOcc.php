<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "user_occ".
 *
 * @property int $id
 * @property int $user_id
 * @property int $occ
 * @property string|null $dich_vu
 * @property int $created_at
 */
class UserOcc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user_occ';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'occ', 'created_at'], 'required'],
            [['user_id', 'occ', 'created_at'], 'integer'],
            [['dich_vu'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'occ' => 'Occ',
            'dich_vu' => 'Dich Vu',
            'created_at' => 'Created At',
        ];
    }
}

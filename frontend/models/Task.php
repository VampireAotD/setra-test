<?php

namespace frontend\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "task".
 *
 * @property int $id
 * @property int $created_at
 * @property string $type
 * @property int|null $status
 * @property string $description
 * @property string|null $started_at
 * @property string|null $ended_at
 */
class Task extends ActiveRecord
{
    const STATUS_ACTIVE = 1;
    const STATUS_COMPLETED = 2;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'task';
    }

    public function behaviors()
    {
        return [
            'timestamp' => [
                'class' => TimestampBehavior::className(),
                'updatedAtAttribute' => false,
            ]
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['type', 'description'], 'required'],
            [['created_at', 'status'], 'integer'],
            [['status'], 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_COMPLETED]],
            [['description'], 'string'],
            [['started_at', 'ended_at'], 'safe'],
            [['started_at', 'ended_at'], 'default', 'value' => date('Y-m-d')],
            [['type'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'created_at' => 'Created At',
            'type' => 'Type',
            'status' => 'Status',
            'description' => 'Description',
            'started_at' => 'Starts At',
            'ended_at' => 'Ends At',
        ];
    }

    public function getAllTasks()
    {
        return static::find();
    }

    public function getStatusList()
    {
        return [
            self::STATUS_ACTIVE => 'Active',
            self::STATUS_COMPLETED => 'Completed',
        ];
    }
}

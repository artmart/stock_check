<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tasks".
 *
 * @property int $id
 * @property int $task_group
 * @property string $task
 *
 * @property TaskResponses[] $taskResponses
 */
class Tasks extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tasks';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['task_group'], 'integer'],
            [['task'], 'required'],
            [['task'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'task_group' => 'Task Group',
            'task' => 'Task',
        ];
    }

    /**
     * Gets query for [[TaskResponses]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTaskResponses()
    {
        return $this->hasMany(TaskResponses::className(), ['task_id' => 'id']);
    }
}
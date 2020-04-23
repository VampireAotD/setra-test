<?php
namespace frontend\modules\tasks\models;

use frontend\models\Task;
use yii\base\Model;

class TasksSearch extends Model
{
    public $id;
    public $status;

    public function rules()
    {
        return [
            [['id', 'status'], 'integer'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'Find by id',
            'status' => 'Find by status'
        ];
    }

    public function search(){
        $query = Task::find();

        if($this->validate()){

            if($this->id){
                $query->andWhere(['id' => $this->id]);
            }

            if($this->status){
                $query->andWhere(['status' => $this->status]);
            }

            return $query;
        }

        return $query;
    }
}
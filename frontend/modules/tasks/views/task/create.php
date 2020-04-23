<?php
/**
 * @var $this \yii\web\View
 * @var $model \frontend\models\Task
 */

$this->title = 'Create new task';
$this->params['breadcrumbs'][] = $this->title;

echo $this->render('_form', [
    'model' => $model,
]);


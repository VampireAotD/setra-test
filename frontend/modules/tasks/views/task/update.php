<?php
/**
 * @var $this \yii\web\View
 * @var $task \frontend\models\Task
 */

$this->title = 'Update task #' . $task->id;
$this->params['breadcrumbs'][] = ['label' => $task->id, 'url' => ['view', 'id' => $task->id]];
$this->params['breadcrumbs'][] = $this->title;

echo $this->render('_form', [
    'model' => $task,
    'isAjax' => true
]);

$this->registerJsFile('js/update-task.js',['depends' => \backend\assets\AppAsset::class]);
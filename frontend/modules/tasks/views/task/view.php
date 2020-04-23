<?php
/**
 * @var $this \yii\web\View
 * @var $task \frontend\models\Task
 */

use yii\helpers\Html;

$this->title = 'Task #' . $task->id;
$this->params['breadcrumbs'][] = ['label' => 'Tasks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar">
                <?= Html::a('Go back', ['index'], ['class' => 'btn btn-primary']) ?>
                <?= Html::a('Update', ['update', 'id' => $task->id], ['class' => 'btn btn-success']) ?>
                <?= Html::a('Delete', ['delete', 'id' => $task->id], ['class' => 'btn btn-danger', 'id' => 'delete', 'data-id' => $task->id]) ?>
            </nav>
            <h1 class="display-3"><?= $this->title ?></h1>
            <div class="card">
                <div class="card-body">
                    <p class="card-text">ID : <?= $task->id ?> </p>
                    <p class="card-text">Created_at : <?= Yii::$app->formatter->asDatetime($task->created_at) ?> </p>
                    <p class="card-text">Type : <?= $task->type ?> </p>
                    <p class="card-text">Status : <?= $task->status ?> </p>
                    <p class="card-text">Description : <?= $task->description ?> </p>
                    <p class="card-text">Started at : <?= Yii::$app->formatter->asDatetime($task->started_at) ?> </p>
                    <p class="card-text">Ended at : <?= Yii::$app->formatter->asDatetime($task->ended_at) ?> </p>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
$this->registerJsFile('js/delete-task.js',['depends' => \backend\assets\AppAsset::class]);
<?php
/**
 * @var $this \yii\web\View
 * @var $tasks \frontend\models\Task
 * @var $searchModel \frontend\modules\tasks\models\TasksSearch
 */

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\widgets\LinkPager;
use yii\widgets\Pjax;

$this->title = 'Tasks';
$this->params['breadcrumbs'][] = $this->title;

Pjax::begin(['timeout' => 5000]);
?>

    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-bottom: 15px">
                <?php

                $form = ActiveForm::begin(['method' => 'GET']);

                echo $form->field($searchModel, 'id');

                echo $form->field($searchModel, 'status');

                echo Html::submitButton('Search', ['class' => 'btn btn-success']);

                ActiveForm::end();
                ?>
            </div>


            <div class="col-md-12">
                <nav class="navbar">
                    <?= Html::a('Create new task', ['create'], ['class' => 'btn btn-primary']) ?>
                </nav>
                <table class="table table-hover table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Type</th>
                        <th>Status</th>
                        <th>Description</th>
                        <th>Controls</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($tasks as $task) : ?>
                        <tr>
                            <td><?= Html::a($task->id, ['view', 'id' => $task->id]) ?></td>
                            <td><?= $task->type ?></td>
                            <td><?= $task->status === 1 ? 'Active' : 'Completed' ?></td>
                            <td><?= $task->description ?></td>
                            <td>
                                <?= Html::a('<span class="glyphicon glyphicon-eye-open"></span>', ['view', 'id' => $task->id],
                                    ['title' => 'View task #' . $task->id]) ?>
                                <?= Html::a('<span class="glyphicon glyphicon-refresh"></span>', ['update', 'id' => $task->id],
                                    ['title' => 'Update task #' . $task->id]) ?>
                                <?= Html::a('<span class="glyphicon glyphicon-trash"></span>', ['delete', 'id' => $task->id],
                                    ['id' => 'delete', 'data-id' => $task->id], ['title' => 'Delete task #' . $task->id]) ?>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

<?php

echo LinkPager::widget(['pagination' => $pagination]);

Pjax::end();

$this->registerJsFile('js/delete-task.js', ['depends' => \backend\assets\AppAsset::class]);


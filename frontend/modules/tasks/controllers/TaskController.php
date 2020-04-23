<?php

namespace frontend\modules\tasks\controllers;

use frontend\models\Task;
use frontend\modules\tasks\models\TasksSearch;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\web\Response;
use yii\data\Pagination;

/**
 * Default controller for the `tasks` module
 */
class TaskController extends Controller
{
    private $model;

    public function init()
    {
        parent::init();
        $this->model = new Task;
    }

    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new TasksSearch;
        $tasks = $this->model->getAllTasks();

        if($searchModel->load(Yii::$app->request->get())){
            $tasks = $searchModel->search();
        }

        $pagination = new Pagination([
            'PageSize' => 20,
            'totalCount' => $tasks->count()
        ]);

        $tasks = $tasks->offset($pagination->offset)->limit($pagination->limit)->all();
        return $this->render('index', compact('tasks', 'searchModel', 'model', 'pagination'));
    }

    /**
     * Action for creating new task
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = $this->model;
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            Yii::$app->session->setFlash('success', 'New task has been added!');
            return $this->redirect(['index']);
        }
        return $this->render('create', compact('model'));
    }

    /**
     * @param $id
     * @return string
     * @throws NotFoundHttpException
     */
    public function actionView($id)
    {
        $task = $this->getTaskById($id);
        return $this->render('view', compact('task'));
    }

    /**
     * @param $id
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException
     */
    public function actionUpdate($id)
    {
        $task = $this->getTaskById($id);

        if (Yii::$app->request->isAjax) {

            Yii::$app->response->format = Response::FORMAT_JSON;

            if ($task->load(Yii::$app->request->post()) && $task->save()) {
                return [
                    'status' => true,
                    'message' => 'Updated successfully, check it!'
                ];
            }
        }

        return $this->render('update', compact('task'));
    }

    public function actionDelete($id)
    {
        $task = $this->getTaskById($id);

        if (Yii::$app->request->isAjax) {

            Yii::$app->response->format = Response::FORMAT_JSON;

            if ($task->delete()) {
                return [
                    'status' => true,
                    'message' => 'Task was deleted!'
                ];
            }
        }

        return $this->redirect(['index']);
    }

    /**
     * @param $id
     * @return mixed
     * @throws NotFoundHttpException
     */
    protected function getTaskById($id)
    {
        $task = $this->model->findOne($id);

        if ($task) {
            return $task;
        }

        throw new NotFoundHttpException('Item is not exist');
    }
}

<?php
/**
 * @var $isAjax
 */
use dosamigos\datepicker\DatePicker;
use yii\bootstrap\ActiveForm;

$form = ActiveForm::begin();

echo $form->field($model, 'type');

echo $form->field($model, 'status')->dropDownList($model->getStatusList());

echo $form->field($model, 'description')->textarea();

echo $form->field($model, 'started_at')->widget(
    DatePicker::className(), [
    'inline' => true,
    'template' => '<div class="well well-sm" style="background-color: #fff; width:250px">{input}</div>',
    'language' => Yii::$app->language,
    'clientOptions' => [
        'autoclose' => true,
        'format' => 'yyyy-mm-dd',
        'todayHighlight' => true,
        'clearBtn' => true,
    ]
]);

echo $form->field($model, 'ended_at')->widget(
    DatePicker::className(), [
    'inline' => true,
    'template' => '<div class="well well-sm" style="background-color: #fff; width:250px">{input}</div>',
    'language' => Yii::$app->language,
    'clientOptions' => [
        'autoclose' => true,
        'format' => 'yyyy-mm-dd',
        'todayHighlight' => true,
        'clearBtn' => true,
    ]
]);

echo \yii\helpers\Html::submitButton('Save', ['class' => 'btn btn-success', 'id' => $isAjax ? 'update' : '', 'data-id' => $isAjax ? $model->id : '']);

ActiveForm::end();
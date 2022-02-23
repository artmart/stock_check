<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;
use backend\models\Tasks;

//use yii\bootstrap4\LinkPager;

$this->title = 'Tasks';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tasks-index">
    <h1 class="float-left"><?= Html::encode($this->title) ?></h1>
    <p class="float-right">
        <?= Html::a('<span class="glyphicon glyphicon-plus"></span> Add', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <div class="clearfix"></div>
    <hr />
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            //['class' => 'yii\grid\SerialColumn'],
            //'id',
            //'task_group',
            [
                'attribute' => 'task_group',
                'filter' => ['0' => 'Pre Opening', '1' => 'Prep', '2' => 'Closing'],
                'format' => 'raw',
                'value' => function($data){
                    $arr = ['0' => 'Pre Opening', '1' => 'Prep', '2' => 'Closing'];
                        return $arr[$data->task_group];
                    },  
            ],
            'task',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Tasks $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
            
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
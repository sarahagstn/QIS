<?php

namespace frontend\controllers;

use Yii;
use app\models\Assessment;
use app\models\Indikator;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\base\Model;

/**
 * AssessmentController implements the CRUD actions for Assessment model.
 */
class AssessmentController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Assessment models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Assessment::find(),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Assessment model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Assessment model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
//$count = count(Yii::$app->request->post('Assessment', []));
//$count=6;
$id_pic = Yii::$app->user->identity->id_pic;
$count = Indikator::find()
->select(['COUNT(*) AS id_indikator'])
->where('id_pic =:id_pic')->addParams([':id_pic' => $id_pic])

->count();
		
        //Send at least one model to the form
        $indktr = [new Assessment()];

        //Create an array of the products submitted
        for($i = 1; $i < $count; $i++) {

            $indktr[] = new Assessment();

        }

		 if (Model::loadMultiple($indktr, Yii::$app->request->post()) &&                                                                                            Model::validateMultiple($indktr)) {

        foreach ($indktr as $model) {

            //Try to save the models. Validation is not needed as it's already been done.
            $model->save();

        }

	

return $this->redirect(['view', 'id' => $model->id_assessment]);
   }
   $id_pic = Yii::$app->user->identity->id_pic;
   $dataProvider = new ActiveDataProvider([
            'query' => Indikator::find()->where('id_pic =:id_pic')->addParams([':id_pic' => $id_pic]),
        ]);
	
		

 return $this->render('create', ['indktr' => $indktr, 'dataProvider' => $dataProvider ]);
    }

    /**
     * Updates an existing Assessment model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_assessment]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Assessment model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Assessment model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Assessment the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Assessment::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}

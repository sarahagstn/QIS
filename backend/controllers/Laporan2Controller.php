<?php

namespace backend\controllers;

use Yii;
use app\models\Laporan2;
use common\models\User;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use mPDF;
use kartik\mpdf\Pdf;

/**
 * Laporan2Controller implements the CRUD actions for Laporan2 model.
 */
class Laporan2Controller extends Controller
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
     * Lists all Laporan2 models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Laporan2::find()->select(['id_laporan','tahun','count(*) as id_parameter'])->where('id_parameter is NOT NULL')->groupBy(['tahun']),
        ]);
$dataProvider2 =  User::find()->select(['count(*) as id'])->where('s_assess = 1')->all();
		$dataProvider3 =  User::find()->select(['count(*) as status'])->all();
        return $this->render('index', [
            'dataProvider' => $dataProvider,
			'dataProvider2' => $dataProvider2,
			'dataProvider3' => $dataProvider3,
        ]);
    }

    /**
     * Displays a single Laporan2 model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id, $tahun)
    {
		  $dataProvider = new ActiveDataProvider([
            'query' => Laporan2::find()->where('id_parameter is NOT NULL and tahun=:tahun')->addParams([':tahun' => $tahun])
,
        ]);
        return $this->render('view', [
            'model' => $this->findModel($id),
			'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Creates a new Laporan2 model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Laporan2();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_laporan]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }
	
	

    /**
     * Updates an existing Laporan2 model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($tahun)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Laporan2::find()->where('id_parameter is NOT NULL and tahun=:tahun')->addParams([':tahun' => $tahun])
,
        ]);


		$content = $this->renderPartial('laporan', [
            'dataProvider' => $dataProvider,
            ]);

		$mpdf = new mPDF;

$mpdf->WriteHTML($content);

$mpdf->Output();

       exit;
    }

    /**
     * Deletes an existing Laporan2 model.
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
     * Finds the Laporan2 model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Laporan2 the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($tahun)
    {
        if (($model = Laporan2::findOne($tahun)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}

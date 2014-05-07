.class public Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;
.super Landroid/os/AsyncTask;
.source "GyroscopeCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GyroscopeCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalibrationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GyroscopeCalibration;


# direct methods
.method public constructor <init>(Lcom/android/settings/GyroscopeCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    .line 190
    sget-object v3, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->NOT_COMPLETED:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    .line 192
    .local v3, state:Lcom/android/settings/GyroscopeCalibration$FeedbackState;
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #calls: Lcom/android/settings/GyroscopeCalibration;->userCalibration()I
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$1000(Lcom/android/settings/GyroscopeCalibration;)I

    move-result v2

    .line 193
    .local v2, resultCode:I
    if-nez v2, :cond_6

    .line 194
    new-instance v1, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;

    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;-><init>(Lcom/android/settings/GyroscopeCalibration;Lcom/android/settings/GyroscopeCalibration$1;)V

    .line 196
    .local v1, gyroscopeFeedbackListener:Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;
    :try_start_0
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    .line 197
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "doInBackground registerListener for feedback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v6, v1, v7, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 202
    .local v4, timestamp:J
    :cond_1
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_2

    .line 203
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    invoke-virtual {v1}, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->getState()Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    move-result-object v3

    .line 207
    sget-object v6, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->NOT_COMPLETED:Lcom/android/settings/GyroscopeCalibration$FeedbackState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v6, :cond_8

    .line 220
    :cond_3
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_4

    .line 221
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "doInBackground unregisterListener for feedback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v6

    .end local v4           #timestamp:J
    :goto_0
    invoke-virtual {v6, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 225
    sget-object v6, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->PASS:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    if-eq v3, v6, :cond_5

    .line 226
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #calls: Lcom/android/settings/GyroscopeCalibration;->recoverUserCalibration()V
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$1300(Lcom/android/settings/GyroscopeCalibration;)V

    .line 227
    :cond_5
    invoke-virtual {v3}, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->ordinal()I

    move-result v2

    .line 230
    .end local v1           #gyroscopeFeedbackListener:Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;
    :cond_6
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_7

    .line 231
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 210
    .restart local v1       #gyroscopeFeedbackListener:Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;
    .restart local v4       #timestamp:J
    :cond_8
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mAlive:Z
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$1200(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 213
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Gyroscope feedback timeout"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    .end local v4           #timestamp:J
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "doInBackground"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_9

    .line 221
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "doInBackground unregisterListener for feedback"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_9
    iget-object v6, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v6}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v6

    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_a

    .line 221
    iget-object v7, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "doInBackground unregisterListener for feedback"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_a
    iget-object v7, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v7}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 220
    throw v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 237
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute mAlive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mAlive:Z
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$1200(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mStop:Z
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$1400(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$900(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 241
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$800(Lcom/android/settings/GyroscopeCalibration;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;
    invoke-static {v2}, Lcom/android/settings/GyroscopeCalibration;->access$700(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mAlive:Z
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$1200(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    .local v0, resultCode:I
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$600(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/ActionBarText;

    move-result-object v1

    const v2, 0x7f0c04c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    const v2, 0x7f0c04c1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 251
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z
    invoke-static {v1, v5}, Lcom/android/settings/GyroscopeCalibration;->access$102(Lcom/android/settings/GyroscopeCalibration;Z)Z

    .line 265
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mStop:Z
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$1400(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 266
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPostExecute registerListener for UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/settings/GyroscopeCalibration;->access$300(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 272
    .end local v0           #resultCode:I
    :cond_5
    return-void

    .line 253
    .restart local v0       #resultCode:I
    :cond_6
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$600(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/ActionBarText;

    move-result-object v1

    const v2, 0x7f0c04c6

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    const v2, 0x7f0c04c0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mStop:Z
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$1400(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$1600(Lcom/android/settings/GyroscopeCalibration;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c04cc

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c04cd

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v2}, Lcom/android/settings/GyroscopeCalibration;->access$1502(Lcom/android/settings/GyroscopeCalibration;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 261
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$1500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 176
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreExecute unregisterListener for UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$300(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$600(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/ActionBarText;

    move-result-object v0

    const v1, 0x7f0c04c4

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$800(Lcom/android/settings/GyroscopeCalibration;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$700(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$800(Lcom/android/settings/GyroscopeCalibration;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$700(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$900(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    return-void
.end method

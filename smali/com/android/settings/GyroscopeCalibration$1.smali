.class Lcom/android/settings/GyroscopeCalibration$1;
.super Ljava/lang/Object;
.source "GyroscopeCalibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GyroscopeCalibration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GyroscopeCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/GyroscopeCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration$1;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 120
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$1;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick mIsCalibrated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration$1;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z
    invoke-static {v2}, Lcom/android/settings/GyroscopeCalibration;->access$100(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$1;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z
    invoke-static {v0}, Lcom/android/settings/GyroscopeCalibration;->access$100(Lcom/android/settings/GyroscopeCalibration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$1;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-virtual {v0}, Lcom/android/settings/GyroscopeCalibration;->finish()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$1;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-direct {v0, v1}, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

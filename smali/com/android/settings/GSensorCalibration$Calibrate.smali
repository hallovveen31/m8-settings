.class Lcom/android/settings/GSensorCalibration$Calibrate;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Calibrate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/GSensorCalibration$Calibrate;-><init>(Lcom/android/settings/GSensorCalibration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v0, v0, Lcom/android/settings/GSensorCalibration;->code:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0c04c5

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const v1, 0x7f0c04c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->alive:Z
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$600(Lcom/android/settings/GSensorCalibration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$400(Lcom/android/settings/GSensorCalibration;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_calibrated"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$800(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/GSensorCalibration;->access$700(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/GSensorCalibration;->access$800(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->SensorType:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->SensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0c04c6

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const v1, 0x7f0c04c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

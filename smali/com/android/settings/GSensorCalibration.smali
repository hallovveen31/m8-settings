.class public Lcom/android/settings/GSensorCalibration;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "GSensorCalibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GSensorCalibration$CALHandler;,
        Lcom/android/settings/GSensorCalibration$Calibrate;,
        Lcom/android/settings/GSensorCalibration$Anim;,
        Lcom/android/settings/GSensorCalibration$btnClicklistener;
    }
.end annotation


# static fields
.field private static final Has_Calibrated:Ljava/lang/String; = "has_calibrated"

.field private static final STATUS_Calibrate_Ok:I = 0x1

.field private static final STATUS_Ready:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GSensorCalibration"


# instance fields
.field SensorRate:I

.field SensorType:I

.field actionBarText:Lcom/htc/widget/ActionBarText;

.field private alive:Z

.field animBubble_H:Landroid/view/animation/TranslateAnimation;

.field animBubble_V:Landroid/view/animation/TranslateAnimation;

.field animHoriz:Landroid/view/animation/TranslateAnimation;

.field animVert:Landroid/view/animation/TranslateAnimation;

.field caliResult:Ljava/lang/String;

.field calibrateBtn:Landroid/widget/Button;

.field code:I

.field dpi:I

.field errorCode:Ljava/lang/String;

.field hwidth:I

.field imgBubble_H:Landroid/widget/ImageView;

.field imgBubble_V:Landroid/widget/ImageView;

.field isLandscape:Ljava/lang/Boolean;

.field mAnim:Lcom/android/settings/GSensorCalibration$Anim;

.field mCALHandler:Lcom/android/settings/GSensorCalibration$CALHandler;

.field mCalibrate:Lcom/android/settings/GSensorCalibration$Calibrate;

.field mHandler:Landroid/os/Handler;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field noOrientation:Ljava/lang/Boolean;

.field oldValue_H:F

.field oldValue_V:F

.field params:Landroid/widget/RelativeLayout$LayoutParams;

.field r:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field thread:Landroid/os/HandlerThread;

.field vheight:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->caliResult:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->r:Ljava/lang/String;

    .line 100
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->isLandscape:Ljava/lang/Boolean;

    .line 105
    iput v4, p0, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    .line 106
    iput v4, p0, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;

    .line 110
    iput-boolean v2, p0, Lcom/android/settings/GSensorCalibration;->alive:Z

    .line 114
    new-instance v0, Ljava/io/File;

    const-string v4, "/dev/mpu"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->noOrientation:Ljava/lang/Boolean;

    .line 117
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->noOrientation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/settings/GSensorCalibration;->SensorType:I

    .line 118
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->noOrientation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput v2, p0, Lcom/android/settings/GSensorCalibration;->SensorRate:I

    .line 294
    new-instance v0, Lcom/android/settings/GSensorCalibration$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GSensorCalibration$1;-><init>(Lcom/android/settings/GSensorCalibration;)V

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 550
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v3

    .line 117
    goto :goto_1

    :cond_2
    move v2, v3

    .line 118
    goto :goto_2
.end method

.method static synthetic access$400(Lcom/android/settings/GSensorCalibration;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/GSensorCalibration;->startAnim()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/GSensorCalibration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/GSensorCalibration;->alive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/GSensorCalibration;->doCalibrate()V

    return-void
.end method

.method private doCalibrate()V
    .locals 11

    .prologue
    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 616
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/dev/mpu"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 619
    const-string v7, "ro.product.device"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, device:Ljava/lang/String;
    const-string v7, "GSensorCalibration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v7, "quattrof"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "vertexf"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 623
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/GSensorCalibration;->execBMA150()V

    .line 625
    :cond_1
    const-string v7, "GSensorCalibration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Execute SysApi selfTest_HTC_USER:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/invensense/android/hardware/sysapi/SysApi;->selfTest_HTC_USER()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v3, Ljava/io/FileInputStream;

    const-string v7, "/data/misc/gscal_result.txt"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 628
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 630
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_2
    const-string v6, ""

    .line 632
    .local v6, str:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 634
    const-string v7, "GSensorCalibration"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v7, "[GsensorCalErrorCode]:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 636
    const-string v7, "[GsensorCalErrorCode]: 0x"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 650
    .end local v6           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 651
    .end local v0           #device:Ljava/lang/String;
    .end local v3           #is:Ljava/io/InputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 656
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 657
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 666
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    const-string v7, "GSensorCalibration"

    const-string v8, "unregister Listener"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v7, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 668
    iget-object v7, p0, Lcom/android/settings/GSensorCalibration;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->mCalibrate:Lcom/android/settings/GSensorCalibration$Calibrate;

    const-wide/16 v9, 0xed8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 669
    iget-object v7, p0, Lcom/android/settings/GSensorCalibration;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->mAnim:Lcom/android/settings/GSensorCalibration$Anim;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 672
    return-void

    .line 641
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v0       #device:Ljava/lang/String;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #str:Ljava/lang/String;
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/settings/GSensorCalibration;->code:I

    .line 642
    const-string v7, "GSensorCalibration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "errorCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/GSensorCalibration;->code:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 656
    .end local v0           #device:Ljava/lang/String;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #str:Ljava/lang/String;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_3
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 657
    :cond_6
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 659
    :catch_1
    move-exception v1

    .line 660
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 647
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_8
    invoke-direct {p0}, Lcom/android/settings/GSensorCalibration;->execBMA150()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 650
    :catch_2
    move-exception v1

    goto :goto_1

    .line 655
    :catchall_0
    move-exception v7

    .line 656
    :goto_5
    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 657
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 655
    :cond_9
    :goto_6
    throw v7

    .line 659
    :catch_3
    move-exception v1

    .line 660
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 659
    .end local v1           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto :goto_4

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    goto :goto_4

    .line 655
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v0       #device:Ljava/lang/String;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_5

    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 650
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private execBMA150()V
    .locals 4

    .prologue
    .line 599
    :try_start_0
    const-string v2, "GSensorCalibration"

    const-string v3, "Execute bma150_usr"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/bin/bma150_usr"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 601
    .local v1, process:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    iput v2, p0, Lcom/android/settings/GSensorCalibration;->code:I

    .line 602
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v1           #process:Ljava/lang/Process;
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getThemeOverlayColor(Landroid/content/Context;)I
    .locals 4
    .parameter "mCtx"

    .prologue
    .line 712
    sget-object v2, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 713
    .local v1, tArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 714
    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 715
    return v0
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    .line 575
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 578
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 581
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    .line 582
    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 584
    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0c04bf

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 585
    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0c04c3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 586
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 587
    new-instance v2, Lcom/android/settings/GSensorCalibration$2;

    invoke-direct {v2, p0}, Lcom/android/settings/GSensorCalibration$2;-><init>(Lcom/android/settings/GSensorCalibration;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    return-void
.end method

.method private startAnim()V
    .locals 13

    .prologue
    .line 425
    const-string v8, "GSensorCalibration"

    const-string v9, "startAnimation"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, 0x0

    .line 436
    .local v2, index:I
    const/4 v8, 0x7

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 437
    .local v3, step:[I
    const/4 v8, 0x7

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 438
    .local v5, step_HD:[I
    const/4 v8, 0x7

    new-array v4, v8, [I

    fill-array-data v4, :array_2

    .line 440
    .local v4, step_FULL_HD:[I
    const/4 v8, 0x7

    new-array v6, v8, [I

    fill-array-data v6, :array_3

    .line 443
    .local v6, step_pico:[I
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 444
    .local v0, animSetH:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 448
    .local v1, animSetV:Landroid/view/animation/AnimationSet;
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    .line 449
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget v8, p0, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 450
    .local v7, translateAnim:Landroid/view/animation/TranslateAnimation;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 451
    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 452
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 453
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 454
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 456
    .end local v7           #translateAnim:Landroid/view/animation/TranslateAnimation;
    :cond_0
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    .line 457
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 458
    .restart local v7       #translateAnim:Landroid/view/animation/TranslateAnimation;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 459
    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 460
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 461
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 462
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 465
    .end local v7           #translateAnim:Landroid/view/animation/TranslateAnimation;
    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x7

    if-ge v2, v8, :cond_a

    .line 467
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0xa0

    if-ne v8, v9, :cond_2

    .line 468
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v12, v6, v2

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    .line 475
    :goto_1
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 476
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 477
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 478
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    mul-int/lit16 v9, v2, 0x1f4

    add-int/lit8 v9, v9, 0x64

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 479
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 481
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0xa0

    if-ne v8, v9, :cond_6

    .line 482
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    aget v10, v6, v2

    mul-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    .line 489
    :goto_2
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 490
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 491
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 492
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    mul-int/lit16 v9, v2, 0x1f4

    add-int/lit8 v9, v9, 0x64

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 493
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_2
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_3

    .line 470
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v12, v5, v2

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    goto :goto_1

    .line 471
    :cond_3
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0x1e0

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0x190

    if-ne v8, v9, :cond_5

    .line 472
    :cond_4
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v12, v4, v2

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1

    .line 474
    :cond_5
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v12, v3, v2

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1

    .line 483
    :cond_6
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_7

    .line 484
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    aget v10, v5, v2

    mul-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    goto :goto_2

    .line 485
    :cond_7
    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0x1e0

    if-eq v8, v9, :cond_8

    iget v8, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v9, 0x190

    if-ne v8, v9, :cond_9

    .line 486
    :cond_8
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    aget v10, v4, v2

    mul-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 488
    :cond_9
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    aget v10, v3, v2

    mul-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 497
    :cond_a
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    .line 498
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    .line 500
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 501
    iget-object v8, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 503
    const-string v8, "GSensorCalibration"

    const-string v9, "animation:"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 436
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x9ct 0xfft 0xfft 0xfft
        0x5at 0x0t 0x0t 0x0t
        0xc4t 0xfft 0xfft 0xfft
        0x2dt 0x0t 0x0t 0x0t
        0xe2t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 437
    :array_1
    .array-data 0x4
        0x5at 0x0t 0x0t 0x0t
        0x4ct 0xfft 0xfft 0xfft
        0xa0t 0x0t 0x0t 0x0t
        0x9ct 0xfft 0xfft 0xfft
        0x2dt 0x0t 0x0t 0x0t
        0xect 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 438
    :array_2
    .array-data 0x4
        0x87t 0x0t 0x0t 0x0t
        0xf2t 0xfet 0xfft 0xfft
        0xf0t 0x0t 0x0t 0x0t
        0x74t 0xfft 0xfft 0xfft
        0x2dt 0x0t 0x0t 0x0t
        0xe7t 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 440
    :array_3
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0xb0t 0xfft 0xfft 0xfft
        0x50t 0x0t 0x0t 0x0t
        0xcet 0xfft 0xfft 0xfft
        0x23t 0x0t 0x0t 0x0t
        0xect 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f0201d4

    const/4 v10, 0x0

    const v9, 0x7f0201d5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v4, 0x7f040066

    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorCalibration;->setContentView(I)V

    .line 127
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 128
    .local v3, windowMgr:Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    .line 135
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/android/settings/GSensorCalibration;->hwidth:I

    .line 136
    const-string v4, "GSensorCalibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DPI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v4, "GSensorCalibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noOrientation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/GSensorCalibration;->noOrientation:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const v4, 0x7f0900c7

    invoke-virtual {p0, v4, v11, v7}, Lcom/android/settings/GSensorCalibration;->rotateImgView(IIZ)V

    .line 140
    const v4, 0x7f0900c9

    const v5, 0x7f0201db

    invoke-virtual {p0, v4, v5, v7}, Lcom/android/settings/GSensorCalibration;->rotateImgView(IIZ)V

    .line 141
    const v4, 0x7f0900c8

    invoke-virtual {p0, v4, v9, v7}, Lcom/android/settings/GSensorCalibration;->rotateImgView(IIZ)V

    .line 143
    const v4, 0x7f0900cb

    invoke-virtual {p0, v4, v11, v8}, Lcom/android/settings/GSensorCalibration;->rotateImgView(IIZ)V

    .line 144
    const v4, 0x7f0900cd

    const v5, 0x7f0201db

    invoke-virtual {p0, v4, v5, v8}, Lcom/android/settings/GSensorCalibration;->rotateImgView(IIZ)V

    .line 145
    const v4, 0x7f0900cc

    invoke-virtual {p0, v4, v9, v8}, Lcom/android/settings/GSensorCalibration;->rotateImgView(IIZ)V

    .line 150
    const-string v4, "sensor"

    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 154
    const v4, 0x7f0900c8

    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    .line 155
    const v4, 0x7f0900cc

    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p0}, Lcom/android/settings/GSensorCalibration;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v1

    .line 159
    .local v1, iconColor:I
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v4, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    const v4, 0x7f0900c3

    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooterButton;

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    .line 165
    invoke-direct {p0}, Lcom/android/settings/GSensorCalibration;->initActionBar()V

    .line 168
    iget-object v4, p0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const v5, 0x7f0c04c0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 169
    iget-object v4, p0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/GSensorCalibration$btnClicklistener;

    invoke-direct {v5, p0, v10}, Lcom/android/settings/GSensorCalibration$btnClicklistener;-><init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v4, Lcom/android/settings/GSensorCalibration$Calibrate;

    invoke-direct {v4, p0, v10}, Lcom/android/settings/GSensorCalibration$Calibrate;-><init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->mCalibrate:Lcom/android/settings/GSensorCalibration$Calibrate;

    .line 173
    new-instance v4, Lcom/android/settings/GSensorCalibration$Anim;

    invoke-direct {v4, p0, v10}, Lcom/android/settings/GSensorCalibration$Anim;-><init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->mAnim:Lcom/android/settings/GSensorCalibration$Anim;

    .line 174
    const-string v4, "GSensor"

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/GSensorCalibration;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/GSensorCalibration;->sp:Landroid/content/SharedPreferences;

    .line 175
    iget-object v4, p0, Lcom/android/settings/GSensorCalibration;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "has_calibrated"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    iput-boolean v8, p0, Lcom/android/settings/GSensorCalibration;->alive:Z

    .line 179
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 184
    const-string v0, "GSensorCalibration"

    const-string v1, "onCreateMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    const-string v0, "GSensorCalibration"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_calibrated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    iput-boolean v2, p0, Lcom/android/settings/GSensorCalibration;->alive:Z

    .line 268
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 270
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 211
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 213
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0c04c4

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->mCALHandler:Lcom/android/settings/GSensorCalibration$CALHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/GSensorCalibration$CALHandler;->sendEmptyMessage(I)Z

    .line 225
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 253
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    const-string v0, "GSensorCalibration"

    const-string v1, "onPrepareMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->actionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarText;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0c04c1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 199
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 203
    :cond_0
    return v4
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 229
    const-string v1, "GSensorCalibration"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 234
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/GSensorCalibration;->isLandscape:Ljava/lang/Boolean;

    .line 236
    const-string v1, "GSensorCalibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLandscape:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration;->isLandscape:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget v4, p0, Lcom/android/settings/GSensorCalibration;->SensorType:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/GSensorCalibration;->SensorRate:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 241
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GSensor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/GSensorCalibration;->thread:Landroid/os/HandlerThread;

    .line 242
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 243
    new-instance v1, Lcom/android/settings/GSensorCalibration$CALHandler;

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/GSensorCalibration$CALHandler;-><init>(Lcom/android/settings/GSensorCalibration;Landroid/os/Looper;Lcom/android/settings/GSensorCalibration$1;)V

    iput-object v1, p0, Lcom/android/settings/GSensorCalibration;->mCALHandler:Lcom/android/settings/GSensorCalibration$CALHandler;

    .line 244
    return-void

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "GSensorCalibration"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 259
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStop()V

    .line 261
    return-void
.end method

.method rotateImgView(IIZ)V
    .locals 13
    .parameter "imageID"
    .parameter "src"
    .parameter "rotate"

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 677
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 678
    .local v3, bmpWidth:I
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 680
    .local v4, bmpHeight:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 681
    .local v9, mResources:Landroid/content/res/Resources;
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 683
    .local v12, tempVal:Landroid/util/TypedValue;
    const v1, 0x7f0e00a0

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v12, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 684
    invoke-virtual {v12}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    .line 685
    .local v11, scale:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 686
    .local v5, matrix:Landroid/graphics/Matrix;
    if-eqz p3, :cond_0

    .line 687
    const/high16 v1, 0x42b4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 689
    :cond_0
    if-eqz v0, :cond_1

    .line 690
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 692
    :cond_1
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
    .local v7, bmd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, p1}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 696
    .local v8, img:Landroid/widget/ImageView;
    if-eqz p3, :cond_4

    .line 697
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, v4

    mul-float/2addr v1, v11

    float-to-int v1, v1

    int-to-float v2, v3

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 701
    .local v10, params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    const/16 v1, 0xd

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 703
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    const/4 v0, 0x0

    .line 708
    return-void

    .line 677
    .end local v3           #bmpWidth:I
    .end local v4           #bmpHeight:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bmd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v8           #img:Landroid/widget/ImageView;
    .end local v9           #mResources:Landroid/content/res/Resources;
    .end local v10           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #scale:F
    .end local v12           #tempVal:Landroid/util/TypedValue;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 678
    .restart local v3       #bmpWidth:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 699
    .restart local v4       #bmpHeight:I
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    .restart local v7       #bmd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v8       #img:Landroid/widget/ImageView;
    .restart local v9       #mResources:Landroid/content/res/Resources;
    .restart local v11       #scale:F
    .restart local v12       #tempVal:Landroid/util/TypedValue;
    :cond_4
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v1, v3

    mul-float/2addr v1, v11

    float-to-int v1, v1

    int-to-float v2, v4

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v10       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2
.end method

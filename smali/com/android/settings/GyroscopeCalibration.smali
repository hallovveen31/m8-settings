.class public Lcom/android/settings/GyroscopeCalibration;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "GyroscopeCalibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;,
        Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;,
        Lcom/android/settings/GyroscopeCalibration$CalibrationAsyncTask;,
        Lcom/android/settings/GyroscopeCalibration$DPIType;,
        Lcom/android/settings/GyroscopeCalibration$FeedbackState;
    }
.end annotation


# static fields
.field public static final CATETORY_KEY:Ljava/lang/String; = "gsensor_group"

.field public static final KEY:Ljava/lang/String; = "gyro_calibration"


# instance fields
.field private final BUBBLE_LEVEL_BOUNDARY:[I

.field private final TAG:Ljava/lang/String;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mAlive:Z

.field private mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

.field private mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

.field private mContext:Landroid/content/Context;

.field private mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsCalibrated:Z

.field private mLowerBubble:Landroid/widget/ImageView;

.field private mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;

.field private mLowerBubblePosition:F

.field private mResources:Landroid/content/res/Resources;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStop:Z

.field private mToast:Landroid/widget/Toast;

.field private mUpperBubble:Landroid/widget/ImageView;

.field private mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;

.field private mUpperBubblePosition:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 54
    const-class v0, Lcom/android/settings/GyroscopeCalibration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 70
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_240:Lcom/android/settings/GyroscopeCalibration$DPIType;

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->BUBBLE_LEVEL_BOUNDARY:[I

    .line 74
    iput v2, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F

    .line 75
    iput v2, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F

    .line 80
    iput-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    .line 377
    new-instance v0, Lcom/android/settings/GyroscopeCalibration$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GyroscopeCalibration$2;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 443
    return-void

    .line 71
    :array_0
    .array-data 0x4
        0x87t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/GyroscopeCalibration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/GyroscopeCalibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->userCalibration()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/GyroscopeCalibration;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/GyroscopeCalibration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/GyroscopeCalibration;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->recoverUserCalibration()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/GyroscopeCalibration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/GyroscopeCalibration;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/GyroscopeCalibration;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/GyroscopeCalibration;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->BUBBLE_LEVEL_BOUNDARY:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$DPIType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings/GyroscopeCalibration;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/settings/GyroscopeCalibration;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings/GyroscopeCalibration;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/GyroscopeCalibration;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/GyroscopeCalibration;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/settings/GyroscopeCalibration;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/ActionBarText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GyroscopeCalibration;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getThemeOverlayColor(Landroid/content/Context;)I
    .locals 5
    .parameter "mContext"

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, color:I
    const/4 v2, 0x0

    .line 529
    .local v2, typedArray:Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v3, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 530
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 534
    if-eqz v2, :cond_0

    .line 535
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 538
    :cond_0
    return v0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    if-eqz v2, :cond_0

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 535
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 534
    :cond_1
    throw v3
.end method

.method private initActionbar()V
    .locals 4

    .prologue
    .line 424
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/GyroscopeCalibration;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/GyroscopeCalibration;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    .line 425
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 427
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Lcom/htc/widget/ActionBarText;

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 428
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0c04ca

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 429
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0c04c3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 430
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 433
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 434
    new-instance v2, Lcom/android/settings/GyroscopeCalibration$3;

    invoke-direct {v2, p0}, Lcom/android/settings/GyroscopeCalibration$3;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    return-void
.end method

.method private initDPIType()Lcom/android/settings/GyroscopeCalibration$DPIType;
    .locals 6

    .prologue
    .line 306
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_240:Lcom/android/settings/GyroscopeCalibration$DPIType;

    .line 307
    .local v0, dpiType:Lcom/android/settings/GyroscopeCalibration$DPIType;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/settings/GyroscopeCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 308
    .local v2, windowManager:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 309
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 310
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v3, :sswitch_data_0

    .line 323
    :goto_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDPIType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    return-object v0

    .line 313
    :sswitch_0
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_480:Lcom/android/settings/GyroscopeCalibration$DPIType;

    .line 314
    goto :goto_0

    .line 316
    :sswitch_1
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_320:Lcom/android/settings/GyroscopeCalibration$DPIType;

    .line 317
    goto :goto_0

    .line 319
    :sswitch_2
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_160:Lcom/android/settings/GyroscopeCalibration$DPIType;

    goto :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_2
        0x140 -> :sswitch_1
        0x190 -> :sswitch_0
        0x1e0 -> :sswitch_0
    .end sparse-switch
.end method

.method private recoverUserCalibration()V
    .locals 7

    .prologue
    .line 293
    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/gyro_user"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-D"

    aput-object v5, v0, v4

    .line 294
    .local v0, commands:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 295
    .local v2, process:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 296
    .local v3, resultCode:I
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 297
    iget-object v4, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recoverUserCalibration resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0           #commands:[Ljava/lang/String;
    .end local v2           #process:Ljava/lang/Process;
    .end local v3           #resultCode:I
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recoverUserCalibration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private userCalibration()I
    .locals 6

    .prologue
    .line 276
    const/4 v2, -0x1

    .line 278
    .local v2, resultCode:I
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/gyro_user"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 279
    .local v1, process:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 280
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1           #process:Ljava/lang/Process;
    :goto_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userCalibration resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    return v2

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userCalibration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f090147

    const v7, 0x7f0201d5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const v2, 0x7f04009a

    invoke-virtual {p0, v2}, Lcom/android/settings/GyroscopeCalibration;->setContentView(I)V

    .line 92
    iput-object p0, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    .line 93
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    .line 94
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mHandler:Landroid/os/Handler;

    .line 95
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/settings/GyroscopeCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->initDPIType()Lcom/android/settings/GyroscopeCalibration$DPIType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;

    .line 98
    iput-boolean v5, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    .line 100
    const v2, 0x7f090146

    const v3, 0x7f0201d4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/GyroscopeCalibration;->rotateImageView(II)V

    .line 101
    const v2, 0x7f090148

    const v3, 0x7f0201db

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/GyroscopeCalibration;->rotateImageView(II)V

    .line 102
    invoke-virtual {p0, v8, v7}, Lcom/android/settings/GyroscopeCalibration;->rotateImageView(II)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->initActionbar()V

    .line 105
    const v2, 0x7f090144

    invoke-virtual {p0, v2}, Lcom/android/settings/GyroscopeCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p0, v8}, Lcom/android/settings/GyroscopeCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/GyroscopeCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/settings/GyroscopeCalibration;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v1

    .line 110
    .local v1, iconColor:I
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    const v2, 0x7f0900c3

    invoke-virtual {p0, v2}, Lcom/android/settings/GyroscopeCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    .line 115
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f0c04c0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/settings/GyroscopeCalibration$1;

    invoke-direct {v3, p0}, Lcom/android/settings/GyroscopeCalibration$1;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v2, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;-><init>(Lcom/android/settings/GyroscopeCalibration;Lcom/android/settings/GyroscopeCalibration$1;)V

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    .line 132
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c04cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    .line 133
    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 135
    iput-boolean v6, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 167
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    .line 169
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 170
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStart()V

    .line 142
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v1, "onStart registerListener for UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    .line 146
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 150
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v1, "onStop unregisterListener for UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    .line 156
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStop()V

    .line 157
    return-void
.end method

.method rotateImageView(II)V
    .locals 10
    .parameter "imageViewId"
    .parameter "srcId"

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 508
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 510
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 511
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v1, 0x42b4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 512
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/settings/GyroscopeCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 515
    .local v8, imageView:Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 516
    .local v9, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 517
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #imageView:Landroid/widget/ImageView;
    .end local v9           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v7

    .line 520
    .local v7, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v2, "rotateImageView"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

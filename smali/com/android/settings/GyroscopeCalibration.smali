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

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    const-class v0, Lcom/android/settings/GyroscopeCalibration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_240:Lcom/android/settings/GyroscopeCalibration$DPIType;

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->BUBBLE_LEVEL_BOUNDARY:[I

    iput v2, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F

    iput v2, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F

    iput-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    iput-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    iput-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    new-instance v0, Lcom/android/settings/GyroscopeCalibration$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GyroscopeCalibration$2;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void

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

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/GyroscopeCalibration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/GyroscopeCalibration;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->userCalibration()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/GyroscopeCalibration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/GyroscopeCalibration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/GyroscopeCalibration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->recoverUserCalibration()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/GyroscopeCalibration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/GyroscopeCalibration;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/GyroscopeCalibration;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/GyroscopeCalibration;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->BUBBLE_LEVEL_BOUNDARY:[I

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$DPIType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings/GyroscopeCalibration;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/settings/GyroscopeCalibration;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings/GyroscopeCalibration;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/GyroscopeCalibration;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/GyroscopeCalibration;)F
    .locals 1

    iget v0, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/settings/GyroscopeCalibration;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/GyroscopeCalibration;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/HtcFooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/GyroscopeCalibration;)Lcom/htc/widget/ActionBarText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GyroscopeCalibration;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getThemeOverlayColor(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/settings/R$styleable;->theme_color:[I

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v3
.end method

.method private initActionbar()V
    .locals 4

    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/view/Window;Landroid/app/ActionBar;)V

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/ActionBarText;

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0c04ca

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0c04c3

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v2, Lcom/android/settings/GyroscopeCalibration$3;

    invoke-direct {v2, p0}, Lcom/android/settings/GyroscopeCalibration$3;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDPIType()Lcom/android/settings/GyroscopeCalibration$DPIType;
    .locals 6

    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_240:Lcom/android/settings/GyroscopeCalibration$DPIType;

    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

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

    :cond_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_480:Lcom/android/settings/GyroscopeCalibration$DPIType;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_320:Lcom/android/settings/GyroscopeCalibration$DPIType;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$DPIType;->DPI_160:Lcom/android/settings/GyroscopeCalibration$DPIType;

    goto :goto_0

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

    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/gyro_user"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-D"

    aput-object v5, v0, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

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

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

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

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private userCalibration()I
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/gyro_user"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

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

    :cond_0
    return v2

    :catch_0
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f090147

    const v7, 0x7f0201d5

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

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

    :cond_0
    const v2, 0x7f04009a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mHandler:Landroid/os/Handler;

    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->initDPIType()Lcom/android/settings/GyroscopeCalibration$DPIType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;

    iput-boolean v5, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    const v2, 0x7f090146

    const v3, 0x7f0201d4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/GyroscopeCalibration;->rotateImageView(II)V

    const v2, 0x7f090148

    const v3, 0x7f0201db

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/GyroscopeCalibration;->rotateImageView(II)V

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/GyroscopeCalibration;->rotateImageView(II)V

    invoke-direct {p0}, Lcom/android/settings/GyroscopeCalibration;->initActionbar()V

    const v2, 0x7f090144

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/settings/GyroscopeCalibration;->getThemeOverlayColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0900c3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    const v3, 0x7f0c04c0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/settings/GyroscopeCalibration$1;

    invoke-direct {v3, p0}, Lcom/android/settings/GyroscopeCalibration$1;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;-><init>(Lcom/android/settings/GyroscopeCalibration;Lcom/android/settings/GyroscopeCalibration$1;)V

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mCalibrationAnim:Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c04cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    iput-boolean v6, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/GyroscopeCalibration;->mIsCalibrated:Z

    iput-boolean v2, p0, Lcom/android/settings/GyroscopeCalibration;->mAlive:Z

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStart()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v1, "onStart registerListener for UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v1, "onStop unregisterListener for UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GyroscopeCalibration;->mStop:Z

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStop()V

    return-void
.end method

.method rotateImageView(II)V
    .locals 10

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x42b4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings/GyroscopeCalibration;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;

    const-string v2, "rotateImageView"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

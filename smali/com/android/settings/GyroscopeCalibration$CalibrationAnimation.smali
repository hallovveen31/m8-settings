.class Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;
.super Ljava/lang/Object;
.source "GyroscopeCalibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GyroscopeCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalibrationAnimation"
.end annotation


# instance fields
.field private final ANIMATION_STEP:[[I

.field final synthetic this$0:Lcom/android/settings/GyroscopeCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GyroscopeCalibration;)V
    .locals 4

    const/4 v3, 0x7

    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->ANIMATION_STEP:[[I

    return-void

    :array_0
    .array-data 0x4
        0x87t 0x0t 0x0t 0x0t
        0xf2t 0xfet 0xfft 0xfft
        0xf0t 0x0t 0x0t 0x0t
        0x74t 0xfft 0xfft 0xfft
        0x2dt 0x0t 0x0t 0x0t
        0xe7t 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
    .end array-data

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

    :array_2
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x9ct 0xfft 0xfft 0xfft
        0x5at 0x0t 0x0t 0x0t
        0xc4t 0xfft 0xfft 0xfft
        0x2dt 0x0t 0x0t 0x0t
        0xe2t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

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

.method synthetic constructor <init>(Lcom/android/settings/GyroscopeCalibration;Lcom/android/settings/GyroscopeCalibration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v13, 0x1f4

    const-wide/16 v11, 0x64

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalibrationAnimation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2000(Lcom/android/settings/GyroscopeCalibration;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2000(Lcom/android/settings/GyroscopeCalibration;)F

    move-result v5

    invoke-direct {v4, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v4, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2300(Lcom/android/settings/GyroscopeCalibration;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_2

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2300(Lcom/android/settings/GyroscopeCalibration;)F

    move-result v5

    invoke-direct {v4, v7, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v4, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$1800(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$DPIType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_3

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->ANIMATION_STEP:[[I

    aget-object v5, v5, v3

    aget v5, v5, v2

    mul-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-direct {v4, v7, v5, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    mul-int/lit16 v5, v2, 0x1f4

    add-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->ANIMATION_STEP:[[I

    aget-object v5, v5, v3

    aget v5, v5, v2

    int-to-float v5, v5

    invoke-direct {v4, v7, v7, v7, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    mul-int/lit16 v5, v2, 0x1f4

    add-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F
    invoke-static {v5, v7}, Lcom/android/settings/GyroscopeCalibration;->access$2002(Lcom/android/settings/GyroscopeCalibration;F)F

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2100(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F
    invoke-static {v5, v7}, Lcom/android/settings/GyroscopeCalibration;->access$2302(Lcom/android/settings/GyroscopeCalibration;F)F

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$CalibrationAnimation;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2400(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

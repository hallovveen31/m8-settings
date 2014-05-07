.class Lcom/android/settings/GyroscopeCalibration$2;
.super Ljava/lang/Object;
.source "GyroscopeCalibration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GyroscopeCalibration;
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

    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const-wide/16 v9, 0xc8

    const-wide v5, 0x400921fb54442d18L

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->BUBBLE_LEVEL_BOUNDARY:[I
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$1700(Lcom/android/settings/GyroscopeCalibration;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mDPIType:Lcom/android/settings/GyroscopeCalibration$DPIType;
    invoke-static {v4}, Lcom/android/settings/GyroscopeCalibration;->access$1800(Lcom/android/settings/GyroscopeCalibration;)Lcom/android/settings/GyroscopeCalibration$DPIType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v3, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    int-to-float v4, v0

    mul-float/2addr v3, v4

    float-to-double v3, v3

    div-double/2addr v3, v5

    double-to-float v1, v3

    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    int-to-float v1, v0

    :cond_0
    :goto_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    float-to-double v3, v3

    div-double/2addr v3, v5

    double-to-float v2, v3

    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    int-to-float v2, v0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2000(Lcom/android/settings/GyroscopeCalibration;)F

    move-result v5

    invoke-direct {v4, v5, v1, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3, v4}, Lcom/android/settings/GyroscopeCalibration;->access$1902(Lcom/android/settings/GyroscopeCalibration;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubblePosition:F
    invoke-static {v3, v1}, Lcom/android/settings/GyroscopeCalibration;->access$2002(Lcom/android/settings/GyroscopeCalibration;F)F

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$1900(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$1900(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$1900(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubble:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$2100(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mUpperBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v4}, Lcom/android/settings/GyroscopeCalibration;->access$1900(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F
    invoke-static {v5}, Lcom/android/settings/GyroscopeCalibration;->access$2300(Lcom/android/settings/GyroscopeCalibration;)F

    move-result v5

    neg-float v6, v2

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3, v4}, Lcom/android/settings/GyroscopeCalibration;->access$2202(Lcom/android/settings/GyroscopeCalibration;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    neg-float v4, v2

    #setter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubblePosition:F
    invoke-static {v3, v4}, Lcom/android/settings/GyroscopeCalibration;->access$2302(Lcom/android/settings/GyroscopeCalibration;F)F

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$2200(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$2200(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$2200(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubble:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/settings/GyroscopeCalibration;->access$2400(Lcom/android/settings/GyroscopeCalibration;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GyroscopeCalibration$2;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->mLowerBubbleAnim:Landroid/view/animation/TranslateAnimation;
    invoke-static {v4}, Lcom/android/settings/GyroscopeCalibration;->access$2200(Lcom/android/settings/GyroscopeCalibration;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void

    :cond_3
    neg-int v3, v0

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    neg-int v3, v0

    int-to-float v1, v3

    goto/16 :goto_0

    :cond_4
    neg-int v3, v0

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    neg-int v3, v0

    int-to-float v2, v3

    goto/16 :goto_1
.end method

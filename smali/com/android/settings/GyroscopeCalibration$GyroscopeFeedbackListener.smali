.class Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;
.super Ljava/lang/Object;
.source "GyroscopeCalibration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GyroscopeCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GyroscopeFeedbackListener"
.end annotation


# instance fields
.field private final CONSECUTIVE_COUNT:I

.field private final IGNORE_COUNT:I

.field private final THRESHOLD:F

.field private mCount:I

.field private mIgnoreCount:I

.field private mOutOfBound:Z

.field private mState:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

.field final synthetic this$0:Lcom/android/settings/GyroscopeCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GyroscopeCalibration;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 329
    iput-object p1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->this$0:Lcom/android/settings/GyroscopeCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->IGNORE_COUNT:I

    .line 331
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->CONSECUTIVE_COUNT:I

    .line 332
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->THRESHOLD:F

    .line 334
    iput v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mIgnoreCount:I

    .line 335
    iput v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mCount:I

    .line 336
    iput-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mOutOfBound:Z

    .line 337
    sget-object v0, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->NOT_COMPLETED:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    iput-object v0, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mState:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GyroscopeCalibration;Lcom/android/settings/GyroscopeCalibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;-><init>(Lcom/android/settings/GyroscopeCalibration;)V

    return-void
.end method


# virtual methods
.method public getState()Lcom/android/settings/GyroscopeCalibration$FeedbackState;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mState:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 345
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, 0x4334

    const-wide v5, 0x400921fb54442d18L

    .line 349
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 350
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->this$0:Lcom/android/settings/GyroscopeCalibration;

    #getter for: Lcom/android/settings/GyroscopeCalibration;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/GyroscopeCalibration;->access$000(Lcom/android/settings/GyroscopeCalibration;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v9

    mul-float/2addr v3, v7

    float-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    mul-float/2addr v3, v7

    float-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v10

    mul-float/2addr v3, v7

    float-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mIgnoreCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 354
    iget v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mIgnoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mIgnoreCount:I

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    iget v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 356
    iget v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mCount:I

    .line 358
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 359
    .local v0, absValues:[F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v9

    mul-float/2addr v1, v7

    float-to-double v1, v1

    div-double/2addr v1, v5

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v9

    .line 360
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    mul-float/2addr v1, v7

    float-to-double v1, v1

    div-double/2addr v1, v5

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v8

    .line 361
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v10

    mul-float/2addr v1, v7

    float-to-double v1, v1

    div-double/2addr v1, v5

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v10

    .line 364
    aget v1, v0, v9

    const/high16 v2, 0x4040

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    aget v1, v0, v8

    const/high16 v2, 0x4040

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    aget v1, v0, v10

    const/high16 v2, 0x4040

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 365
    :cond_3
    iput-boolean v8, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mOutOfBound:Z

    .line 366
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mCount:I

    .line 367
    sget-object v1, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->FAIL:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    iput-object v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mState:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    .line 370
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mOutOfBound:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mCount:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 371
    sget-object v1, Lcom/android/settings/GyroscopeCalibration$FeedbackState;->PASS:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    iput-object v1, p0, Lcom/android/settings/GyroscopeCalibration$GyroscopeFeedbackListener;->mState:Lcom/android/settings/GyroscopeCalibration$FeedbackState;

    goto :goto_0
.end method

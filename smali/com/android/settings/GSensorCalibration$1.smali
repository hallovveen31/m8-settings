.class Lcom/android/settings/GSensorCalibration$1;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 298
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 303
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/high16 v4, 0x41f0

    const/high16 v3, -0x3e10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 306
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 310
    .local v0, values:[F
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->noOrientation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 312
    aget v1, v0, v8

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    aput v1, v0, v8

    .line 313
    aget v1, v0, v7

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    aput v1, v0, v7

    .line 315
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_4

    .line 318
    aget v1, v0, v8

    const/high16 v2, 0x4270

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/high16 v1, 0x4270

    aput v1, v0, v8

    .line 320
    :cond_0
    :goto_0
    aget v1, v0, v7

    const/high16 v2, 0x4270

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/high16 v1, 0x4270

    aput v1, v0, v7

    .line 393
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->noOrientation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 394
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    aget v4, v0, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    .line 395
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v8

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    .line 401
    :goto_2
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 404
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v2, v2, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 406
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->noOrientation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 407
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v5, v5, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    aget v6, v0, v7

    neg-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    .line 408
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v7

    neg-float v2, v2

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    .line 414
    :goto_3
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 416
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 417
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v2, v2, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 419
    return-void

    .line 319
    :cond_2
    aget v1, v0, v8

    const/high16 v2, -0x3d7e

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/high16 v1, -0x3d7e

    aput v1, v0, v8

    goto/16 :goto_0

    .line 321
    :cond_3
    aget v1, v0, v7

    const/high16 v2, -0x3d7e

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v1, -0x3d7e

    aput v1, v0, v7

    goto/16 :goto_1

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x78

    if-ne v1, v2, :cond_8

    .line 324
    aget v1, v0, v8

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    aput v4, v0, v8

    .line 326
    :cond_5
    :goto_4
    aget v1, v0, v7

    cmpl-float v1, v1, v4

    if-lez v1, :cond_7

    aput v4, v0, v7

    goto/16 :goto_1

    .line 325
    :cond_6
    aget v1, v0, v9

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    aput v3, v0, v9

    goto :goto_4

    .line 327
    :cond_7
    aget v1, v0, v7

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    aput v3, v0, v7

    goto/16 :goto_1

    .line 329
    :cond_8
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_c

    .line 331
    aget v1, v0, v8

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v1, v1

    aput v1, v0, v8

    .line 333
    :cond_9
    :goto_5
    aget v1, v0, v7

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v1, v1

    aput v1, v0, v7

    goto/16 :goto_1

    .line 332
    :cond_a
    aget v1, v0, v8

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v8

    goto :goto_5

    .line 334
    :cond_b
    aget v1, v0, v7

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v7

    goto/16 :goto_1

    .line 336
    :cond_c
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_11

    .line 338
    :cond_d
    aget v1, v0, v8

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v1, v1

    aput v1, v0, v8

    .line 340
    :cond_e
    :goto_6
    aget v1, v0, v7

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v1, v1

    aput v1, v0, v7

    goto/16 :goto_1

    .line 339
    :cond_f
    aget v1, v0, v8

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v8

    goto :goto_6

    .line 341
    :cond_10
    aget v1, v0, v7

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v7

    goto/16 :goto_1

    .line 345
    :cond_11
    aget v1, v0, v8

    cmpl-float v1, v1, v4

    if-lez v1, :cond_13

    aput v4, v0, v8

    .line 347
    :cond_12
    :goto_7
    aget v1, v0, v7

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    const/high16 v1, 0x4220

    aput v1, v0, v7

    goto/16 :goto_1

    .line 346
    :cond_13
    aget v1, v0, v8

    const/high16 v2, -0x3de0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    const/high16 v1, -0x3de0

    aput v1, v0, v8

    goto :goto_7

    .line 348
    :cond_14
    aget v1, v0, v7

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    aput v3, v0, v7

    goto/16 :goto_1

    .line 353
    :cond_15
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_19

    .line 356
    aget v1, v0, v9

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    const/high16 v1, 0x4248

    aput v1, v0, v9

    .line 358
    :cond_16
    :goto_8
    aget v1, v0, v7

    const/high16 v2, 0x428c

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    const/high16 v1, 0x428c

    aput v1, v0, v7

    goto/16 :goto_1

    .line 357
    :cond_17
    aget v1, v0, v9

    const/high16 v2, -0x3db8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_16

    const/high16 v1, -0x3db8

    aput v1, v0, v9

    goto :goto_8

    .line 359
    :cond_18
    aget v1, v0, v7

    const/high16 v2, -0x3db8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v1, -0x3db8

    aput v1, v0, v7

    goto/16 :goto_1

    .line 361
    :cond_19
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1d

    .line 362
    aget v1, v0, v9

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1b

    aput v4, v0, v9

    .line 364
    :cond_1a
    :goto_9
    aget v1, v0, v7

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1c

    aput v4, v0, v7

    goto/16 :goto_1

    .line 363
    :cond_1b
    aget v1, v0, v9

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1a

    aput v3, v0, v9

    goto :goto_9

    .line 365
    :cond_1c
    aget v1, v0, v7

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    aput v3, v0, v7

    goto/16 :goto_1

    .line 367
    :cond_1d
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_21

    .line 369
    aget v1, v0, v8

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v1, v1

    aput v1, v0, v8

    .line 371
    :cond_1e
    :goto_a
    aget v1, v0, v7

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    int-to-float v1, v1

    aput v1, v0, v7

    goto/16 :goto_1

    .line 370
    :cond_1f
    aget v1, v0, v8

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v8

    goto :goto_a

    .line 372
    :cond_20
    aget v1, v0, v7

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v2, v2, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->hwidth:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v7

    goto/16 :goto_1

    .line 374
    :cond_21
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x1e0

    if-eq v1, v2, :cond_22

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_26

    .line 375
    :cond_22
    aget v1, v0, v9

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    aput v1, v0, v9

    .line 376
    aget v1, v0, v7

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    aput v1, v0, v7

    .line 378
    aget v1, v0, v9

    const/high16 v2, 0x4348

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    const/high16 v1, 0x4348

    aput v1, v0, v9

    .line 380
    :cond_23
    :goto_b
    aget v1, v0, v7

    const/high16 v2, 0x4348

    cmpl-float v1, v1, v2

    if-lez v1, :cond_25

    const/high16 v1, 0x4348

    aput v1, v0, v7

    goto/16 :goto_1

    .line 379
    :cond_24
    aget v1, v0, v9

    const/high16 v2, -0x3cb8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23

    const/high16 v1, -0x3cb8

    aput v1, v0, v9

    goto :goto_b

    .line 381
    :cond_25
    aget v1, v0, v7

    const/high16 v2, -0x3cb8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v1, -0x3cb8

    aput v1, v0, v7

    goto/16 :goto_1

    .line 385
    :cond_26
    aget v1, v0, v9

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_28

    const/high16 v1, 0x4220

    aput v1, v0, v9

    .line 387
    :cond_27
    :goto_c
    aget v1, v0, v7

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_29

    const/high16 v1, 0x4220

    aput v1, v0, v7

    goto/16 :goto_1

    .line 386
    :cond_28
    aget v1, v0, v9

    const/high16 v2, -0x3de0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_27

    const/high16 v1, -0x3de0

    aput v1, v0, v9

    goto :goto_c

    .line 388
    :cond_29
    aget v1, v0, v7

    const/high16 v2, -0x3de0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v1, -0x3de0

    aput v1, v0, v7

    goto/16 :goto_1

    .line 398
    :cond_2a
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    aget v4, v0, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    .line 399
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v9

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    goto/16 :goto_2

    .line 411
    :cond_2b
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v5, v5, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    aget v6, v0, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    .line 412
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v7

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    goto/16 :goto_3
.end method

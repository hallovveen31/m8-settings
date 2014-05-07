.class public Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;
.super Ljava/lang/Object;
.source "HtcDndTimeSlotItem.java"


# instance fields
.field private mAllowedType:I

.field private mIsStartSlot:Z

.field private mMilliSeconds:J

.field private mMode:I


# direct methods
.method public constructor <init>(JZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMilliSeconds:J

    iput-boolean p3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mIsStartSlot:Z

    iput p4, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMode:I

    iput p5, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    return-void
.end method


# virtual methods
.method public checkPriority(I)I
    .locals 2

    iget v1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAllowedType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    return v0
.end method

.method public getMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMilliSeconds:J

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMode:I

    return v0
.end method

.method public isStartSlot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mIsStartSlot:Z

    return v0
.end method

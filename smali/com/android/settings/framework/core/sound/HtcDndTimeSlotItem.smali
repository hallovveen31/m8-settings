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
    .parameter "millis"
    .parameter "isStartSlot"
    .parameter "mode"
    .parameter "allowedType"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMilliSeconds:J

    .line 12
    iput-boolean p3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mIsStartSlot:Z

    .line 13
    iput p4, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMode:I

    .line 14
    iput p5, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    .line 15
    return-void
.end method


# virtual methods
.method public checkPriority(I)I
    .locals 2
    .parameter "allowedType"

    .prologue
    .line 43
    iget v1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    if-ne v1, p1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    .local v0, value:I
    iget v1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 55
    :pswitch_1
    if-nez p1, :cond_1

    .line 56
    const/4 v0, -0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 63
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 49
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

    .prologue
    .line 30
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mAllowedType:I

    return v0
.end method

.method public getMillis()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMilliSeconds:J

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mMode:I

    return v0
.end method

.method public isStartSlot()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->mIsStartSlot:Z

    return v0
.end method

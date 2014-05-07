.class public Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;
.super Ljava/lang/Object;
.source "HtcDndScheduleRecord.java"


# instance fields
.field private mAllowedContacts:I

.field private mEnabled:Z

.field private mEndHour:I

.field private mEndMinute:I

.field private mId:I

.field private mRepeat:I

.field private mStartHour:I

.field private mStartMinute:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mId:I

    .line 15
    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartHour:I

    .line 16
    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartMinute:I

    .line 17
    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndHour:I

    .line 18
    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndMinute:I

    .line 19
    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mRepeat:I

    .line 20
    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mAllowedContacts:I

    .line 21
    iput-boolean v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getAllowedContacts()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mAllowedContacts:I

    return v0
.end method

.method public getEndHour()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndHour:I

    return v0
.end method

.method public getEndMinute()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndMinute:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mId:I

    return v0
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mRepeat:I

    return v0
.end method

.method public getStartHour()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartHour:I

    return v0
.end method

.method public getStartMinute()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartMinute:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEnabled:Z

    return v0
.end method

.method public setAllowedContacts(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mAllowedContacts:I

    .line 78
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEnabled:Z

    .line 86
    return-void
.end method

.method public setEndHour(I)V
    .locals 0
    .parameter "hour"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndHour:I

    .line 54
    return-void
.end method

.method public setEndMinute(I)V
    .locals 0
    .parameter "minute"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndMinute:I

    .line 62
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mId:I

    .line 30
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .parameter "repeat"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mRepeat:I

    .line 70
    return-void
.end method

.method public setStartHour(I)V
    .locals 0
    .parameter "hour"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartHour:I

    .line 38
    return-void
.end method

.method public setStartMinute(I)V
    .locals 0
    .parameter "minute"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartMinute:I

    .line 46
    return-void
.end method

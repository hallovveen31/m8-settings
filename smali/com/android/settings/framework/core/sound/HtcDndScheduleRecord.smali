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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mId:I

    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartHour:I

    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartMinute:I

    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndHour:I

    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndMinute:I

    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mRepeat:I

    iput v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mAllowedContacts:I

    iput-boolean v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public getAllowedContacts()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mAllowedContacts:I

    return v0
.end method

.method public getEndHour()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndHour:I

    return v0
.end method

.method public getEndMinute()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndMinute:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mId:I

    return v0
.end method

.method public getRepeat()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mRepeat:I

    return v0
.end method

.method public getStartHour()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartHour:I

    return v0
.end method

.method public getStartMinute()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartMinute:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEnabled:Z

    return v0
.end method

.method public setAllowedContacts(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mAllowedContacts:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEnabled:Z

    return-void
.end method

.method public setEndHour(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndHour:I

    return-void
.end method

.method public setEndMinute(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mEndMinute:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mId:I

    return-void
.end method

.method public setRepeat(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mRepeat:I

    return-void
.end method

.method public setStartHour(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartHour:I

    return-void
.end method

.method public setStartMinute(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->mStartMinute:I

    return-void
.end method

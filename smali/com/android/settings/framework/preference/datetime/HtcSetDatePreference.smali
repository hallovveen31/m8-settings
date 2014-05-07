.class public final Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcSetDatePreference.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
.implements Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field private static final DATE_PICKER_MAX_YEAR:I = 0x7ee

.field private static final DATE_PICKER_MIN_YEAR:I = 0x7d0

.field public static final KEY:Ljava/lang/String; = "SET_DATE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->initialize(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->initialize(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "SET_DATE"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setKey(Ljava/lang/String;)V

    .line 85
    :cond_0
    const v0, 0x7f0c0c49

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->updateSummary()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->isAutoTime()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setEnabled(Z)V

    .line 88
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected isAutoTime()Z
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 126
    .local v0, DEFAULT_VALUE:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 132
    .local v2, enabled:Z
    :goto_0
    return v2

    .line 126
    .end local v2           #enabled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #enabled:Z
    goto :goto_0
.end method

.method protected onClick()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 138
    .local v9, cal:Ljava/util/Calendar;
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 139
    .local v5, year:I
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 140
    .local v6, month:I
    const/4 v0, 0x5

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 142
    .local v7, day:I
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x7d0

    const/16 v4, 0x7ee

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 144
    return-void
.end method

.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 7
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 155
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 156
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 160
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 162
    .local v1, when:J
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 163
    sget-object v3, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    const-string v4, "onDateSet(...)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v3, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t year: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v3, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t monthOfYear: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v3, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t dayOfMonth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v3, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t when: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 171
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    .line 172
    sget-object v3, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t SystemClock.setCurrentTimeMillis("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->updateSummary()V

    .line 179
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->unregisterReceiver()V

    .line 225
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->updateSummary()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->isAutoTime()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setEnabled(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->registerReceiver()V

    .line 221
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTimeChanged(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->TAG:Ljava/lang/String;

    const-string v1, "onTimeChanged(...)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->updateSummary()V

    .line 210
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    .line 190
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->setOnTimeChangedListener(Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver$OnTimeChangedListener;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->register()V

    .line 193
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->mTimeChangeReceiver:Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcTimeChangeReceiver;->unregister()V

    .line 199
    :cond_0
    return-void
.end method

.method protected updateSummary()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 95
    .local v1, now:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0bd4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

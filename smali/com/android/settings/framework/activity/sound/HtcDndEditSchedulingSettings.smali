.class public Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcDndEditSchedulingSettings.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final KEY_ADD_SCHEDULE:Ljava/lang/String; = "add_schedule"

.field public static final KEY_SCHEDULE_ENABLED:Ljava/lang/String; = "schedule_enabled"

.field public static final KEY_SCHEDULE_ID:Ljava/lang/String; = "schedule_id"

.field private static final MENU_REMOVE_SCHEDULE:I = 0x2

.field private static final MSG_REFRESH_SCHEDULE_UI:I = 0x1001

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private EndTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

.field private StartTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

.field mAllowedContactsEntries:[Ljava/lang/String;

.field private mAllowedContactsIndex:I

.field private mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

.field mAllowedContactsValues:[Ljava/lang/String;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field private mCurScheduleEnabled:Z

.field private mCurScheduleId:I

.field private mDoneButton:Lcom/htc/widget/HtcFooterButton;

.field private mEndTimeCalendar:Ljava/util/Calendar;

.field private mEndTimePreference:Lcom/htc/preference/HtcPreference;

.field private mIs24HoursFormat:Z

.field private mIsAddSchedule:Z

.field private mIsInitDataDone:Z

.field private mRepeatDays:I

.field private mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

.field private mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

.field private mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

.field private mStartTimeCalendar:Ljava/util/Calendar;

.field private mStartTimePreference:Lcom/htc/preference/HtcPreference;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTodayCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsInitDataDone:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mBuilder:Ljava/lang/StringBuilder;

    .line 382
    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->StartTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    .line 400
    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$6;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->EndTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applyRepeatNewValue(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applyAllowedContactsNewValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applySchedulingData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    return-void
.end method

.method private applyAllowedContactsNewValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "newValue"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    .line 464
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    .line 465
    return-void
.end method

.method private applyRepeatNewValue(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRepeatNewValue, values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcScheduleUtil;->combineDayOfWeekEntryValues(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    .line 486
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    .line 487
    return-void
.end method

.method private applySchedulingData()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x1

    .line 511
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-nez v1, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c06bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 546
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    if-eqz v1, :cond_1

    .line 522
    new-instance v0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-direct {v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;-><init>()V

    .line 523
    .local v0, record:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setId(I)V

    .line 525
    invoke-virtual {v0, v5}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    .line 532
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartHour(I)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartMinute(I)V

    .line 534
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndHour(I)V

    .line 535
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndMinute(I)V

    .line 536
    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setRepeat(I)V

    .line 537
    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setAllowedContacts(I)V

    .line 539
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->addRecord(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)Z

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->rescheduleEventTimer(Landroid/content/Context;)V

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->finishFragment()V

    goto :goto_0

    .line 528
    .end local v0           #record:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    .line 529
    .restart local v0       #record:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;
    invoke-virtual {v0, v5}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    goto :goto_1
.end method

.method private doPlugin()V
    .locals 9

    .prologue
    const v8, 0x7f0c06b6

    const v7, 0x7f0c06b5

    const/4 v6, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 155
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 156
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 157
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v4, 0x7f0c06a2

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 161
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v4, 0x7f0c06b2

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 163
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 166
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    .line 167
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c06b3

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 168
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 171
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    .line 172
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c06b4

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 173
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 176
    new-instance v4, Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcMultiSelectListPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    .line 177
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcMultiSelectListPreference;->setTitle(I)V

    .line 178
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcMultiSelectListPreference;->setDialogTitle(I)V

    .line 179
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-static {v1}, Lcom/android/settings/framework/util/HtcScheduleUtil;->getDayOfWeekEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 180
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-static {}, Lcom/android/settings/framework/util/HtcScheduleUtil;->getDayOfWeekEntryValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcMultiSelectListPreference;->setPersistent(Z)V

    .line 182
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    new-instance v5, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$1;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcMultiSelectListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 189
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 192
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 193
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v4, 0x7f0c06a4

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 194
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 197
    new-instance v4, Lcom/htc/preference/HtcListPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    .line 198
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcListPreference;->setTitle(I)V

    .line 199
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsValues:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 201
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcListPreference;->setDialogTitle(I)V

    .line 202
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcListPreference;->setPersistent(Z)V

    .line 203
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    new-instance v5, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$2;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 210
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->requestHandlers()V

    .line 213
    return-void
.end method

.method private getAllowedContactsEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 127
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0c06b8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0c06ba

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0c06b9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 133
    .local v0, entries:[Ljava/lang/String;
    return-object v0
.end method

.method private getAllowedContactsSummary(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 442
    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->TAG:Ljava/lang/String;

    const-string v1, "getAllowedContactsSummary, entries is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    const-string v0, ""

    .line 455
    :goto_0
    return-object v0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 449
    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 450
    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllowedContactsSummary, invalid nType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06b7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAllowedContactsValues(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 137
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    .line 143
    .local v0, values:[Ljava/lang/String;
    return-object v0
.end method

.method private initFooterBar(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "contentView"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 241
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$3;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    .line 251
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0c059d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$4;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/htc/widget/HtcFooterButton;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;

    move-result-object p1

    .line 262
    return-object p1
.end method

.method private refreshScheduleUI()V
    .locals 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mBuilder:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/util/HtcScheduleUtil;->getDayOfWeekDisplayText(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcMultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getAllowedContactsSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    :cond_3
    return-void
.end method

.method private removeSchedule()V
    .locals 2

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 491
    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->TAG:Ljava/lang/String;

    const-string v1, "removeSchedule, can\'t remove a new creating schedul"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->removeRecordById(I)Z

    .line 501
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleEnabled:Z

    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->rescheduleEventTimer(Landroid/content/Context;)V

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->finishFragment()V

    goto :goto_0
.end method

.method private setAllowedContactsDefaultValue(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 469
    return-void
.end method

.method private setRepeatDefaultValue(I)V
    .locals 2
    .parameter "nRepeat"

    .prologue
    .line 472
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcScheduleUtil;->separateDayOfWeekEntryValues(I)Ljava/util/HashSet;

    move-result-object v0

    .line 475
    .local v0, values:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 476
    return-void
.end method

.method private showEndTimePicker()V
    .locals 6

    .prologue
    .line 375
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->EndTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIs24HoursFormat:Z

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 379
    return-void
.end method

.method private showStartTimePicker()V
    .locals 6

    .prologue
    .line 368
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->StartTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIs24HoursFormat:Z

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 372
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    const-class v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 555
    const v0, 0x7f0c06ae

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06b0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v2, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIs24HoursFormat:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    .local v0, curTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    .line 107
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "add_schedule"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "schedule_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleId:I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "schedule_enabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleEnabled:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getAllowedContactsEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getAllowedContactsValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsValues:[Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->doPlugin()V

    .line 123
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->setHasOptionsMenu(Z)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 333
    const/4 v0, 0x2

    const v1, 0x2040214

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 335
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 336
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, contentView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->initFooterBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 226
    goto :goto_0
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 360
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 362
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 355
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 351
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->removeSchedule()V

    .line 352
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->showStartTimePicker()V

    .line 277
    :goto_0
    return v0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->showEndTimePicker()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 341
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 342
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 343
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 345
    :cond_0
    return-void

    .line 343
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResumeInBackground()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 282
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResumeInBackground()V

    .line 285
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsInitDataDone:Z

    if-nez v1, :cond_0

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsInitDataDone:Z

    .line 288
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 292
    .local v0, hourOfDay:I
    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 300
    :goto_0
    iput v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    .line 301
    iput v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    .line 323
    .end local v0           #hourOfDay:I
    :goto_1
    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->setRepeatDefaultValue(I)V

    .line 324
    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->setAllowedContactsDefaultValue(I)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    return-void

    .line 295
    .restart local v0       #hourOfDay:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 304
    .end local v0           #hourOfDay:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    iget v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecordById(I)Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    .line 307
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartHour()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartMinute()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndHour()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 310
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndMinute()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 317
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    .line 320
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getAllowedContacts()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    goto :goto_1
.end method

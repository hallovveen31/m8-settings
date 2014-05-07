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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

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

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsInitDataDone:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->StartTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$6;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->EndTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applyRepeatNewValue(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applyAllowedContactsNewValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->applySchedulingData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    return-void
.end method

.method private applyAllowedContactsNewValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    return-void
.end method

.method private applyRepeatNewValue(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcScheduleUtil;->combineDayOfWeekEntryValues(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    return-void
.end method

.method private applySchedulingData()V
    .locals 8

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c06bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-direct {v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setId(I)V

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartHour(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setStartMinute(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndHour(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEndMinute(I)V

    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setRepeat(I)V

    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setAllowedContacts(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->addRecord(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)Z

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->rescheduleEventTimer(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    goto :goto_1
.end method

.method private doPlugin()V
    .locals 9

    const v8, 0x7f0c06b6

    const v7, 0x7f0c06b5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const v4, 0x7f0c06a2

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c06b2

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c06b3

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c06b4

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v4, Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcMultiSelectListPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-static {v1}, Lcom/android/settings/framework/util/HtcScheduleUtil;->getDayOfWeekEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-static {}, Lcom/android/settings/framework/util/HtcScheduleUtil;->getDayOfWeekEntryValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    new-instance v5, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$1;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c06a4

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v4, Lcom/htc/preference/HtcListPreference;

    invoke-direct {v4, v1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsValues:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    new-instance v5, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$2;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method

.method private getAllowedContactsEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

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

    return-object v0
.end method

.method private getAllowedContactsSummary(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->TAG:Ljava/lang/String;

    const-string v1, "getAllowedContactsSummary, entries is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_2

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

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

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

    return-object v0
.end method

.method private initFooterBar(Landroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0c00a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$3;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0c059d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$4;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    return-object p1
.end method

.method private refreshScheduleUI()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mBuilder:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/util/HtcScheduleUtil;->getDayOfWeekDisplayText(Landroid/content/Context;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getAllowedContactsSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private removeSchedule()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->TAG:Ljava/lang/String;

    const-string v1, "removeSchedule, can\'t remove a new creating schedul"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->removeRecordById(I)Z

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->rescheduleEventTimer(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0
.end method

.method private setAllowedContactsDefaultValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    return-void
.end method

.method private setRepeatDefaultValue(I)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/framework/util/HtcScheduleUtil;->separateDayOfWeekEntryValues(I)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatPreference:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method private showEndTimePicker()V
    .locals 6

    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showStartTimePicker()V
    .locals 6

    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c06ae

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06b0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIs24HoursFormat:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTimeFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "add_schedule"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "schedule_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleId:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "schedule_enabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleEnabled:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getAllowedContactsEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->getAllowedContactsValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->doPlugin()V

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x2040214

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->initFooterBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->removeSchedule()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimePreference:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->showStartTimePicker()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimePreference:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->showEndTimePicker()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResumeInBackground()V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, 0x0

    const/16 v3, 0xb

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResumeInBackground()V

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsInitDataDone:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsInitDataDone:Z

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mIsAddSchedule:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iput v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    iput v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    :goto_1
    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->setRepeatDefaultValue(I)V

    iget v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->setAllowedContactsDefaultValue(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    iget v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mCurScheduleId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecordById(I)Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartHour()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartMinute()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndHour()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndMinute()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mRepeatDays:I

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mScheduleRecord:Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getAllowedContacts()I

    move-result v1

    iput v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mAllowedContactsIndex:I

    goto :goto_1
.end method

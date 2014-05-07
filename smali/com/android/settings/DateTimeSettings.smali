.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$updateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "com.htc.intent.action.TIMEFORMAT_CHANGED"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_FLAG:Z = false

.field protected static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"

.field private static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final NOT_PRE_DEFINE_DATE_FORMAT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# instance fields
.field private mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

.field private mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mNeedGrayOutAutoTime:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTime24Pref:Lcom/htc/preference/HtcPreference;

.field private mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

.field private mTimeZone:Lcom/htc/preference/HtcPreference;

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/DateTimeSettings;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isAutoTimeDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    new-instance v0, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$2;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->updateAutoTimeOption(Z)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DateTimeSettings;->DEBUG_FLAG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeSettings;)Lcom/android/settings/widget/HtcListPreferenceDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    return-object v0
.end method

.method private static formatOffset(I)[C
    .locals 6

    const/4 v5, 0x3

    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    const/16 v3, 0x9

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    if-gez p0, :cond_0

    const/16 v3, 0x2d

    aput-char v3, v0, v5

    neg-int p0, p0

    :goto_0
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v2, p0, 0x3c

    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    return-object v0

    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateFormatShort(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->isUseSIEDateFormatList()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormats()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormatsShort()[Ljava/lang/String;

    move-result-object v2

    :cond_0
    array-length v4, v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v5, v2, v0

    return-object v5
.end method

.method private getDateFormatShortFromSystem()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZoneText()Ljava/lang/String;
    .locals 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v7

    :goto_0
    add-int/2addr v7, v8

    invoke-static {v7}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/DateTimeSettings;->checkDuplicatedWording(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initUI()V
    .locals 13

    const-string v11, "auto_time"

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    const-string v11, "auto_time_zone"

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v11, "firstRun"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const-string v11, "auto_time"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const-string v11, "auto_zone"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v1, 0x0

    :cond_1
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const-string v11, "time"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    const-string v11, "24 hour"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    const-string v11, "timezone"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    const-string v11, "date"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    const-string v11, "date_format"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_2
    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0800d7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0800d8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    array-length v11, v5

    new-array v7, v11, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c034f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettings;->setDateFormat(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    array-length v11, v7

    if-ge v8, v11, :cond_5

    aget-object v11, v5, v8

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    aget-object v11, v5, v8

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v2, 0x1

    move v4, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    aget-object v11, v6, v4

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    :goto_1
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v11, v7}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    const v12, 0x7f0800d7

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcListPreference;->setEntryValues(I)V

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v11, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    if-nez v0, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    if-nez v0, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormatShortFromSystem()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isNeedGrayOutAutoTimeChecker_onCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    :cond_1
    return-void
.end method

.method private isNeedGrayOutAutoTimeChecker_onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    :cond_0
    return-void
.end method

.method private isNeedGrayOutAutoTimeChecker_onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private isNeedGrayOutAutoTimeChecker_onResume()V
    .locals 5

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/service/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateAutoTimeOption(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRecognizedDateFormat()Z
    .locals 11

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/DateTimeFormatFromSIE;->initSIEDateFormat(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->isUseSIEDateFormatList()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormats()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormatsShort()[Ljava/lang/String;

    move-result-object v5

    :goto_0
    array-length v8, v4

    new-array v6, v8, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    sget-boolean v8, Lcom/android/settings/DateTimeSettings;->DEBUG_FLAG:Z

    if-eqz v8, :cond_0

    const-string v8, "DateTimeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentFormat = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    aget-object v8, v4, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    move v3, v7

    :cond_1
    if-eqz v1, :cond_3

    aget-object v8, v4, v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0800d7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0800d8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    aget-object v8, v4, v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v8, v6}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_5

    aget-object v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    :goto_3
    return v0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormatShortFromSystem()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private set24Hour(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(III)V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_0
    return-void
.end method

.method private setDateFormat(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setDateFormatShort(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static setTime(II)V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_0
    return-void
.end method

.method private time24FormatUpdated()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "time24Format"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private timeUpdated()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAutoTimeOption(Z)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyDemoMode()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {v1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {v1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public checkDuplicatedWording(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHtcDateFormatSummary()Ljava/lang/CharSequence;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0bd4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/DateTimeSettings$updateHandler;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/DateTimeSettings$updateHandler;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->updateHandler:Landroid/os/Handler;

    :cond_0
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->onPause(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->onPause(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onPause()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->time24FormatUpdated()V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.app.autosetting.time"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "com.htc.app.autosetting.timezone"

    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    if-ne p2, v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isRecognizedDateFormat()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_4
    const-string v0, "com.htc.app.autosetting.timezone.cancel"

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v2}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->showParentDialog()V

    goto :goto_2

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v3, v6, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    const-string v4, "auto_time"

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "auto_time_zone"

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    invoke-virtual {v4, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->onResume(Landroid/app/Activity;)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v4, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->onResume(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onResume()V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->applyDemoMode()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "date_format"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c034f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->setDateFormat(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->getDateFormatShort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.TIMEFORMAT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "auto_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v1, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    if-nez v1, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_3

    :cond_5
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_6

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_7

    :goto_5
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    if-eqz v1, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.app.autosetting.location"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    move v5, v7

    goto :goto_4

    :cond_7
    move v6, v7

    goto :goto_5

    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.app.autosetting.cancel"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "auto_time_zone"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6
.end method

.method protected showDialog(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a9c

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a9d

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040258

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DateTimeSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettings$4;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040256

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DateTimeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettings$3;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 13

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v7

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getHtcDateFormatSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->isUseSIEDateFormatList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormats()[Ljava/lang/String;

    move-result-object v8

    :cond_0
    array-length v0, v8

    new-array v9, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_1
    array-length v0, v9

    if-ge v10, v0, :cond_3

    if-eqz v7, :cond_2

    aget-object v0, v8, v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getHtcDateFormatSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    aget-object v0, v8, v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v0, v9}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

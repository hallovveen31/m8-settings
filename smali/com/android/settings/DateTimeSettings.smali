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

    .prologue
    .line 95
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/DateTimeSettings;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 99
    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 634
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 693
    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 695
    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 698
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isAutoTimeDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    .line 746
    new-instance v0, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$2;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->updateAutoTimeOption(Z)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/settings/DateTimeSettings;->DEBUG_FLAG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeSettings;)Lcom/android/settings/widget/HtcListPreferenceDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    return-object v0
.end method

.method private static formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 606
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 608
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 609
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 610
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 611
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 613
    if-gez p0, :cond_0

    .line 614
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 615
    neg-int p0, p0

    .line 620
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 621
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 623
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 624
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 626
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 628
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 629
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 631
    return-object v0

    .line 617
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 535
    :cond_0
    :goto_0
    return v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateFormatShort(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "currentFormat"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, dateFormats_short:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->isUseSIEDateFormatList()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormats()[Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormatsShort()[Ljava/lang/String;

    move-result-object v2

    .line 333
    :cond_0
    array-length v4, v1

    .line 334
    .local v4, nlen:I
    const/4 v0, 0x0

    .line 336
    .local v0, currentFormatIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 337
    aget-object v5, v1, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 338
    move v0, v3

    .line 336
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_2
    aget-object v5, v2, v0

    return-object v5
.end method

.method private getDateFormatShortFromSystem()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZoneText()Ljava/lang/String;
    .locals 9

    .prologue
    .line 568
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    .line 569
    .local v6, tz:Ljava/util/TimeZone;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 570
    .local v0, daylight:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v7

    :goto_0
    add-int/2addr v7, v8

    invoke-static {v7}, Lcom/android/settings/DateTimeSettings;->formatOffset(I)[C

    move-result-object v4

    .line 589
    .local v4, gmtWording:[C
    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, displayName:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, gmtString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 594
    .local v2, duplicated:Z
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/DateTimeSettings;->checkDuplicatedWording(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 596
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 597
    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 598
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 587
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #duplicated:Z
    .end local v3           #gmtString:Ljava/lang/String;
    .end local v4           #gmtWording:[C
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initUI()V
    .locals 13

    .prologue
    .line 114
    const-string v11, "auto_time"

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 115
    .local v0, autoTimeEnabled:Z
    const-string v11, "auto_time_zone"

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 117
    .local v1, autoTimeZoneEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 118
    .local v9, intent:Landroid/content/Intent;
    const-string v11, "firstRun"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 120
    .local v10, isFirstRun:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 122
    const-string v11, "auto_time"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 123
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 124
    const-string v11, "auto_zone"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 129
    const/4 v1, 0x0

    .line 131
    :cond_1
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 132
    const-string v11, "time"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    .line 133
    const-string v11, "24 hour"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    .line 134
    const-string v11, "timezone"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    .line 135
    const-string v11, "date"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    .line 136
    const-string v11, "date_format"

    invoke-virtual {p0, v11}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    iput-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    .line 138
    if-eqz v10, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 143
    :cond_2
    const/4 v4, -0x1

    .line 144
    .local v4, currentFormatIndex:I
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0800d7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0800d8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, dateFormats_short:[Ljava/lang/String;
    array-length v11, v5

    new-array v7, v11, [Ljava/lang/String;

    .line 147
    .local v7, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, currentFormat:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c034f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettings;->setDateFormat(Ljava/lang/String;)V

    .line 155
    :cond_3
    const/4 v2, 0x0

    .line 156
    .local v2, bFound:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v11, v7

    if-ge v8, v11, :cond_5

    .line 157
    aget-object v11, v5, v8

    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    .line 158
    aget-object v11, v5, v8

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 159
    const/4 v2, 0x1

    .line 160
    move v4, v8

    .line 156
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 163
    :cond_5
    if-eqz v2, :cond_6

    .line 164
    aget-object v11, v6, v4

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    .line 170
    :goto_1
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v11, v7}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setEntries([Ljava/lang/CharSequence;)V

    .line 171
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    const v12, 0x7f0800d7

    invoke-virtual {v11, v12}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setEntryValues(I)V

    .line 172
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v11, v3}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setValue(Ljava/lang/String;)V

    .line 174
    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    if-nez v0, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setEnabled(Z)V

    .line 175
    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    if-nez v0, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setEnabled(Z)V

    .line 176
    iget-object v12, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 177
    return-void

    .line 167
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormatShortFromSystem()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 175
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 176
    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isNeedGrayOutAutoTimeChecker_onCreate()V
    .locals 2

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 702
    .local v0, context:Landroid/content/Context;
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v1, :cond_1

    .line 704
    if-eqz v0, :cond_0

    .line 705
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 708
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 710
    :cond_1
    return-void
.end method

.method private isNeedGrayOutAutoTimeChecker_onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v0, :cond_0

    .line 741
    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 742
    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 744
    :cond_0
    return-void
.end method

.method private isNeedGrayOutAutoTimeChecker_onPause()V
    .locals 3

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 736
    :cond_0
    return-void
.end method

.method private isNeedGrayOutAutoTimeChecker_onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 713
    iget-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mNeedGrayOutAutoTime:Z

    if-eqz v3, :cond_1

    .line 715
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v3, :cond_0

    .line 716
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/service/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v0

    .line 718
    .local v0, cdmaState:I
    if-nez v0, :cond_2

    move v1, v2

    .line 719
    .local v1, enableAutoTimeAndDisable:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateAutoTimeOption(Z)V

    .line 722
    .end local v0           #cdmaState:I
    .end local v1           #enableAutoTimeAndDisable:Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    .line 723
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 727
    :cond_1
    return-void

    .line 718
    .restart local v0       #cdmaState:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRecognizedDateFormat()Z
    .locals 11

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 422
    .local v0, bFound:Z
    const/4 v3, -0x1

    .line 423
    .local v3, currentFormatIndex:I
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v1

    .line 425
    .local v1, bSupportAllCaps:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/DateTimeFormatFromSIE;->initSIEDateFormat(Landroid/content/Context;)V

    .line 426
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->isUseSIEDateFormatList()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 427
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormats()[Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, dateFormats:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormatsShort()[Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, dateFormats_short:[Ljava/lang/String;
    :goto_0
    array-length v8, v4

    new-array v6, v8, [Ljava/lang/String;

    .line 435
    .local v6, formattedDates:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, currentFormat:Ljava/lang/String;
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

    .line 437
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    .line 438
    aget-object v8, v4, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 439
    const/4 v0, 0x1

    .line 440
    move v3, v7

    .line 443
    :cond_1
    if-eqz v1, :cond_3

    .line 444
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

    .line 437
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 430
    .end local v2           #currentFormat:Ljava/lang/String;
    .end local v4           #dateFormats:[Ljava/lang/String;
    .end local v5           #dateFormats_short:[Ljava/lang/String;
    .end local v6           #formattedDates:[Ljava/lang/String;
    .end local v7           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0800d7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 431
    .restart local v4       #dateFormats:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0800d8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #dateFormats_short:[Ljava/lang/String;
    goto :goto_0

    .line 446
    .restart local v2       #currentFormat:Ljava/lang/String;
    .restart local v6       #formattedDates:[Ljava/lang/String;
    .restart local v7       #i:I
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

    .line 450
    :cond_4
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v8, v4}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 451
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v8, v6}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setEntries([Ljava/lang/CharSequence;)V

    .line 453
    if-eqz v0, :cond_5

    .line 454
    aget-object v8, v5, v3

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    .line 459
    :goto_3
    return v0

    .line 456
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormatShortFromSystem()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    return-void

    .line 516
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 662
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 664
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 665
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 666
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 667
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 669
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 670
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 672
    :cond_0
    return-void
.end method

.method private setDateFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 540
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setDateFormatShort(Ljava/lang/String;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 547
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static setTime(II)V
    .locals 7
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 675
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 677
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 678
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 679
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 681
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 682
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 684
    :cond_0
    return-void
.end method

.method private time24FormatUpdated()V
    .locals 3

    .prologue
    .line 499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, time24FormatUpdated:Landroid/content/Intent;
    const-string v1, "time24Format"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method private updateAutoTimeOption(Z)V
    .locals 3
    .parameter "cdmaInService"

    .prologue
    const/4 v1, 0x1

    .line 757
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 758
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 759
    if-eqz p1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 763
    :cond_0
    return-void

    .line 758
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyDemoMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 238
    .local v0, root:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {v1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {v1, v0}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 248
    .end local v0           #root:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    return-void
.end method

.method public checkDuplicatedWording(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "str1"
    .parameter "str2"

    .prologue
    const/4 v0, 0x0

    .line 555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 557
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 561
    const/4 v0, 0x1

    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHtcDateFormatSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 272
    .local v1, now:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0bd4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 286
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Lcom/android/settings/DateTimeSettings$updateHandler;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/DateTimeSettings$updateHandler;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->updateHandler:Landroid/os/Handler;

    .line 107
    :cond_0
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onCreate()V

    .line 111
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 688
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 690
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onDestroy()V

    .line 691
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 254
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 257
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->onPause(Landroid/app/Activity;)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->onPause(Landroid/app/Activity;)V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onPause()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 465
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 466
    const/4 v2, 0x0

    .line 495
    :goto_0
    return v2

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 469
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 470
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->timeUpdated()V

    .line 471
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->time24FormatUpdated()V

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 475
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.app.autosetting.time"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    :cond_2
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 480
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "com.htc.app.autosetting.timezone"

    .line 483
    .local v0, action:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    if-ne p2, v2, :cond_6

    .line 487
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isRecognizedDateFormat()Z

    move-result v2

    if-nez v2, :cond_5

    .line 488
    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    :goto_2
    move v2, v3

    .line 492
    goto :goto_0

    .line 480
    :cond_4
    const-string v0, "com.htc.app.autosetting.timezone.cancel"

    goto :goto_1

    .line 490
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v2}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->showParentDialog()V

    goto :goto_2

    .line 495
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Lcom/htc/preference/HtcPreference;

    check-cast v4, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 189
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 194
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v3, v6, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 214
    const-string v4, "auto_time"

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 215
    .local v1, autoTimeEnabled:Z
    const-string v4, "auto_time_zone"

    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 216
    .local v2, autoTimeZoneEnabled:Z
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoZonePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 221
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    invoke-virtual {v4, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->onResume(Landroid/app/Activity;)V

    .line 222
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {v4, v0}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->onResume(Landroid/app/Activity;)V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->isNeedGrayOutAutoTimeChecker_onResume()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->applyDemoMode()V

    goto :goto_0

    .line 218
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 346
    const-string v5, "date_format"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c034f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, format:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->setDateFormat(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->getDateFormatShort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, shortDateFormat:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/DateTimeSettings;->setDateFormatShort(Ljava/lang/String;)V

    .line 356
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.TIMEFORMAT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 360
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 388
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #shortDateFormat:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const-string v5, "auto_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 363
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 364
    .local v1, autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v1, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    if-nez v1, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setEnabled(Z)V

    .line 368
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/settings/framework/preference/datetime/HtcSetDatePreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v5, v7

    .line 364
    goto :goto_1

    :cond_3
    move v5, v7

    .line 367
    goto :goto_2

    :cond_4
    move v6, v7

    .line 368
    goto :goto_3

    .line 370
    .end local v1           #autoEnabled:Z
    :cond_5
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 372
    .restart local v1       #autoEnabled:Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_6

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    if-nez v1, :cond_7

    :goto_5
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 379
    if-eqz v1, :cond_8

    .line 380
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.app.autosetting.location"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    move v5, v7

    .line 372
    goto :goto_4

    :cond_7
    move v6, v7

    .line 375
    goto :goto_5

    .line 382
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.app.autosetting.cancel"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "auto_time_zone"

    const-string v6, "1"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 767
    packed-switch p1, :pswitch_data_0

    .line 799
    :goto_0
    return-void

    .line 769
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a9c

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a9d

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040258

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DateTimeSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/DateTimeSettings$4;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040256

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 291
    invoke-static {p1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v7

    .line 292
    .local v7, bSupportAllCaps:Z
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    .line 293
    .local v12, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 294
    .local v11, now:Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/datetime/HtcSetTimePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    if-eqz v7, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getHtcDateFormatSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, dateFormats:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->isUseSIEDateFormatList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/android/settings/DateTimeFormatFromSIE;->getSIEDateFormats()[Ljava/lang/String;

    move-result-object v8

    .line 315
    :cond_0
    array-length v0, v8

    new-array v9, v0, [Ljava/lang/String;

    .line 316
    .local v9, formattedDates:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v0, v9

    if-ge v10, v0, :cond_3

    .line 317
    if-eqz v7, :cond_2

    .line 318
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

    .line 316
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 306
    .end local v8           #dateFormats:[Ljava/lang/String;
    .end local v9           #formattedDates:[Ljava/lang/String;
    .end local v10           #i:I
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getHtcDateFormatSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    .restart local v8       #dateFormats:[Ljava/lang/String;
    .restart local v9       #formattedDates:[Ljava/lang/String;
    .restart local v10       #i:I
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

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Lcom/android/settings/widget/HtcListPreferenceDateFormat;

    invoke-virtual {v0, v9}, Lcom/android/settings/widget/HtcListPreferenceDateFormat;->setEntries([Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

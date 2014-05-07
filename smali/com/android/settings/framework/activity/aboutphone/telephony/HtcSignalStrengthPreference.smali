.class public Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcSignalStrengthPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSummary:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mCallState:I

    .line 54
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mCallState:I

    .line 54
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mCallState:I

    .line 54
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mCallState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method private initialListener(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 342
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    const-string v1, "initialListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 349
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 385
    return-void
.end method

.method private makeSummaryString(II)Ljava/lang/StringBuffer;
    .locals 8
    .parameter "rilRadioType"
    .parameter "phoneType"

    .prologue
    const v7, 0x7f0c0b6b

    const v6, 0x7f0c08b2

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 415
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 416
    .local v0, ret:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v3, :cond_0

    .line 417
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 475
    .end local v0           #ret:Ljava/lang/StringBuffer;
    :goto_0
    return-object v0

    .line 420
    .restart local v0       #ret:Ljava/lang/StringBuffer;
    :cond_0
    const/16 v3, 0xe

    if-ne p1, v3, :cond_2

    .line 424
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getHtcLteRsrp()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getHtcLteRsrp()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c08b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getHtcLteRsrq()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 441
    :cond_2
    if-ne p2, v5, :cond_7

    .line 443
    const/16 v3, 0xd

    if-eq p1, v3, :cond_3

    const/4 v3, 0x7

    if-eq p1, v3, :cond_3

    const/16 v3, 0x8

    if-eq p1, v3, :cond_3

    const/16 v3, 0xc

    if-ne p1, v3, :cond_6

    .line 447
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 448
    .local v2, signalDbm:I
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v1

    .line 458
    .local v1, signalAsu:I
    :goto_1
    if-ne v4, v2, :cond_4

    const/4 v2, 0x0

    .line 459
    :cond_4
    if-ne v4, v1, :cond_5

    const/4 v1, 0x0

    .line 463
    :cond_5
    if-ne p2, v5, :cond_8

    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 451
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    :cond_6
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 452
    .restart local v2       #signalDbm:I
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .restart local v1       #signalAsu:I
    goto :goto_1

    .line 455
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    :cond_7
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 456
    .restart local v2       #signalDbm:I
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .restart local v1       #signalAsu:I
    goto :goto_1

    .line 468
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0b6c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private registerListener()V
    .locals 3

    .prologue
    .line 388
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x121

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_1
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    const-string v1, "registerListener: mTelephonyManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 3

    .prologue
    .line 405
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 412
    :cond_1
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0e5d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->initialListener(Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onPauseInBackground(Landroid/app/Activity;)V

    .line 318
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->unregisterListener()V

    .line 320
    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 321
    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    .line 322
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onResumeInBackground(Landroid/app/Activity;)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 302
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->registerListener()V

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_1
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    const-string v1, "onResumeInBackground: mTelephonyManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSignalStrength()V
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x2

    .line 143
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v3, :cond_3

    .line 144
    :cond_0
    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSignalStrength ignored. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_1

    const-string v3, "mServiceState is null "

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v3, :cond_2

    const-string v3, "mSignalStrength is null "

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_2
    return-void

    .line 144
    :cond_1
    const-string v3, ""

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 149
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v0

    .line 150
    .local v0, phoneType:I
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v4

    if-eq v0, v5, :cond_4

    const/4 v3, 0x1

    :goto_3
    if-eq v4, v3, :cond_5

    .line 151
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->TAG:Ljava/lang/String;

    const-string v4, "updateSignalStrength ignore because phone type not matched"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 156
    :cond_5
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v2

    .line 158
    .local v2, state:I
    if-eqz v2, :cond_6

    .line 159
    const-string v3, "0"

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    .line 183
    :goto_4
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 161
    :cond_6
    iget v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mCallState:I

    if-eqz v3, :cond_7

    if-ne v0, v5, :cond_7

    .line 164
    const/4 v3, 0x6

    invoke-direct {p0, v3, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->makeSummaryString(II)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    goto :goto_4

    .line 166
    :cond_7
    const/4 v1, 0x0

    .line 167
    .local v1, radioType:I
    if-ne v0, v5, :cond_9

    .line 168
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCombinedRadioTechnology()I

    move-result v1

    .line 176
    :cond_8
    :goto_5
    if-ne v1, v6, :cond_a

    .line 177
    invoke-direct {p0, v6, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->makeSummaryString(II)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    goto :goto_4

    .line 170
    :cond_9
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 171
    if-nez v1, :cond_8

    .line 172
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    goto :goto_5

    .line 179
    :cond_a
    invoke-direct {p0, v1, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->makeSummaryString(II)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->mSummary:Ljava/lang/String;

    goto :goto_4
.end method

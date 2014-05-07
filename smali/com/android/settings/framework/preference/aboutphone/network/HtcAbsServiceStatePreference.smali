.class public abstract Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcAbsServiceStatePreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialListener(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initialListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference$1;-><init>(Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private registerListener(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerListener: mTelephonyManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getSummaryString(Landroid/telephony/ServiceState;)Ljava/lang/String;
.end method

.method protected isConstantSummary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->getSummaryString(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onInitializeInBackground(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->initialListener(Landroid/content/Context;)V

    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onPauseInBackground(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->unregisterListener()V

    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onResumeInBackground(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/network/HtcAbsServiceStatePreference;->registerListener(Landroid/content/Context;)V

    return-void
.end method

.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;
    }
.end annotation


# static fields
.field static CT_NETWORK_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_GET_CDMA_PROFILE1_NAI:I = 0x384

.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneStatus"

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field private static PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference; = null

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I

.field private static mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private static mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;


# instance fields
.field private final PRO1_NAI_CMD:Ljava/lang/String;

.field key:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

.field private mOperatorNamePreference:Lcom/htc/preference/HtcPreference;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

.field private mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "GPRS"

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EDGE"

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "UMTS"

    const-string v2, "WCDMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSDPA"

    const-string v2, "HSPA+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSUPA"

    const-string v2, "HSPA+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSPA"

    const-string v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSPAP"

    const-string v2, "HSPAP+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "GSM"

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "CDMA-IS95A"

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "CDMA-IS95B"

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "1xRTT"

    const-string v2, "CDMA 1x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EvDo-rev.0"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EvDo-rev.A"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EvDo-rev.B"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "eHRPD"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "C826D10101"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PRO1_NAI_CMD:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->key:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/preference/HtcPreference;)Lcom/htc/preference/HtcPreference;
    .locals 0

    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    return-object p0
.end method

.method static synthetic access$200()Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private doPlugin()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const v7, 0x7f0c06ea

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v6}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcOperatorNamePreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcOperatorNamePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v7, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-direct {v7, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-static {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginNetworkType(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    invoke-static {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginServiceState(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportDetailedRoaming()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->attachRoamingStateNotifier(Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;)V

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_1
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    :goto_1
    sget-boolean v7, Lcom/android/settings/HtcFeatureList;->FEATURE_LIFE_CALL_TIMER_DATA_USAGE:Z

    if-eqz v7, :cond_2

    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeCallsPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeCallsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeTimerPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeTimerPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    new-instance v7, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;

    invoke-direct {v7, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mHandler:Landroid/os/Handler;

    sput-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    goto :goto_1

    :cond_5
    const-string v7, "HtcAboutPhoneStatus"

    const-string v8, "OoO Unknown Phone Type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v4, ""

    :goto_0
    if-gt v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v1, v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v4
.end method

.method public static getCTNetwrokTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private static validateStateOfNv(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    const/4 v2, -0x1

    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    const-string v0, ""

    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    const-string v0, "internal dmss used"

    goto :goto_0

    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    const-string v0, "can\'t recognize command"

    goto :goto_0

    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    const-string v0, "memory is full"

    goto :goto_0

    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    const-string v0, "command is fail"

    goto :goto_0

    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x2

    const-string v0, "not support this command"

    goto :goto_0

    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x2

    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    const-string v0, "memeory is read only"

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->unregisterIntent()V

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->registerIntent()V

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

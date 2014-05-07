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

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    .line 534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    .line 536
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "GPRS"

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EDGE"

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "UMTS"

    const-string v2, "WCDMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSDPA"

    const-string v2, "HSPA+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSUPA"

    const-string v2, "HSPA+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSPA"

    const-string v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "HSPAP"

    const-string v2, "HSPAP+"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "GSM"

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "CDMA-IS95A"

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "CDMA-IS95B"

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "1xRTT"

    const-string v2, "CDMA 1x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EvDo-rev.0"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EvDo-rev.A"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "EvDo-rev.B"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->CT_NETWORK_TYPE:Ljava/util/HashMap;

    const-string v1, "eHRPD"

    const-string v2, "CDMA EVDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 363
    const-string v0, "C826D10101"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PRO1_NAI_CMD:Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->key:Ljava/lang/String;

    .line 425
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->validateStateOfNv(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/preference/HtcPreference;)Lcom/htc/preference/HtcPreference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    return-object p0
.end method

.method static synthetic access$200()Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mOperatorNamePreference:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private doPlugin()V
    .locals 9

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v4

    .line 118
    .local v4, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    .line 119
    .local v6, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v7, 0x7f0c06ea

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 120
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 125
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcOperatorNamePreference;

    invoke-direct {v3, v0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcOperatorNamePreference;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 131
    new-instance v7, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-direct {v7, v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    .line 132
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 133
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mSignalStrengthPreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 140
    invoke-static {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginNetworkType(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mNetworkTypePreference:Lcom/htc/preference/HtcPreference;

    .line 143
    invoke-static {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginServiceState(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    .line 147
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, imsServiceStatePreference:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;
    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 157
    .end local v1           #imsServiceStatePreference:Lcom/android/settings/framework/preference/aboutphone/network/HtcImsServiceStatePreference;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 162
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportDetailedRoaming()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 163
    new-instance v2, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;-><init>(Landroid/content/Context;)V

    .line 167
    .local v2, notifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 170
    new-instance v5, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;-><init>(Landroid/content/Context;)V

    .line 171
    .local v5, roamingPreference:Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;
    invoke-virtual {v5, v2}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;->attachRoamingStateNotifier(Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;)V

    .line 172
    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 173
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 178
    .end local v2           #notifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;
    .end local v5           #roamingPreference:Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreference;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 194
    :goto_1
    sget-boolean v7, Lcom/android/settings/HtcFeatureList;->FEATURE_LIFE_CALL_TIMER_DATA_USAGE:Z

    if-eqz v7, :cond_2

    .line 195
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeCallsPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeCallsPreference;-><init>(Landroid/content/Context;)V

    .line 196
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 199
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeTimerPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeTimerPreference;-><init>(Landroid/content/Context;)V

    .line 200
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 203
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataRxPreference;-><init>(Landroid/content/Context;)V

    .line 204
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 205
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 207
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/aboutphone/network/HtcCdmaLifeDataTxPreference;-><init>(Landroid/content/Context;)V

    .line 208
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 209
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->addCallback(Ljava/lang/Object;)V

    .line 213
    :cond_2
    return-void

    .line 165
    :cond_3
    new-instance v2, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;-><init>(Landroid/content/Context;)V

    .restart local v2       #notifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;
    goto :goto_0

    .line 181
    .end local v2           #notifier:Lcom/android/settings/framework/core/telephony/HtcIRoamingStateNotifier;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 184
    new-instance v7, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;

    invoke-direct {v7, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V

    iput-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mHandler:Landroid/os/Handler;

    .line 185
    sput-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 186
    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    goto :goto_1

    .line 188
    :cond_5
    const-string v7, "HtcAboutPhoneStatus"

    const-string v8, "OoO Unknown Phone Type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 344
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 345
    .local v2, j:I
    const-string v4, ""

    .line 347
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 348
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, tmp:Ljava/lang/String;
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

    .line 350
    move v1, v2

    .line 351
    add-int/lit8 v2, v2, 0x2

    .line 352
    goto :goto_0

    .line 353
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 354
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static getCTNetwrokTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "networkType"

    .prologue
    .line 565
    return-object p0
.end method

.method private static validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 301
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 302
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    const/4 v2, 0x0

    .line 304
    const-string v0, ""

    .line 330
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
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

    .line 333
    :cond_0
    return v2

    .line 305
    :cond_1
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    const/4 v2, 0x1

    .line 307
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 308
    :cond_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    const/4 v2, 0x1

    .line 310
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 311
    :cond_3
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    const/4 v2, 0x1

    .line 313
    const-string v0, "memory is full"

    goto :goto_0

    .line 314
    :cond_4
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 315
    const/4 v2, 0x1

    .line 316
    const-string v0, "command is fail"

    goto :goto_0

    .line 317
    :cond_5
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 318
    const/4 v2, 0x2

    .line 319
    const-string v0, "not support this command"

    goto :goto_0

    .line 320
    :cond_6
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 321
    const/4 v2, 0x2

    .line 322
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 323
    :cond_7
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 324
    const/4 v2, 0x1

    .line 325
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 327
    :cond_8
    const/4 v2, 0x1

    .line 328
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 529
    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->requestHandlers()V

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->unregisterIntent()V

    .line 263
    iput-boolean v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z

    .line 264
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 269
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mServiceStatePreference:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->registerIntent()V

    .line 229
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->PreferenceOfCdmaNAI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 242
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mIsForeground:Z

    .line 243
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 250
    :cond_1
    return-void
.end method

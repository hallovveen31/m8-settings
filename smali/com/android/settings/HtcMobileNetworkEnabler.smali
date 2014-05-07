.class public Lcom/android/settings/HtcMobileNetworkEnabler;
.super Ljava/lang/Object;
.source "HtcMobileNetworkEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcMobileNetworkEnabler$2;,
        Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HTC_SIMCARD_STATUS_UPDATE:Ljava/lang/String; = "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

.field private static final ACTION_MODEMLINK_DISABLED:Ljava/lang/String; = "com.htc.is.disabled"

.field private static final ACTION_MODEMLINK_ENABLED:Ljava/lang/String; = "com.htc.is.enabled"

.field protected static final ALLOW_ALL_TRIP:I = 0x1

.field protected static final ALLOW_THIS_TRIP:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field protected static final DENY_ROAMING:I = 0x0

.field public static final FEATURE_SUPPORT_MOBILE_DATA_TURN_OFF_ALERT:Z = false

.field private static final HAS_SIM_CHECK:Z = false

.field private static SERVICE_STATE_CHECK:Z = false

.field public static final SUMMARY_AIR_MODE_DATA_ROAMING_ON:I = 0x64

.field public static final SUMMARY_CONNECTED:I = 0x2

.field public static final SUMMARY_CONNECTING:I = 0x1

.field public static final SUMMARY_DISCONNECTED:I = 0x3

.field public static final SUMMARY_DISCONNECTED_APN_ERROR:I = 0x5

.field public static final SUMMARY_DISCONNECTED_DENIED:I = 0x6

.field public static final SUMMARY_DISCONNECTED_ENABLED:I = 0x8

.field public static final SUMMARY_DISCONNECTED_ERROR:I = 0x4

.field public static final SUMMARY_DISCONNECTED_RADIO_OFF:I = 0x9

.field public static final SUMMARY_DISCONNECTED_ROAMING_ERROR:I = 0x7

.field public static final SUMMARY_DISCONNECTED_WIFI_ON:I = 0xa

.field public static final SUMMARY_DISCONNECTED_WIMAX_4G_ON:I = 0xb

.field public static final SUMMARY_DISCONNECTED_WIMAX_WB_ON:I = 0xc

.field public static final SUMMARY_DISCONNECTED_WIMAX_WX_ON:I = 0xd

.field public static final SUMMARY_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcMobileNetworkEnabler"

.field private static mEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

.field private static mWimaxType:I


# instance fields
.field private hasReceivedHtcSIMIntent:Z

.field private hasRegisterredReciever:Z

.field private mCheckState:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEnableState:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMobileDataEnabledSetting:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;

.field private mSettingsEnableState:Z

.field private mSummaryType:I

.field private mSupportDataServiceState:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/HtcMobileNetworkEnabler;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/HtcMobileNetworkEnabler;->SERVICE_STATE_CHECK:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/HtcMobileNetworkEnabler;->mWimaxType:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/HtcMobileNetworkEnabler;->mEnabler:Lcom/android/settings/HtcMobileNetworkEnabler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mEnableState:Z

    iput-boolean v5, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSettingsEnableState:Z

    iput v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSummaryType:I

    iput-boolean v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->hasRegisterredReciever:Z

    iput-boolean v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->hasReceivedHtcSIMIntent:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSupportDataServiceState:Z

    new-instance v0, Lcom/android/settings/HtcMobileNetworkEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcMobileNetworkEnabler$1;-><init>(Lcom/android/settings/HtcMobileNetworkEnabler;)V

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;-><init>(Lcom/android/settings/HtcMobileNetworkEnabler;Lcom/android/settings/HtcMobileNetworkEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mReceiver:Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v1, "htctelephony"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/HtcTelephonyManager;

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.HTC_SIMCARD_STATUS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mReceiver:Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;

    iget-object v2, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    iget-object v4, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->hasRegisterredReciever:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HtcMobileNetworkEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkDisplayPolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/HtcMobileNetworkEnabler;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/HtcMobileNetworkEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/HtcMobileNetworkEnabler;->getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/HtcMobileNetworkEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/HtcMobileNetworkEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/HtcMobileNetworkEnabler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/HtcMobileNetworkEnabler;Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/HtcMobileNetworkEnabler;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/HtcMobileNetworkEnabler;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/HtcMobileNetworkEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->hasReceivedHtcSIMIntent:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/HtcMobileNetworkEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->hasReceivedHtcSIMIntent:Z

    return p1
.end method

.method private checkMobileNetworkDisplayPolicy()V
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "HtcMobileNetworkEnabler"

    const-string v11, "checkMobileNetworkDisplayPolicy() "

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_0
    move v4, v10

    :goto_0
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v8, "HtcMobileNetworkEnabler"

    const-string v11, "mConnectivityManager is null, rebind it"

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mMobileDataEnabledSetting:Z

    if-eqz v4, :cond_2

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v5

    const-string v8, "HtcMobileNetworkEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMobileDataEnabledSetting = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mMobileDataEnabledSetting:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; mMobileDataPhoneType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v8, :cond_3

    const-string v8, "HtcMobileNetworkEnabler"

    const-string v11, "mHtcTelephonyManager is null, rebind it."

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v11, "htctelephony"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/HtcTelephonyManager;

    iput-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    :cond_3
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v8, :cond_4

    if-eqz v4, :cond_10

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v8, v5}, Lcom/htc/service/HtcTelephonyManager;->getHtcServiceStateExt(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v8, v5}, Lcom/htc/service/HtcTelephonyManager;->getGprsStateExt(I)I

    move-result v2

    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v8, :cond_5

    const-string v8, "HtcMobileNetworkEnabler"

    const-string v11, "mTelephonyManager is null, rebind it."

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_5
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v8, :cond_6

    if-eqz v4, :cond_11

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v8, v5}, Lcom/htc/service/HtcTelephonyManager;->hasIccCardExt(I)Z

    move-result v3

    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v8, :cond_8

    :cond_7
    const-string v11, "HtcMobileNetworkEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHtcTelephonyManager is null:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v8, :cond_12

    move v8, v10

    :goto_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "mTelephonyManager is null:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v8, :cond_13

    move v8, v10

    :goto_4
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "mConnectivityManager is null:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v12, :cond_14

    :goto_5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_9
    if-eqz v2, :cond_a

    sget-boolean v8, Lcom/android/settings/HtcMobileNetworkEnabler;->SERVICE_STATE_CHECK:Z

    if-nez v8, :cond_15

    :cond_a
    if-nez v0, :cond_15

    const/4 v1, 0x1

    :goto_6
    const-string v8, "HtcMobileNetworkEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; gprsState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; airState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; hasSim:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; modemlink:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; enable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_b

    if-nez v3, :cond_c

    :cond_b
    const/4 v7, 0x0

    :cond_c
    const-string v8, "HtcMobileNetworkEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; gprsState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; airState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; hasSim:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; enable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; mEnableState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mEnableState:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; settingsEnableState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mEnableState:Z

    if-eq v8, v1, :cond_d

    iput-boolean v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mEnableState:Z

    iget-boolean v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mEnableState:Z

    invoke-virtual {p0, v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->onEnableStateChange(Z)V

    :cond_d
    iget-boolean v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSettingsEnableState:Z

    if-eq v7, v8, :cond_e

    iput-boolean v7, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSettingsEnableState:Z

    iget-boolean v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSettingsEnableState:Z

    invoke-virtual {p0, v8}, Lcom/android/settings/HtcMobileNetworkEnabler;->onSettingsEnableStateChange(Z)V

    :cond_e
    return-void

    :cond_f
    move v4, v9

    goto/16 :goto_0

    :cond_10
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v8}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I

    move-result v6

    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v8}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v2

    goto/16 :goto_1

    :cond_11
    iget-object v8, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    goto/16 :goto_2

    :cond_12
    move v8, v9

    goto/16 :goto_3

    :cond_13
    move v8, v9

    goto/16 :goto_4

    :cond_14
    move v10, v9

    goto/16 :goto_5

    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_16
    if-eqz v6, :cond_17

    sget-boolean v8, Lcom/android/settings/HtcMobileNetworkEnabler;->SERVICE_STATE_CHECK:Z

    if-nez v8, :cond_18

    :cond_17
    if-nez v0, :cond_18

    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_6
.end method

.method private checkMobileNetworkSummaryPolicy()I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string v1, "HtcMobileNetworkEnabler"

    const-string v2, "connectivity is null, rebind it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    sget-boolean v1, Lcom/android/settings/HtcMobileNetworkEnabler;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcMobileNetworkEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ni:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1

    :cond_2
    const-string v1, "HtcMobileNetworkEnabler"

    const-string v2, "mConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "HtcMobileNetworkEnabler"

    const-string v2, "networkInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v4}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private checkMobileNetworkSummaryPolicy(Landroid/net/NetworkInfo$State;Ljava/lang/String;)I
    .locals 6

    if-nez p2, :cond_0

    const-string p2, "unspecified"

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v3, :cond_2

    const-string v3, "HtcMobileNetworkEnabler"

    const-string v4, "mHtcTelephonyManager is null, rebind it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v4, "htctelephony"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/HtcTelephonyManager;

    iput-object v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    :cond_2
    iget-object v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    iget-boolean v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/settings/HtcMobileNetworkEnabler$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x64

    :cond_4
    const-string v3, "HtcMobileNetworkEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheckState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mSummaryType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSummaryType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; summaryType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSummaryType:I

    if-eq v3, v2, :cond_5

    iput v2, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSummaryType:I

    invoke-virtual {p0, v2}, Lcom/android/settings/HtcMobileNetworkEnabler;->onSummaryChange(I)V

    :cond_5
    iget v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSummaryType:I

    return v3

    :cond_6
    const-string v3, "HtcMobileNetworkEnabler"

    const-string v4, "mHtcTelephonyManager is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const-string v3, "apnChanged"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "pdpDisconnect"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    const/4 v2, 0x4

    :goto_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/HtcMobileNetworkEnabler;->isNetworkActive(I)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v2, 0x8

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    const/4 v2, 0x6

    :cond_9
    if-eqz v0, :cond_3

    const/16 v2, 0x9

    goto :goto_1

    :cond_a
    const-string v3, "datt not subcribed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x5

    goto :goto_2

    :cond_b
    const-string v3, "dataConnectionDenied"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x6

    goto :goto_2

    :cond_c
    const-string v3, "roamingDisabled"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "roamingOn"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const/4 v2, 0x7

    goto :goto_2

    :cond_e
    const-string v3, "radioTurnedOff"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v2, 0x9

    goto :goto_2

    :cond_f
    const-string v3, "pdpTeardown"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v2, 0x8

    goto :goto_2

    :cond_10
    const/4 v2, 0x3

    goto :goto_2

    :cond_11
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/android/settings/HtcMobileNetworkEnabler;->isNetworkActive(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v2, 0xd

    goto :goto_3

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getMobileDataState(Landroid/content/Intent;)Landroid/net/NetworkInfo$State;
    .locals 4

    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v3, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v3, :cond_1

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v3, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v3, :cond_3

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v3, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getPersistedMobileDataEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "HtcMobileNetworkEnabler"

    const-string v1, "connectivity is null, rebind it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    iget-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    :goto_0
    return v0

    :cond_1
    const-string v0, "HtcMobileNetworkEnabler"

    const-string v1, "mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkActive(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    const-string v1, "HtcMobileNetworkEnabler"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCheckedState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getGlobalDataRoamingOption()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->getGlobalDataRoamingOption()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getEnableState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkDisplayPolicy()V

    iget-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mEnableState:Z

    return v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vzw_global_roaming_options"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSettingsEnableState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkDisplayPolicy()V

    iget-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSettingsEnableState:Z

    return v0
.end method

.method public getSummaryType()I
    .locals 3

    const-string v0, "HtcMobileNetworkEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get the SummaryType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSummaryType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/HtcMobileNetworkEnabler;->checkMobileNetworkSummaryPolicy()I

    iget v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mSummaryType:I

    return v0
.end method

.method public onCheckStateChange(Z)V
    .locals 0

    return-void
.end method

.method public onEnableStateChange(Z)V
    .locals 0

    return-void
.end method

.method public onSettingsEnableStateChange(Z)V
    .locals 0

    return-void
.end method

.method public onSummaryChange(I)V
    .locals 0

    return-void
.end method

.method public persistMobileDataSettingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/settings/HtcMobileNetworkEnabler;->onCheckStateChange(Z)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->hasRegisterredReciever:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mReceiver:Lcom/android/settings/HtcMobileNetworkEnabler$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->hasRegisterredReciever:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method public setMobileNetworkEnabled(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/HtcMobileNetworkEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMobileNetworkEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileNetworkEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "HtcMobileNetworkEnabler"

    const-string v1, "connectivity is null, rebind it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/HtcMobileNetworkEnabler;->mCheckState:Z

    if-ne p1, v0, :cond_3

    :goto_1
    return-void

    :cond_2
    const-string v0, "HtcMobileNetworkEnabler"

    const-string v1, "mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settings/HtcMobileNetworkEnabler;->persistMobileDataSettingEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/HtcMobileNetworkEnabler;->persistMobileDataSettingEnabled(Z)V

    goto :goto_1
.end method

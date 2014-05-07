.class public Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;
.super Lcom/android/settings/framework/preference/HtcAbsTogglePreference;
.source "HtcWifiHotspotSwitchPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field public static final KEY:Ljava/lang/String; = null

.field public static final KEY_IS_DIALOG:Ljava/lang/String; = "is_dialog_code"

.field private static final MHS_REQUEST:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m3LMSupported:Z

.field private mActivity:Landroid/app/Activity;

.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDontRemind:Lcom/htc/widget/HtcCheckBox;

.field private mEnableMhs:Z

.field mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsTetherDisable:Z

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mMdmSupported:Z

.field private mMhsIntentFilter:Landroid/content/IntentFilter;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private remindDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->DEBUG:Z

    const-class v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Lcom/htc/widget/HtcCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mDontRemind:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkTetherPolicy()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showRemindDialog(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setWifiAPEnable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setHotspotStatus()V

    return-void
.end method

.method private checkMHSStatus()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    iput v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsStatus:I

    sget-object v2, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mhs status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiAp status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleWifiApStateChanged(I)V

    return-void
.end method

.method private checkTetherPolicy()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcServiceManager;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isMdmHotspotRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isHotspotRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    sget-object v3, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "block = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-eq v3, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    sget-object v3, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "policy block Wi-Fi Hotspot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-eqz v3, :cond_4

    const v3, 0x7f0c0a86

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleWifiApStateChanged(I)V

    goto :goto_0
.end method

.method private handleMhs(Z)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showTurnoffWifiDialog()V

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setEnabledInForeground(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    const v1, 0x7f0c0d31

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0c0dbf

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0c0dc0

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->updateMhsUI(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c106f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mOriginalSummary:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mLayoutFactory:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiRegexs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->isMDMAPIPhase2Supported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.mdm.wifibt.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_MHS:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsIntentFilter:Landroid/content/IntentFilter;

    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method private setHotspotStatus()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    goto :goto_0
.end method

.method private setWifiAPEnable(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    move v1, p1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.showme.LOG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "callingApp"

    const-string v4, "com.android.settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "actionCoverage"

    const-string v4, "topic_tag-internet_connections-use_phone_as_wireless_router"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setEnabledInForeground(Z)V

    :goto_0
    return-void

    :cond_3
    const v3, 0x7f0c0d31

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private showRemindDialog(Z)V
    .locals 7

    move v1, p1

    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c05f1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0517

    new-instance v5, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$7;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$7;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0516

    new-instance v5, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mLayoutFactory:Landroid/view/LayoutInflater;

    const v4, 0x7f04007a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0900ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mDontRemind:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    new-instance v4, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$8;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$8;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.hotspot.TURN_OFF_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    const-string v2, "turn off wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateMhsUI(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "setchecked false summary starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const v0, 0x7f0c0dbf

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v2, :cond_1

    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "setchecked true summary original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14

    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_5
    iget-object v13, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    if-eqz v12, :cond_7

    const/16 v13, 0xd

    if-ne v9, v13, :cond_7

    iget-object v13, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v13}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    if-eqz v11, :cond_6

    const v13, 0x7f0c0d31

    invoke-virtual {p0, v13}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.WifiRouter"

    const-string v2, "com.htc.WifiRouter.Intro"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    const v0, 0x7f0c106f

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x7f0c0716

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v0, 0x7f0c0711

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0c0712

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0c0714

    goto :goto_0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c0711

    return v0
.end method

.method public isMLEnabled()Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "init.svc.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ML value = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSoftapEnabled(Z)Z

    :cond_0
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mActivity:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkMHSStatus()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkTetherPolicy()V

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_blocked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    const v0, 0x7f0c0a5b

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;->setCheckedInForeground(Z)V

    iput-boolean v4, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    :cond_1
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onToggleChange(Z)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_wizard_launch_page"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.WifiRouter"

    const-string v3, "com.htc.WifiRouter.HtcHotspotWizardMainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v5

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSoftapEnabled(Z)Z

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public setSoftapEnabled(Z)Z
    .locals 13

    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move v4, p1

    iget-boolean v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    sget-object v10, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEnable="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleMhs(Z)Z

    move-result v6

    sget-object v10, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMhs result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v4, :cond_2

    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tethering_checkbox_tmous"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    if-nez v1, :cond_2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showTurnoffWifiDialog()V

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-nez v10, :cond_4

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hotspot_remind_dialog"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->isMLEnabled()Z

    move-result v7

    sget-object v10, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MLEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v11, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0c0725

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c0517

    new-instance v12, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$4;

    invoke-direct {v12, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$4;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c0516

    new-instance v12, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;

    invoke-direct {v12, p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c0726

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    new-instance v11, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$5;

    invoke-direct {v11, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$5;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    iget v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I

    if-nez v10, :cond_4

    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showRemindDialog(Z)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setWifiAPEnable(Z)V

    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    :goto_2
    if-nez v4, :cond_5

    const/4 v8, 0x0

    :try_start_1
    const-string v10, "wifi_saved_state"

    invoke-static {v0, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    :goto_3
    const/4 v10, 0x1

    if-ne v8, v10, :cond_5

    if-nez v3, :cond_5

    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v10, "wifi_saved_state"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, ""

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0729

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c072a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    :goto_2
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c072b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    :goto_3
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0dc1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_a
    :goto_4
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

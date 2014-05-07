.class public Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;
.super Lcom/android/settings/framework/preference/HtcAbsTogglePreference;
.source "HtcWifiHotspotSwitchPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
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

    .prologue
    .line 49
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

    .line 51
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->DEBUG:Z

    .line 53
    const-class v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    .line 77
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    .line 82
    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    .line 77
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    .line 82
    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->init()V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    .line 77
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    .line 82
    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->init()V

    .line 133
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mDontRemind:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkTetherPolicy()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showRemindDialog(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setWifiAPEnable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setHotspotStatus()V

    return-void
.end method

.method private checkMHSStatus()V
    .locals 5

    .prologue
    .line 551
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I

    move-result v0

    .line 552
    .local v0, status:I
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 554
    .local v1, wifiApState:I
    iput v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsStatus:I

    .line 555
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

    .line 556
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

    .line 558
    invoke-direct {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleWifiApStateChanged(I)V

    .line 559
    return-void
.end method

.method private checkTetherPolicy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, isBlock:Z
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcServiceManager;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;

    move-result-object v0

    .line 580
    .local v0, devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_0

    .line 582
    const/4 v1, 0x1

    .line 585
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    if-eqz v3, :cond_1

    .line 586
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isMdmHotspotRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    const/4 v1, 0x1

    .line 591
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isHotspotRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    const/4 v1, 0x1

    .line 596
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

    .line 598
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-eq v3, v1, :cond_3

    .line 599
    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    .line 600
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

    .line 601
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-eqz v3, :cond_4

    .line 602
    const v3, 0x7f0c0a86

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    .line 603
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    .line 604
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 610
    :cond_3
    :goto_0
    return-void

    .line 606
    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 607
    .local v2, wifiApState:I
    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleWifiApStateChanged(I)V

    goto :goto_0
.end method

.method private handleMhs(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 518
    if-eqz p1, :cond_3

    .line 520
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 521
    .local v0, wifiState:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 524
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showTurnoffWifiDialog()V

    .line 539
    .end local v0           #wifiState:I
    :goto_0
    return v1

    .line 529
    .restart local v0       #wifiState:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 530
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabledInForeground(Z)V

    goto :goto_0

    .end local v0           #wifiState:I
    :cond_3
    move v1, v2

    .line 539
    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 473
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-eqz v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 509
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 510
    const v1, 0x7f0c0d31

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 477
    :pswitch_0
    const v1, 0x7f0c0dbf

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    .line 478
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 485
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 487
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 490
    :pswitch_2
    const v1, 0x7f0c0dc0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    .line 491
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 494
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 495
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    .line 498
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I

    move-result v0

    .line 500
    .local v0, status:I
    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->updateMhsUI(I)V

    goto :goto_0

    .line 504
    .end local v0           #status:I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 475
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

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    .line 137
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mHtcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-virtual {v1, p0}, Lcom/android/settings/framework/widget/HtcToggleButton;->setOnToggleChangeListener(Lcom/android/settings/framework/widget/HtcToggleButton$OnToggleChangeListener;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c106f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setPersistent(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 144
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 145
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mCm:Landroid/net/ConnectivityManager;

    .line 147
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiRegexs:[Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 150
    .local v0, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->isMDMAPIPhase2Supported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    .line 152
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 153
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMdmSupported:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.mdm.wifibt.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    :cond_2
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_MHS:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    .line 187
    iget-boolean v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v1, :cond_3

    .line 188
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsIntentFilter:Landroid/content/IntentFilter;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method private setHotspotStatus()V
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 395
    .local v0, hotspotstate:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 396
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 401
    .end local v0           #hotspotstate:I
    :cond_1
    :goto_0
    return-void

    .line 398
    .restart local v0       #hotspotstate:I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    goto :goto_0
.end method

.method private setWifiAPEnable(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 324
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 325
    .local v2, wifiState:I
    move v1, p1

    .line 326
    .local v1, isEnable:Z
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 329
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 334
    if-eqz v1, :cond_2

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.showme.LOG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "callingApp"

    const-string v4, "com.android.settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v3, "actionCoverage"

    const-string v4, "topic_tag-internet_connections-use_phone_as_wireless_router"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabledInForeground(Z)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_3
    const v3, 0x7f0c0d31

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private showRemindDialog(Z)V
    .locals 7
    .parameter "wifiapenable"

    .prologue
    .line 348
    move v1, p1

    .line 349
    .local v1, enable:Z
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

    .line 373
    .local v2, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mLayoutFactory:Landroid/view/LayoutInflater;

    const v4, 0x7f04007a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, contentView:Landroid/view/View;
    const v3, 0x7f0900ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mDontRemind:Lcom/htc/widget/HtcCheckBox;

    .line 375
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 384
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    new-instance v4, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$8;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$8;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 389
    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 3

    .prologue
    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.hotspot.TURN_OFF_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    sget-object v1, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    const-string v2, "turn off wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 548
    return-void
.end method

.method private updateMhsUI(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 562
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 563
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "setchecked false summary starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 565
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    .line 566
    const v0, 0x7f0c0dbf

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    if-ne p1, v2, :cond_1

    .line 569
    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "setchecked true summary original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    .line 571
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 446
    const/4 v12, 0x0

    .line 447
    .local v12, wifiTethered:Z
    const/4 v11, 0x0

    .line 449
    .local v11, wifiErrored:Z
    move-object/from16 v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 450
    check-cast v8, Ljava/lang/String;

    .line 451
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 452
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    .line 451
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 449
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 455
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 456
    check-cast v8, Ljava/lang/String;

    .line 457
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 458
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 457
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 455
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 463
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    iget-object v13, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    .line 464
    .local v9, wifiApState:I
    if-eqz v12, :cond_7

    const/16 v13, 0xd

    if-ne v9, v13, :cond_7

    .line 465
    iget-object v13, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v13}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 466
    .local v10, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 470
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 467
    :cond_7
    if-eqz v11, :cond_6

    .line 468
    const v13, 0x7f0c0d31

    invoke-virtual {p0, v13}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 644
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 645
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.htc.WifiRouter"

    const-string v2, "com.htc.WifiRouter.Intro"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 629
    const v0, 0x7f0c106f

    .line 634
    .local v0, resid:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    const v0, 0x7f0c0716

    .line 616
    .local v0, resid:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    :cond_0
    const v0, 0x7f0c0711

    .line 624
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 619
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 620
    const v0, 0x7f0c0712

    goto :goto_0

    .line 621
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    const v0, 0x7f0c0714

    goto :goto_0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 639
    const v0, 0x7f0c0711

    return v0
.end method

.method public isMLEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 405
    const-string v2, "init.svc.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, s:Ljava/lang/String;
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

    .line 409
    if-eqz v0, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v1

    .line 411
    :cond_1
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 665
    if-nez p1, :cond_0

    .line 666
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSoftapEnabled(Z)Z

    .line 670
    :cond_0
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mActivity:Landroid/app/Activity;

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mMhsIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkMHSStatus()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkTetherPolicy()V

    .line 204
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->m3LMSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_blocked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 207
    const v0, 0x7f0c0a5b

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(I)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setEnabled(Z)V

    .line 209
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setCheckedInForeground(Z)V

    .line 210
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mIsTetherDisable:Z

    .line 214
    :cond_1
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 661
    const/4 v0, 0x1

    return v0
.end method

.method public onToggleChange(Z)Z
    .locals 6
    .parameter "newState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 676
    if-eqz p1, :cond_2

    .line 677
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_wizard_launch_page"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 678
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.WifiRouter"

    const-string v3, "com.htc.WifiRouter.HtcHotspotWizardMainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 681
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 699
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v5

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, appDetails:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 689
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 691
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v1       #intent:Landroid/content/Intent;
    aget-object v2, v0, v4

    aget-object v3, v0, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 697
    .end local v0           #appDetails:[Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public setSoftapEnabled(Z)Z
    .locals 13
    .parameter "enable"

    .prologue
    .line 225
    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, cr:Landroid/content/ContentResolver;
    move v4, p1

    .line 227
    .local v4, isEnable:Z
    iget-boolean v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    .line 228
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

    .line 229
    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleMhs(Z)Z

    move-result v6

    .line 230
    .local v6, mhsResult:Z
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

    .line 231
    if-eqz v6, :cond_0

    .line 232
    const/4 v10, 0x1

    .line 317
    .end local v6           #mhsResult:Z
    :goto_0
    return v10

    .line 235
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v4, :cond_2

    .line 236
    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tethering_checkbox_tmous"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 237
    .local v1, dontShow:Z
    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    .line 238
    .local v9, wifiState:I
    if-nez v1, :cond_2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showTurnoffWifiDialog()V

    .line 242
    const/4 v10, 0x0

    goto :goto_0

    .line 250
    .end local v1           #dontShow:Z
    .end local v9           #wifiState:I
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mEnableMhs:Z

    if-nez v10, :cond_4

    .line 252
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

    .line 256
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->isMLEnabled()Z

    move-result v7

    .line 258
    .local v7, mlEnabled:Z
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

    .line 259
    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 260
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

    .line 284
    .local v5, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    new-instance v11, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$5;

    invoke-direct {v11, p0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$5;-><init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 289
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 253
    .end local v5           #mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v7           #mlEnabled:Z
    :catch_0
    move-exception v2

    .line 254
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I

    goto :goto_1

    .line 290
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v7       #mlEnabled:Z
    :cond_3
    if-eqz v4, :cond_4

    iget v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I

    if-nez v10, :cond_4

    .line 291
    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showRemindDialog(Z)V

    .line 292
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 296
    .end local v7           #mlEnabled:Z
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setWifiAPEnable(Z)V

    .line 301
    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    .line 304
    .local v3, isAirplaneMode:Z
    :goto_2
    if-nez v4, :cond_5

    .line 305
    const/4 v8, 0x0

    .line 307
    .local v8, wifiSavedState:I
    :try_start_1
    const-string v10, "wifi_saved_state"

    invoke-static {v0, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 311
    :goto_3
    const/4 v10, 0x1

    if-ne v8, v10, :cond_5

    if-nez v3, :cond_5

    .line 312
    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 313
    const-string v10, "wifi_saved_state"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    .end local v8           #wifiSavedState:I
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 301
    .end local v3           #isAirplaneMode:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 308
    .restart local v3       #isAirplaneMode:Z
    .restart local v8       #wifiSavedState:I
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "wifiConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 423
    const-string v0, ""

    .line 425
    .local v0, s:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0729

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    if-nez v3, :cond_1

    .end local v0           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    :goto_1
    return-void

    .line 426
    .restart local v0       #s:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 429
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

    .line 431
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

    .end local v0           #s:Ljava/lang/String;
    :cond_4
    :goto_2
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0       #s:Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 434
    :cond_6
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 435
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0c072b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    if-nez v3, :cond_8

    .end local v0           #s:Ljava/lang/String;
    :cond_7
    :goto_3
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0       #s:Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 439
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

    .end local v0           #s:Ljava/lang/String;
    :cond_a
    :goto_4
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .restart local v0       #s:Ljava/lang/String;
    :cond_b
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

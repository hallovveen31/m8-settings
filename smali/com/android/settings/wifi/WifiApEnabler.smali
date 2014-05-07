.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# static fields
.field public static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field public static final KEY_IS_DIALOG:Ljava/lang/String; = "is_dialog_code"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m3LMSupported:Z

.field private final mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDontRemind:Lcom/htc/widget/HtcCheckBox;

.field private mEnableMhs:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsTetherDisable:Z

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mMdmSupported:Z

.field private final mMhsIntentFilter:Landroid/content/IntentFilter;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private remindDialog:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 6
    .parameter "context"
    .parameter "checkBox"

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v1, "WifiApEnabler"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->TAG:Ljava/lang/String;

    .line 92
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    .line 94
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->m3LMSupported:Z

    .line 96
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMdmSupported:Z

    .line 98
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApEnabler$2;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 136
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4016

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    .line 137
    const v1, 0x7f0c0718

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 141
    :goto_0
    invoke-virtual {p2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 143
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 144
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 146
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 149
    .local v0, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->isMDMAPIPhase2Supported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMdmSupported:Z

    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMdmSupported:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.mdm.wifibt.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    :cond_1
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_MHS:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    .line 186
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v1, :cond_3

    .line 187
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsIntentFilter:Landroid/content/IntentFilter;

    .line 191
    :goto_1
    return-void

    .line 139
    .end local v0           #devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    goto :goto_0

    .line 189
    .restart local v0       #devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsIntentFilter:Landroid/content/IntentFilter;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkTetherPolicy()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->showRemindDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiAPEnable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->setHotspotStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApEnabler;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDontRemind:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method private checkMHSStatus()V
    .locals 5

    .prologue
    .line 582
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I

    move-result v0

    .line 583
    .local v0, status:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 585
    .local v1, wifiApState:I
    iput v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsStatus:I

    .line 586
    const-string v2, "WifiApEnabler"

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

    .line 587
    const-string v2, "WifiApEnabler"

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

    .line 589
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    .line 590
    return-void
.end method

.method private checkTetherPolicy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 608
    const/4 v1, 0x0

    .line 609
    .local v1, isBlock:Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcServiceManager;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;

    move-result-object v0

    .line 611
    .local v0, devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_0

    .line 613
    const/4 v1, 0x1

    .line 616
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMdmSupported:Z

    if-eqz v3, :cond_1

    .line 617
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isMdmHotspotRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    const/4 v1, 0x1

    .line 622
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_HOTSPOT_RESTRICTED()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 623
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isHotspotRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    const/4 v1, 0x1

    .line 627
    :cond_2
    const-string v3, "WifiApEnabler"

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

    .line 629
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    if-eq v3, v1, :cond_3

    .line 630
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    .line 631
    const-string v3, "WifiApEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "policy block Wi-Fi Hotspot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    if-eqz v3, :cond_4

    .line 633
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c0a86

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 634
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 635
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 641
    :cond_3
    :goto_0
    return-void

    .line 637
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 638
    .local v2, wifiApState:I
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    goto :goto_0
.end method

.method private handleMhs(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 549
    if-eqz p1, :cond_3

    .line 551
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 552
    .local v0, wifiState:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 555
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->showTurnoffWifiDialog()V

    .line 570
    .end local v0           #wifiState:I
    :goto_0
    return v1

    .line 560
    .restart local v0       #wifiState:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 561
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 567
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #wifiState:I
    :cond_3
    move v1, v2

    .line 570
    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 504
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    if-eqz v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 540
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 541
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0c0d31

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 508
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0c0dbf

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 516
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 518
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 521
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0c0dc0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 522
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 525
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 526
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 529
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I

    move-result v0

    .line 531
    .local v0, status:I
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->updateMhsUI(I)V

    goto :goto_0

    .line 535
    .end local v0           #status:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHotspotStatus()V
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 430
    .local v0, hotspotstate:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 436
    .end local v0           #hotspotstate:I
    :cond_1
    :goto_0
    return-void

    .line 433
    .restart local v0       #hotspotstate:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setWifiAPEnable(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 359
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 360
    .local v2, wifiState:I
    move v1, p1

    .line 361
    .local v1, isEnable:Z
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 364
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 369
    if-eqz v1, :cond_2

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.showme.LOG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "callingApp"

    const-string v4, "com.android.settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v3, "actionCoverage"

    const-string v4, "topic_tag-internet_connections-use_phone_as_wireless_router"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c0d31

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private showRemindDialog(Z)V
    .locals 7
    .parameter "wifiapenable"

    .prologue
    .line 383
    move v1, p1

    .line 384
    .local v1, enable:Z
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c05f1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0517

    new-instance v5, Lcom/android/settings/wifi/WifiApEnabler$7;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiApEnabler$7;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0516

    new-instance v5, Lcom/android/settings/wifi/WifiApEnabler$6;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/wifi/WifiApEnabler$6;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 408
    .local v2, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mLayoutFactory:Landroid/view/LayoutInflater;

    const v4, 0x7f04007a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, contentView:Landroid/view/View;
    const v3, 0x7f0900ee

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDontRemind:Lcom/htc/widget/HtcCheckBox;

    .line 410
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 419
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/WifiApEnabler$8;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApEnabler$8;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 424
    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 3

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.hotspot.TURN_OFF_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 576
    const-string v1, "WifiApEnabler"

    const-string v2, "turn off wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 579
    return-void
.end method

.method private updateMhsUI(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 593
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 594
    :cond_0
    const-string v0, "WifiApEnabler"

    const-string v1, "setchecked false summary starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c0dbf

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 605
    :cond_1
    :goto_0
    return-void

    .line 599
    :cond_2
    if-ne p1, v2, :cond_1

    .line 600
    const-string v0, "WifiApEnabler"

    const-string v1, "setchecked true summary original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 15
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 477
    const/4 v12, 0x0

    .line 478
    .local v12, wifiTethered:Z
    const/4 v11, 0x0

    .line 480
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

    .line 481
    check-cast v8, Ljava/lang/String;

    .line 482
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 483
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    .line 482
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 486
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

    .line 487
    check-cast v8, Ljava/lang/String;

    .line 488
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 489
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 488
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 486
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 494
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    iget-object v13, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    .line 495
    .local v9, wifiApState:I
    if-eqz v12, :cond_7

    const/16 v13, 0xd

    if-ne v9, v13, :cond_7

    .line 496
    iget-object v13, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v13}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 497
    .local v10, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 501
    .end local v10           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 498
    :cond_7
    if-eqz v11, :cond_6

    .line 499
    iget-object v13, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v14, 0x7f0c0d31

    invoke-virtual {v13, v14}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public isMLEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 440
    const-string v2, "init.svc.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, s:Ljava/lang/String;
    const-string v2, "WifiApEnabler"

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

    .line 444
    if-eqz v0, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v1

    .line 446
    :cond_1
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkMHSStatus()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkTetherPolicy()V

    .line 201
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->m3LMSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_blocked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c0a5b

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 207
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIsTetherDisable:Z

    .line 211
    :cond_1
    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 13
    .parameter "enable"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 232
    iget-object v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, cr:Landroid/content/ContentResolver;
    move v3, p1

    .line 234
    .local v3, isEnable:Z
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    .line 235
    const-string v10, "WifiApEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEnable="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->handleMhs(Z)Z

    move-result v5

    .line 237
    .local v5, mhsResult:Z
    const-string v10, "WifiApEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMhs result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz v5, :cond_0

    .line 352
    .end local v5           #mhsResult:Z
    :goto_0
    return v8

    .line 247
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-nez v10, :cond_2

    .line 249
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hotspot_remind_dialog"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->isMLEnabled()Z

    move-result v6

    .line 255
    .local v6, mlEnabled:Z
    const-string v10, "WifiApEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MLEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    .line 257
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0c0725

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c0517

    new-instance v12, Lcom/android/settings/wifi/WifiApEnabler$4;

    invoke-direct {v12, p0}, Lcom/android/settings/wifi/WifiApEnabler$4;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c0516

    new-instance v12, Lcom/android/settings/wifi/WifiApEnabler$3;

    invoke-direct {v12, p0, v3}, Lcom/android/settings/wifi/WifiApEnabler$3;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v10, 0x7f0c0726

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 281
    .local v4, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    new-instance v10, Lcom/android/settings/wifi/WifiApEnabler$5;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiApEnabler$5;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move v8, v9

    .line 286
    goto :goto_0

    .line 250
    .end local v4           #mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v6           #mlEnabled:Z
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    iput v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I

    goto :goto_1

    .line 287
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v6       #mlEnabled:Z
    :cond_1
    if-eqz v3, :cond_2

    iget v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I

    if-nez v10, :cond_2

    .line 288
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->showRemindDialog(Z)V

    move v8, v9

    .line 289
    goto/16 :goto_0

    .line 331
    .end local v6           #mlEnabled:Z
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiAPEnable(Z)V

    .line 336
    iget-object v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_4

    move v2, v8

    .line 339
    .local v2, isAirplaneMode:Z
    :goto_2
    if-nez v3, :cond_3

    .line 340
    const/4 v7, 0x0

    .line 342
    .local v7, wifiSavedState:I
    :try_start_1
    const-string v10, "wifi_saved_state"

    invoke-static {v0, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 346
    :goto_3
    if-ne v7, v8, :cond_3

    if-nez v2, :cond_3

    .line 347
    iget-object v10, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 348
    const-string v8, "wifi_saved_state"

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v7           #wifiSavedState:I
    :cond_3
    move v8, v9

    .line 352
    goto/16 :goto_0

    .end local v2           #isAirplaneMode:Z
    :cond_4
    move v2, v9

    .line 336
    goto :goto_2

    .line 343
    .restart local v2       #isAirplaneMode:Z
    .restart local v7       #wifiSavedState:I
    :catch_1
    move-exception v10

    goto :goto_3
.end method

.method updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 458
    const-string v0, ""

    .line 460
    .local v0, s:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0729

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    if-nez v4, :cond_1

    .end local v0           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    :goto_1
    return-void

    .line 461
    .restart local v0       #s:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 466
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c072a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    if-nez v4, :cond_5

    .end local v0           #s:Ljava/lang/String;
    :cond_4
    :goto_2
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0       #s:Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 470
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0dc1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    if-nez v4, :cond_8

    .end local v0           #s:Ljava/lang/String;
    :cond_7
    :goto_3
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0       #s:Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.class public Lcom/android/settings/wifi/LanInfo;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "LanInfo.java"


# static fields
.field private static final KEY_LOCAL_GATEWAY:Ljava/lang/String; = "gateway"

.field private static final KEY_LOCAL_IP:Ljava/lang/String; = "ip_address"

.field private static final KEY_LOCAL_NETMASK:Ljava/lang/String; = "netmask"


# instance fields
.field private mGatewayPref:Lcom/htc/preference/HtcPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIpPref:Lcom/htc/preference/HtcPreference;

.field private mIsConnected:Z

.field private mNetMaskPref:Lcom/htc/preference/HtcPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/LanInfo;->mIsConnected:Z

    new-instance v0, Lcom/android/settings/wifi/LanInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/LanInfo$1;-><init>(Lcom/android/settings/wifi/LanInfo;)V

    iput-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/LanInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/LanInfo;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/LanInfo;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mIpPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mGatewayPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mNetMaskPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private initBackSettings()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v4, v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v4, Lcom/android/settings/wifi/LanInfo$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wifi/LanInfo$2;-><init>(Lcom/android/settings/wifi/LanInfo;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const-string v1, "ip_address"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mIpPref:Lcom/htc/preference/HtcPreference;

    const-string v1, "gateway"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mGatewayPref:Lcom/htc/preference/HtcPreference;

    const-string v1, "netmask"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mNetMaskPref:Lcom/htc/preference/HtcPreference;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/LanInfo;->initBackSettings()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/LanInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

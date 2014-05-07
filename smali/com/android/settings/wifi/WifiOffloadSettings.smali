.class public Lcom/android/settings/wifi/WifiOffloadSettings;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "WifiOffloadSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final KEY_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final KEY_ADD_OTHER_NETWORK:Ljava/lang/String; = "add_network"

.field private static final KEY_DISABLE_WIFI:Ljava/lang/String; = "disable_wifi"

.field private static final KEY_NEVER_AUTO_TURN_ON_WIFI:Ljava/lang/String; = "never_auto_turn_on_wifi"

.field private static final KEY_NOTIFY_ME:Ljava/lang/String; = "notify_me"

.field private static final KEY_OPEN_NETWORK_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_REMINDING_NEXT_TIME:Ljava/lang/String; = "reminding_next_time"

.field private static final KEY_WIFI_ENABLED:Ljava/lang/String; = "enable_wifi"

.field private static final KEY_WIFI_SETTINGS:Ljava/lang/String; = "wifi_settings"

.field private static final KEY_WPS_PBC:Ljava/lang/String; = "wps_pbc_mode"

.field private static final TAG:Ljava/lang/String; = "WifiOffloadSettings"


# instance fields
.field private exit:Z

.field private mButton:Lcom/htc/widget/HtcListItem;

.field private mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

.field private turnOffWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->exit:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->turnOffWifi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiOffloadSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setupTimer()V

    return-void
.end method

.method private setupTimer()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    .line 152
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 66
    const-string v2, "WifiOffloadSettings"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 70
    .local v1, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f0c0895

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiOffloadSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04008a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 72
    const v2, 0x7f0c0899

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiOffloadSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 73
    new-instance v2, Lcom/android/settings/wifi/WifiOffloadSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiOffloadSettings$1;-><init>(Lcom/android/settings/wifi/WifiOffloadSettings;)V

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setupAlert()V

    .line 82
    invoke-static {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    .line 85
    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 86
    .local v0, WiFiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 91
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 117
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sparse-switch p2, :sswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 124
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 135
    const-string v0, "WifiOffloadSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sparse-switch p1, :sswitch_data_0

    .line 146
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 142
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 144
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setupTimer()V

    goto :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onPause()V

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->exit:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->setupTimer()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->finish()V

    .line 106
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onResume()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadSettings;->exit:Z

    .line 97
    return-void
.end method

.method public updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 109
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 110
    const-string v0, "WifiOffloadSettings"

    const-string v1, "already connected to wifi finish wifi offload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadSettings;->finish()V

    .line 114
    :cond_0
    return-void
.end method

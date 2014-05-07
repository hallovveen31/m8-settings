.class public Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "WifiOffloadAutoOnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$OptionListAdapter;
    }
.end annotation


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

.field private static final TAG:Ljava/lang/String; = "WifiOffloadAutoOnSettings"


# instance fields
.field private exit:Z

.field private mDialogShowing:Z

.field private mOptionList:Landroid/widget/ListView;

.field private mOptionListAdapter:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$OptionListAdapter;

.field private mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

.field private turnOffWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->exit:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->turnOffWifi:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mDialogShowing:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->setupTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)Lcom/android/settings/wifi/WifiOffloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->turnOffWifi:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->showAdvanceNotifydialog()V

    return-void
.end method

.method private setInstruction()V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    .line 147
    .local v0, fragment:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;
    const v1, 0x7f0c0898

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->setInstructionText(I)V

    .line 148
    return-void
.end method

.method private setupTimer()V
    .locals 4

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 310
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    .line 313
    :cond_0
    return-void
.end method

.method private showAdvanceNotifydialog()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00b2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c08a7

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a5

    new-instance v2, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$4;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 271
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 94
    const-string v0, "WifiOffloadAutoOnSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->setContentView(I)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->setInstruction()V

    .line 102
    invoke-static {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v6

    .line 105
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 106
    const-string v0, "WifiOffloadAutoOnSettings"

    const-string v1, "enable wifi!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v5, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c089b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c089d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$OptionListAdapter;

    const v3, 0x7f040089

    const v4, 0x7f0900fc

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$OptionListAdapter;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mOptionListAdapter:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$OptionListAdapter;

    .line 113
    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mOptionList:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mOptionList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mOptionListAdapter:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$OptionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mOptionList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mOptionList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 274
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 276
    sparse-switch p2, :sswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 281
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 276
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
    .line 292
    const-string v0, "WifiOffloadAutoOnSettings"

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

    .line 294
    sparse-switch p1, :sswitch_data_0

    .line 303
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 299
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 301
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->setupTimer()V

    goto :goto_0

    .line 294
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
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 190
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->exit:Z

    if-eqz v1, :cond_1

    .line 191
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->turnOffWifi:Z

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 193
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 194
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->setupTimer()V

    .line 196
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->finish()V

    .line 198
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    .line 183
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->exit:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->turnOffWifi:Z

    .line 185
    return-void
.end method

.method public updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 235
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mDialogShowing:Z

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mDialogShowing:Z

    .line 237
    const-string v0, "WifiOffloadAutoOnSettings"

    const-string v1, "already connected to wifi in wifi offload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00b2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c08a5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a5

    new-instance v2, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$3;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c08a6

    new-instance v2, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$2;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 258
    :cond_0
    return-void
.end method

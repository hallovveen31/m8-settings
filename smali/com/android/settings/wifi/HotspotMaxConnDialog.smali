.class public final Lcom/android/settings/wifi/HotspotMaxConnDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "HotspotMaxConnDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HotspotMaxConnDialog"


# instance fields
.field private DEBUG:Z

.field private mAssocListFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private max_connection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 25
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->DEBUG:Z

    .line 76
    new-instance v0, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/HotspotMaxConnDialog$1;-><init>(Lcom/android/settings/wifi/HotspotMaxConnDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/HotspotMaxConnDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/HotspotMaxConnDialog;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->parseClientCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/HotspotMaxConnDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/HotspotMaxConnDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->max_connection:I

    return v0
.end method

.method private createDialog()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 57
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0711

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 58
    const v1, 0x7f0c0b2e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 59
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->setupAlert()V

    .line 62
    return-void
.end method

.method private parseClientCount(Ljava/lang/String;)I
    .locals 7
    .parameter "mac"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 100
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, clientNumber:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HotspotMaxConnDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseClientCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, count:I
    goto :goto_0

    .line 105
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/lang/NumberFormatException;
    iget-boolean v4, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HotspotMaxConnDialog"

    const-string v5, "parseClientCount, parse integer fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v2, "HotspotMaxConnDialog"

    const-string v3, "onCreate!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0f0088

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 37
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 38
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 39
    const-string v2, "HotspotMaxConnDialog"

    const-string v3, "error, mWifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->finish()V

    .line 53
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 44
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 45
    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    .line 47
    .local v1, profile:Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getMaxConns()I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->max_connection:I

    .line 48
    iget-boolean v2, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "HotspotMaxConnDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max_connection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->max_connection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v1           #profile:Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mAssocListFilter:Landroid/content/IntentFilter;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->createDialog()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/HotspotMaxConnDialog;->mAssocListFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/HotspotMaxConnDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.class public Lcom/android/settings/wifi/ConnectingDialog;
.super Lcom/htc/app/HtcProgressDialog;
.source "ConnectingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    }
.end annotation


# static fields
.field private static final CHECK_CONNECTING_INTERVAL:I = 0x190

.field public static final CONNECTED:I = 0x0

.field public static final CONNECTED_AUTH_FAIL:I = 0x4

.field public static final CONNECTED_FAIL:I = 0x3

.field public static final CONNECTED_SUCCESS:I = 0x2

.field public static final CONNECTED_TIMEOUT:I = 0x5

.field private static final CONNECTIING_TIMEOUT:I = 0x7530

.field public static final DISCONNECTED:I = 0x1

.field private static final MSG_ID_CHECK_MOBILE_CONNECTING:I = 0x194

.field private static final MSG_ID_CONNECTING_TIMEOUT:I = 0x192

.field private static final MSG_ID_FINISH:I = 0x191

.field private static final MSG_ID_WAIT_MOBILE_CONNECTING_TIMEOUT:I = 0x193

.field private static final TAG:Ljava/lang/String; = "OOBE_ConnectingDialog"

.field private static final WAIT_MOBILE_CONNECTING_TIMEOUT:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstStickyIntent:Landroid/content/Intent;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/ConnectingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ConnectingDialog$1;-><init>(Lcom/android/settings/wifi/ConnectingDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->isConnectingMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/ConnectingDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/ConnectingDialog;->registerNetworkStateReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/ConnectingDialog;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->hasWifiAPToConnect(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/ConnectingDialog;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConnectingDialog;->updateDialogMessage(Landroid/content/Context;)V

    return-void
.end method

.method private static getWifiAccessPointName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "0x"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v5, "OOBE_ConnectingDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info_SSID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "0x"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/ConnectingDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method private static hasWifiAPToConnect(Landroid/content/Context;)Z
    .locals 13

    const/4 v9, 0x0

    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_2

    :cond_0
    const-string v10, "OOBE_ConnectingDialog"

    const-string v11, "no config ap!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v9

    :cond_2
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_4

    :cond_3
    const-string v10, "OOBE_ConnectingDialog"

    const-string v11, "no scan ap!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v10, "OOBE_ConnectingDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "config.size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "OOBE_ConnectingDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "result size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v10, :cond_7

    const-string v1, ""

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v10, :cond_8

    const-string v7, ""

    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings/wifi/ConnectingDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    iget-object v10, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings/wifi/ConnectingDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private static isConnectingMobileNetwork(Landroid/content/Context;)Z
    .locals 5

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    const-string v2, "OOBE_ConnectingDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MOBILE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isInService()Z
    .locals 5

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/telephony/HtcTelephonyManager;->getServiceState()I

    move-result v0

    const-string v2, "OOBE_ConnectingDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isMobileNetworkEnabled(Landroid/content/Context;)Z
    .locals 7

    const/4 v2, 0x0

    const-string v4, "OOBE_ConnectingDialog"

    const-string v5, "isMobileNetworkEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v4, "OOBE_ConnectingDialog"

    const-string v5, "context null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    new-instance v3, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v3, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    const-string v4, "OOBE_ConnectingDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMobileNetworkEnabled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "OOBE_ConnectingDialog"

    const-string v5, "Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 6

    const-string v3, "OOBE_ConnectingDialog"

    const-string v4, "isNetworkConnected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const-string v3, "OOBE_ConnectingDialog"

    const-string v4, "context null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const-string v3, "OOBE_ConnectingDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isWifiNetworkEnabled(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const-string v3, "OOBE_ConnectingDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private registerNetworkStateReceiver()V
    .locals 3

    const-string v1, "OOBE_ConnectingDialog"

    const-string v2, "registerNetworkStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/ConnectingDialog;->unregisterNetworkStateReceiver()V

    :cond_0
    new-instance v1, Lcom/android/settings/wifi/ConnectingDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/ConnectingDialog$2;-><init>(Lcom/android/settings/wifi/ConnectingDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->isWifiNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;

    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;)Lcom/android/settings/wifi/ConnectingDialog;
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "OOBE_ConnectingDialog"

    const-string v9, "show"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OOBE_ConnectingDialog"

    const-string v9, "network already connected"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {p1, v6}, Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->hasWifiAPToConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/settings/wifi/ConnectingDialog;->isInService()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    new-instance v1, Lcom/android/settings/wifi/ConnectingDialog;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/ConnectingDialog;-><init>(Landroid/content/Context;)V

    const-string v8, ""

    invoke-virtual {v1, v8}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->getWifiAccessPointName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0c0665

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    move-object v0, v1

    iput-object p1, v0, Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    if-eqz v2, :cond_5

    invoke-direct {v0}, Lcom/android/settings/wifi/ConnectingDialog;->registerNetworkStateReceiver()V

    iget-object v8, v0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x192

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const v8, 0x7f0c0507

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v5, v9, v6

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const v8, 0x7f0c0508

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v8, v0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x193

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v8, v0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x194

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string v8, "OOBE_ConnectingDialog"

    const-string v9, "no availiable network"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto/16 :goto_1
.end method

.method private unregisterNetworkStateReceiver()V
    .locals 4

    const-string v1, "OOBE_ConnectingDialog"

    const-string v2, "unregisterNetworkStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OOBE_ConnectingDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while unregisterReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateDialogMessage(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/android/settings/wifi/ConnectingDialog;->getWifiAccessPointName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0665

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0c0507

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onStop()V
    .locals 2

    const-string v0, "OOBE_ConnectingDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/htc/app/HtcProgressDialog;->onStop()V

    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/ConnectingDialog;->unregisterNetworkStateReceiver()V

    return-void
.end method

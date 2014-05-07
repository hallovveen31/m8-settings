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
    .parameter "context"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Lcom/android/settings/wifi/ConnectingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ConnectingDialog$1;-><init>(Lcom/android/settings/wifi/ConnectingDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->isConnectingMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/ConnectingDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/wifi/ConnectingDialog;->registerNetworkStateReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/ConnectingDialog;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->hasWifiAPToConnect(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/ConnectingDialog;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConnectingDialog;->updateDialogMessage(Landroid/content/Context;)V

    return-void
.end method

.method private static getWifiAccessPointName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 236
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 237
    .local v4, wifiMgr:Landroid/net/wifi/WifiManager;
    const/4 v3, 0x0

    .line 238
    .local v3, ssid:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 239
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 240
    const-string v0, "0x"

    .line 241
    .local v0, falseSSID:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, info_SSID:Ljava/lang/String;
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

    .line 243
    const-string v5, "0x"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/ConnectingDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .end local v0           #falseSSID:Ljava/lang/String;
    .end local v2           #info_SSID:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private static hasWifiAPToConnect(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 193
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 194
    .local v8, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 195
    .local v4, listConfig:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_2

    .line 196
    :cond_0
    const-string v10, "OOBE_ConnectingDialog"

    const-string v11, "no config ap!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    :goto_0
    return v9

    .line 200
    :cond_2
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 201
    .local v5, listResult:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_4

    .line 202
    :cond_3
    const-string v10, "OOBE_ConnectingDialog"

    const-string v11, "no scan ap!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
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

    .line 207
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

    .line 208
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 209
    .local v0, conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v10, :cond_7

    const-string v1, ""

    .line 211
    .local v1, conf_SSID:Ljava/lang/String;
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 212
    .local v6, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v10, :cond_8

    const-string v7, ""

    .line 214
    .local v7, result_SSID:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 215
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 209
    .end local v1           #conf_SSID:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #result:Landroid/net/wifi/ScanResult;
    .end local v7           #result_SSID:Ljava/lang/String;
    :cond_7
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings/wifi/ConnectingDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 212
    .restart local v1       #conf_SSID:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #result:Landroid/net/wifi/ScanResult;
    :cond_8
    iget-object v10, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings/wifi/ConnectingDialog;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private static isConnectingMobileNetwork(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 186
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 187
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 188
    .local v1, isConnectingMobile:Z
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

    .line 189
    return v1
.end method

.method private static isInService()Z
    .locals 5

    .prologue
    .line 303
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/telephony/HtcTelephonyManager;

    move-result-object v1

    .line 304
    .local v1, telephony:Lcom/htc/telephony/HtcTelephonyManager;
    invoke-virtual {v1}, Lcom/htc/telephony/HtcTelephonyManager;->getServiceState()I

    move-result v0

    .line 305
    .local v0, serviceState:I
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

    .line 306
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
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 261
    const-string v4, "OOBE_ConnectingDialog"

    const-string v5, "isMobileNetworkEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez p0, :cond_0

    .line 264
    const-string v4, "OOBE_ConnectingDialog"

    const-string v5, "context null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return v2

    .line 268
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 271
    .local v0, cm:Landroid/net/ConnectivityManager;
    :try_start_0
    new-instance v3, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v3, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .local v3, mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    invoke-virtual {v3}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 278
    .local v2, enabled:Z
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

    .line 272
    .end local v2           #enabled:Z
    .end local v3           #mWrapConnectivityMgr:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "OOBE_ConnectingDialog"

    const-string v5, "Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 284
    const-string v3, "OOBE_ConnectingDialog"

    const-string v4, "isNetworkConnected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez p0, :cond_1

    .line 287
    const-string v3, "OOBE_ConnectingDialog"

    const-string v4, "context null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v2, 0x0

    .line 298
    :cond_0
    :goto_0
    return v2

    .line 291
    :cond_1
    const/4 v2, 0x0

    .line 292
    .local v2, isConnected:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 293
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 294
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 296
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
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 251
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 252
    .local v1, wm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 254
    .local v0, state:I
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

    .line 255
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 257
    .end local v0           #state:I
    :cond_1
    return v2
.end method

.method private registerNetworkStateReceiver()V
    .locals 3

    .prologue
    .line 311
    const-string v1, "OOBE_ConnectingDialog"

    const-string v2, "registerNetworkStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/settings/wifi/ConnectingDialog;->unregisterNetworkStateReceiver()V

    .line 317
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/ConnectingDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/ConnectingDialog$2;-><init>(Lcom/android/settings/wifi/ConnectingDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->isWifiNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;

    .line 365
    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 223
    if-nez p0, :cond_1

    .line 224
    const-string p0, ""

    .line 232
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 227
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 228
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 230
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;)Lcom/android/settings/wifi/ConnectingDialog;
    .locals 12
    .parameter "context"
    .parameter "dismissListener"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    const-string v8, "OOBE_ConnectingDialog"

    const-string v9, "show"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, dialog:Lcom/android/settings/wifi/ConnectingDialog;
    const/4 v3, 0x0

    .line 134
    .local v3, isConnected:Z
    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    const-string v8, "OOBE_ConnectingDialog"

    const-string v9, "network already connected"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v3, 0x1

    .line 179
    :goto_0
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 180
    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {p1, v6}, Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;->onDismiss(I)V

    .line 182
    :cond_0
    return-object v1

    .line 139
    :cond_1
    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->hasWifiAPToConnect(Landroid/content/Context;)Z

    move-result v2

    .line 140
    .local v2, hasWifiAP:Z
    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/settings/wifi/ConnectingDialog;->isInService()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 141
    :cond_2
    new-instance v1, Lcom/android/settings/wifi/ConnectingDialog;

    .end local v1           #dialog:Lcom/android/settings/wifi/ConnectingDialog;
    invoke-direct {v1, p0}, Lcom/android/settings/wifi/ConnectingDialog;-><init>(Landroid/content/Context;)V

    .line 142
    .restart local v1       #dialog:Lcom/android/settings/wifi/ConnectingDialog;
    const-string v8, ""

    invoke-virtual {v1, v8}, Lcom/android/settings/wifi/ConnectingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, message:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 146
    invoke-static {p0}, Lcom/android/settings/wifi/ConnectingDialog;->getWifiAccessPointName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, wifiAP:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 148
    const v8, 0x7f0c0665

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    .end local v5           #wifiAP:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/ConnectingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/ConnectingDialog;->setIndeterminate(Z)V

    .line 160
    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/ConnectingDialog;->setCancelable(Z)V

    .line 161
    invoke-virtual {v1}, Lcom/android/settings/wifi/ConnectingDialog;->show()V

    .line 163
    move-object v0, v1

    .line 164
    .local v0, connectionDialog:Lcom/android/settings/wifi/ConnectingDialog;
    iput-object p1, v0, Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    .line 166
    if-eqz v2, :cond_5

    .line 167
    invoke-direct {v0}, Lcom/android/settings/wifi/ConnectingDialog;->registerNetworkStateReceiver()V

    .line 168
    iget-object v8, v0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x192

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 151
    .end local v0           #connectionDialog:Lcom/android/settings/wifi/ConnectingDialog;
    .restart local v5       #wifiAP:Ljava/lang/String;
    :cond_3
    const v8, 0x7f0c0507

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v5, v9, v6

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 155
    .end local v5           #wifiAP:Ljava/lang/String;
    :cond_4
    const v8, 0x7f0c0508

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 170
    .restart local v0       #connectionDialog:Lcom/android/settings/wifi/ConnectingDialog;
    :cond_5
    iget-object v8, v0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x193

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    iget-object v8, v0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x194

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 175
    .end local v0           #connectionDialog:Lcom/android/settings/wifi/ConnectingDialog;
    .end local v4           #message:Ljava/lang/String;
    :cond_6
    const-string v8, "OOBE_ConnectingDialog"

    const-string v9, "no availiable network"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #hasWifiAP:Z
    :cond_7
    move v6, v7

    .line 180
    goto/16 :goto_1
.end method

.method private unregisterNetworkStateReceiver()V
    .locals 4

    .prologue
    .line 369
    const-string v1, "OOBE_ConnectingDialog"

    const-string v2, "unregisterNetworkStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_ConnectingDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while unregisterReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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
    .parameter "context"

    .prologue
    .line 383
    invoke-static {p1}, Lcom/android/settings/wifi/ConnectingDialog;->getWifiAccessPointName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, wifiAP:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const v1, 0x7f0c0665

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ConnectingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    const v1, 0x7f0c0507

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ConnectingDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "OOBE_ConnectingDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0}, Lcom/htc/app/HtcProgressDialog;->onStop()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/wifi/ConnectingDialog;->unregisterNetworkStateReceiver()V

    .line 121
    return-void
.end method

.class public Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcVoWifiWidgetEnabler.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final HTC_BASE_URI:Landroid/net/Uri; = null

.field private static final OUT_INTENT_SEND_NOTIFICAITON:Ljava/lang/String; = "com.htc.intent.SEND_NOTIFICATION"

.field private static final PROVIDER_CATEGORY_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEnableAutoTestLog:Z

.field private mIsWifiDisable:Z

.field private mNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mSsid:Ljava/lang/String;

.field private mWFCDBObserver:Landroid/database/ContentObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.htc.vowifi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->HTC_BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mEnableAutoTestLog:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    iput-boolean v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mIsWifiDisable:Z

    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;-><init>(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWFCDBObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->getWFCState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private ensureWifiManagerObjects()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcServiceManager;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setOnDialogCreatedListener(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;)V

    :cond_0
    return-void
.end method

.method private getWFCState()I
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.htc.vowifi/status/WFC_STATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v8, -0x1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFC state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6

    sget-boolean v3, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStateChanged, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    :goto_0
    sget-object v3, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get debug: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, p1, v5}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v3, :cond_4

    const v3, 0x7f0c08a2

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetSummary(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const v3, 0x7f0c106e

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetSummary(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private isBlocked()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "persist.security.wifi.lockout"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVoWifi(Landroid/content/Context;)Z
    .locals 14

    const/4 v12, 0x0

    new-instance v10, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v10}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    const-string v0, "System"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v6, 0x0

    if-eqz v11, :cond_0

    const-string v0, "sku_id"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v13

    :cond_0
    const/16 v0, 0xa

    if-ne v13, v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "SPCS sku"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->HTC_BASE_URI:Landroid/net/Uri;

    const-string v2, "status/CARRIER_ID"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportVoWifi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "query carrier id failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "close fail: "

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
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

.method private setWFCEnabled(Z)V
    .locals 5

    sget-boolean v2, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWFCEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "enableVoWiFi"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.REQUEST_VOWIFI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.vowifi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setSwitchEnabled(Z)V

    return-void

    :cond_1
    const-string v0, "disableVoWiFi"

    goto :goto_0
.end method

.method private setWifiEnabled(Z)V
    .locals 5

    const v4, 0x7f0c0d31

    sget-boolean v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.showme.LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "callingApp"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-connections_internet-wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetSummary(I)V

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateWFCState()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->getWFCState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(I)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDialogCreated(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialogCreated, showDialog"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onGetDefaultState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->getBaseState(I)Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    return-void
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0

    check-cast p1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0c106f

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleStateChangedInBackground, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsWifiDisable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mIsWifiDisable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mIsWifiDisable:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    if-eq p1, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$2;->$SwitchMap$com$android$settings$framework$core$wireless$vowifi$HtcVoWifiState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const v1, 0x7f0c0d31

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onHandleStateChangedInBackground register observer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    :cond_3
    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->updateWFCState()V

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0c0512

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v7, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_4
    const v1, 0x7f0c106e

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_5
    const v1, 0x7f0c0513

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v7, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onPauseInBackground(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWFCDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 4

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResumeInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onResumeInBackground(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->ensureWifiManagerObjects()V

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResumeInBackground register observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    const-string v1, "content://com.htc.vowifi/status/WFC_STATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWFCDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    return-void
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onToggleChangeInBackground, newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChangeInBackground(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0d32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWFCEnabled(Z)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    return-void
.end method

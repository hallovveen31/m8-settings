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

    .prologue
    .line 57
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

    .line 60
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    .line 400
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
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mEnableAutoTestLog:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mIsWifiDisable:Z

    .line 74
    new-instance v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$1;-><init>(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWFCDBObserver:Landroid/database/ContentObserver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->getWFCState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private ensureWifiManagerObjects()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcServiceManager;->getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 129
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setOnDialogCreatedListener(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;)V

    .line 131
    :cond_0
    return-void
.end method

.method private getWFCState()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

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

    .line 384
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 385
    .local v8, state:I
    if-eqz v6, :cond_1

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 388
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, mString:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 390
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 393
    .end local v7           #mString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 395
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

    .line 396
    return v8
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 263
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

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 267
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 268
    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 269
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, ssid:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    .line 277
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

    .line 279
    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, p1, v5}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 281
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v3, :cond_4

    .line 282
    const v3, 0x7f0c08a2

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetSummary(I)V

    .line 291
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #str:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 275
    .restart local v0       #info:Landroid/net/wifi/WifiInfo;
    .restart local v1       #ssid:Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mSsid:Ljava/lang/String;

    goto :goto_0

    .line 284
    .restart local v2       #str:Ljava/lang/String;
    :cond_4
    const v3, 0x7f0c106e

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetSummary(I)V

    goto :goto_1

    .line 287
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private isBlocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 368
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
    .parameter "context"

    .prologue
    .line 407
    const/4 v12, 0x0

    .line 408
    .local v12, result:Z
    new-instance v10, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v10}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    .line 409
    .local v10, manager:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;
    const-string v0, "System"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v11

    .line 410
    .local v11, reader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    const/4 v13, 0x0

    .line 411
    .local v13, skuid:I
    const/4 v6, 0x0

    .line 412
    .local v6, Carrier:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 413
    const-string v0, "sku_id"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v13

    .line 415
    :cond_0
    const/16 v0, 0xa

    if-ne v13, v0, :cond_2

    .line 416
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "SPCS sku"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v7, 0x0

    .line 419
    .local v7, c:Landroid/database/Cursor;
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

    .line 427
    :goto_0
    if-eqz v7, :cond_2

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 429
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 430
    const-string v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 432
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    .end local v7           #c:Landroid/database/Cursor;
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

    .line 440
    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 422
    .restart local v7       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 423
    .local v9, exQuery:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "query carrier id failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    .end local v9           #exQuery:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 434
    .local v8, exClose:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "close fail: "

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #exClose:Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 372
    if-nez p0, :cond_1

    const-string p0, ""

    .line 379
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 374
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 375
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

    .line 377
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private setWFCEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 344
    sget-boolean v2, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 345
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

    .line 348
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "enableVoWiFi"

    .line 349
    .local v0, command:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.REQUEST_VOWIFI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.vowifi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 361
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setSwitchEnabled(Z)V

    .line 364
    return-void

    .line 348
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-string v0, "disableVoWiFi"

    goto :goto_0
.end method

.method private setWifiEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const v4, 0x7f0c0d31

    .line 307
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 308
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

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    if-eqz p1, :cond_1

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.showme.LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callingApp"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-connections_internet-wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetSummary(I)V

    .line 332
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateWFCState()V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->getWFCState()I

    move-result v0

    .line 297
    .local v0, State:I
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(I)V

    .line 298
    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCheckedChanged(Lcom/android/settings/framework/widget/HtcToggleButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 192
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 193
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

    .line 195
    :cond_0
    return-void
.end method

.method public onDialogCreated(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "alertDialog"

    .prologue
    .line 250
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "onDialogCreated, showDialog"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 254
    return-void
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onGetDefaultState()Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    move-result-object v0

    return-object v0
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;
    .locals 2

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onGetDefaultState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 197
    invoke-static {p1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->getBaseState(I)Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    .line 199
    return-void
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c106f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
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

    .line 206
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mIsWifiDisable:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    if-eq p1, v1, :cond_1

    .line 245
    :goto_0
    return-void

    .line 210
    :cond_1
    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler$2;->$SwitchMap$com$android$settings$framework$core$wireless$vowifi$HtcVoWifiState:[I

    invoke-virtual {p1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 242
    const v1, 0x7f0c0d31

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 213
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    if-nez v1, :cond_3

    .line 214
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "onHandleStateChangedInBackground register observer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    .line 218
    :cond_3
    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_FAKE_OFF:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    .line 219
    sget-object v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->updateWFCState()V

    goto :goto_0

    .line 228
    :pswitch_3
    const v1, 0x7f0c0512

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v7, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 231
    :pswitch_4
    const v1, 0x7f0c106e

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 234
    :pswitch_5
    const v1, 0x7f0c0513

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v7, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 237
    :pswitch_6
    const/4 v0, 0x0

    .line 238
    .local v0, enable:Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 210
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
    .parameter "activity"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onPauseInBackground(Landroid/app/Activity;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWFCDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 2

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    .line 173
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 116
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

    .line 119
    :cond_0
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResumeInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onResumeInBackground(Landroid/app/Activity;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->ensureWifiManagerObjects()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    if-nez v0, :cond_2

    .line 141
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResumeInBackground register observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->cr:Landroid/content/ContentResolver;

    const-string v1, "content://com.htc.vowifi/status/WFC_STATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mWFCDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    sget-object v0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiState;)V

    .line 146
    return-void
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 177
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

    .line 178
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onToggleChangeInBackground(Z)V

    .line 181
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0d32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/vowifi/HtcVoWifiWidgetEnabler;->setWFCEnabled(Z)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "outIntentFilter"

    .prologue
    .line 105
    return-void
.end method

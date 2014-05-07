.class public Lcom/android/settings/wifi/WifiOffloadManager;
.super Ljava/lang/Object;
.source "WifiOffloadManager.java"


# static fields
.field private static final AUTO_CONNECT_TO_WIFI:Ljava/lang/String; = "AUTO_CONNECT_TO_WIFI"

.field private static INSTANCE:Lcom/android/settings/wifi/WifiOffloadManager; = null

.field private static final NEVER_AUTO_TURN_ON:Ljava/lang/String; = "NEVER_AUTO_TURN_ON"

.field private static final NOTIFY_ON:Ljava/lang/String; = "NOTIFY_ON"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "WIFIOFFLOAD"

.field private static final TAG:Ljava/lang/String; = "WifiOffloadManager"

.field private static final WIFI_OFFLOAD_PAUSE_EXPIRATION_MS:I = 0x2932e00

.field private static final WIFI_OFFLOAD_PAUSE_TIME:Ljava/lang/String; = "WIFI_OFFLOAD_PAUSE_TIME"

.field public static final isWifiOffloadSupported:Z

.field public static mDontReset:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOffloadSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;
    .locals 2

    const-class v1, Lcom/android/settings/wifi/WifiOffloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/WifiOffloadManager;->INSTANCE:Lcom/android/settings/wifi/WifiOffloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiOffloadManager;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiOffloadManager;->INSTANCE:Lcom/android/settings/wifi/WifiOffloadManager;

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiOffloadManager;->INSTANCE:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiOffloadManager;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiOffloadManager;->INSTANCE:Lcom/android/settings/wifi/WifiOffloadManager;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mInitialized:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mInitialized:Z

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mContext:Landroid/content/Context;

    const-string v1, "WIFIOFFLOAD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isAutoConnectToWifi()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AUTO_CONNECT_TO_WIFI"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNeverAutoTurnOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NEVER_AUTO_TURN_ON"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotifyOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NOTIFY_ON"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public persistAutoConnectToWifi(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AUTO_CONNECT_TO_WIFI"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public persistNeverAutoTurnOn(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEVER_AUTO_TURN_ON"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public persistNotifyOn(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NOTIFY_ON"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public persistWifiOffloadPauseTime(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WIFI_OFFLOAD_PAUSE_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldWifiOffloadEnabled()Z
    .locals 14

    const-string v10, "ro.bootmode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v10, "factory2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiOffloadManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", disable offload"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const-string v10, "1"

    const-string v11, "debug.wifioffload"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiOffloadManager"

    const-string v11, "wifioffload disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v10, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-nez v10, :cond_2

    const-string v10, "WifiOffloadManager"

    const-string v11, "only VZW projects support wifi offload"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->isNotifyOn()Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "WifiOffloadManager"

    const-string v11, "user has set not notify in Wifi Settings"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    if-nez v9, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->isNeverAutoTurnOn()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "WifiOffloadManager"

    const-string v11, "user check never auto turn on"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v10, "WIFI_OFFLOAD_PAUSE_TIME"

    const-wide/16 v11, 0x0

    invoke-interface {v7, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-eqz v10, :cond_6

    sub-long v10, v2, v5

    const-wide/32 v12, 0x2932e00

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    const-string v10, "WifiOffloadManager"

    const-string v11, "pause wifi offload within time slot"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_6
    iget-object v10, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v10, 0xc

    if-eq v8, v10, :cond_7

    const/16 v10, 0xd

    if-ne v8, v10, :cond_8

    :cond_7
    const-string v10, "WifiOffloadManager"

    const-string v11, "wifi router is on"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/android/settings/wifi/WifiOffloadManager;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/16 v11, 0x37

    if-eq v10, v11, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    :cond_9
    const-string v10, "WifiOffloadManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net is connected type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.class public Lcom/android/settings/wifi/WifiOffloadRequest;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiOffloadRequest$1;,
        Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;
    }
.end annotation


# static fields
.field static final AUTO_TURNING_ENABLING_WIFI:I = 0x1

.field static final AUTO_TURNING_INIT:I = 0x0

.field static final AUTO_TURNING_SHOW_DIALOG:I = 0x3

.field static final AUTO_TURNING_WAITTING_CONNECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiOffloadRequest"

.field static final WIFI_TURN_ON_TIMER:J = 0x7530L

.field private static mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

.field static mTurningOnState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;
    .locals 3

    .prologue
    .line 244
    const-class v1, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    monitor-enter v1

    .line 245
    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;-><init>(Lcom/android/settings/wifi/WifiOffloadRequest$1;)V

    sput-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    .line 248
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    monitor-exit v1

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setupTimer()V
    .locals 4

    .prologue
    .line 229
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v1

    .line 230
    .local v1, wifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    if-nez v1, :cond_1

    .line 231
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiOffloadRequest"

    const-string v3, "wifiOffloadManager == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    .line 237
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 238
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, action:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v15

    .line 46
    .local v15, wifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    const-string v17, "com.htc.wifioffload.intent.INTERNETAPP_RESUMED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 47
    const-string v17, "WifiOffloadRequest"

    const-string v18, "receive INTERNETAPP_RESUMED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiOffloadManager;->shouldWifiOffloadEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 51
    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v13

    .line 52
    .local v13, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v16

    .line 53
    .local v16, wifiState:I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 225
    .end local v13           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v16           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v13       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v16       #wifiState:I
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    if-eqz v16, :cond_0

    .line 69
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 70
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 71
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_3

    .line 72
    :cond_2
    const-string v17, "WifiOffloadRequest"

    const-string v18, "Do not launch wifi offload since no AP around"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v14, wifiOffload:Landroid/content/Intent;
    const-class v17, Lcom/android/settings/wifi/WifiOffloadSettings;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    .end local v13           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v14           #wifiOffload:Landroid/content/Intent;
    .end local v16           #wifiState:I
    :cond_4
    const-string v17, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 98
    const-string v17, "wifi_state"

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 99
    .restart local v16       #wifiState:I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 100
    sget-boolean v17, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    if-eqz v17, :cond_5

    .line 103
    const-string v17, "WifiOffloadRequest"

    const-string v18, "get mDontReset: true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    goto :goto_0

    .line 106
    :cond_5
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    goto :goto_0

    .line 108
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 110
    :cond_7
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_8

    const-string v17, "WifiOffloadRequest"

    const-string v18, "mTurningOnState = AUTO_TURNING_INIT"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_8
    const/16 v17, 0x0

    sput v17, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    .line 112
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 115
    .end local v16           #wifiState:I
    :cond_9
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "com.htc.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 117
    :cond_a
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    goto/16 :goto_0

    .line 118
    :cond_b
    const-string v17, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 119
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_c

    .line 120
    const-string v17, "WifiOffloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SCAN_RESULTS_AVAILABLE_ACTION, mTurningOnState = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_c
    sget v17, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v13

    .line 125
    .restart local v13       #wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v16

    .line 126
    .restart local v16       #wifiState:I
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_d

    .line 127
    const-string v17, "WifiOffloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SCAN_RESULTS_AVAILABLE_ACTION, wifiState = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_d
    packed-switch v16, :pswitch_data_0

    goto/16 :goto_0

    .line 132
    :pswitch_0
    const/4 v12, 0x1

    .line 134
    .local v12, turnOffWifi:Z
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 135
    .local v5, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_e

    .line 136
    const-string v17, "WifiOffloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[configs] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_e
    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_13

    .line 140
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    .line 141
    .local v11, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v11, :cond_13

    .line 142
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 144
    .local v10, result:Landroid/net/wifi/ScanResult;
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_f

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[IBSS]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 148
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_10

    .line 149
    const-string v17, "WifiOffloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[result] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_10
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 154
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-static {v10}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v17

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 157
    const/4 v12, 0x0

    .line 158
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_12

    .line 159
    const-string v17, "WifiOffloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "found a AP"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    if-nez v12, :cond_f

    .line 170
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #result:Landroid/net/wifi/ScanResult;
    .end local v11           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_13
    if-eqz v12, :cond_15

    .line 171
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_14

    .line 172
    const-string v17, "WifiOffloadRequest"

    const-string v18, "disable WiFi"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_14
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 175
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->setupTimer()V

    .line 176
    const/16 v17, 0x0

    sput v17, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    goto/16 :goto_0

    .line 179
    :cond_15
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v17

    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x7530

    invoke-virtual/range {v17 .. v20}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    const/16 v17, 0x2

    sput v17, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    goto/16 :goto_0

    .line 188
    .end local v5           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v12           #turnOffWifi:Z
    .end local v13           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v16           #wifiState:I
    :cond_16
    const-string v17, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 189
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_17

    .line 190
    const-string v17, "WifiOffloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NETWORK_STATE_CHANGED_ACTION, mTurningOnState = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_17
    sget v17, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    sget v17, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 195
    :cond_18
    const-string v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 197
    .local v8, info:Landroid/net/NetworkInfo;
    sget-boolean v17, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v17, :cond_19

    .line 198
    const-string v17, "WifiOffloadRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NETWORK_STATE_CHANGED_ACTION, info = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_19
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 201
    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiOffloadManager;->isAutoConnectToWifi()Z

    move-result v17

    if-nez v17, :cond_1a

    .line 221
    :goto_1
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 219
    :cond_1a
    const/16 v17, 0x0

    sput v17, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

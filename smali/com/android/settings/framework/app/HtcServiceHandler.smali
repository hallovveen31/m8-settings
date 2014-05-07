.class Lcom/android/settings/framework/app/HtcServiceHandler;
.super Landroid/os/Handler;
.source "HtcServiceHandler.java"


# static fields
.field private static final ACTION_BOOT_COMPLETED:I = 0xf

.field private static final ACTION_DEMOFLO_INSTALL_FINISH:I = 0x11

.field private static final ACTION_DEMOFLO_UNINSTALL_FINISH:I = 0x12

.field private static final ACTION_DISABLE_AGPS:I = 0x13

.field private static final ACTION_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:I = 0x10

.field private static final ACTION_FACTORY_DATA_RESET:I = 0xd

.field private static final ACTION_FORMAT_INTERNAL_AND_EXTERNAL_SD_CARD_VOLUME:I = 0xc

.field private static final ACTION_FORMAT_INTERNAL_SD_CARD_VOLUME:I = 0xb

.field private static final ACTION_FORMAT_SD_CARD_VOLUME:I = 0xa

.field private static final ACTION_MAX_INACTIVITY_TIME_CHANGED_INDEX:I = 0x5

.field private static final ACTION_MOUNT_SD_CARD_VOLUME:I = 0x8

.field private static final ACTION_MOUNT_USB_VOLUME:I = 0x9

.field private static final ACTION_SETTINGS_SET_BLUETOOTH_DISCOVERABLE_TIMEOUT_INDEX:I = 0x7

.field private static final ACTION_SET_GPS_ENABLED:I = 0x14

.field private static final REQUEST_BRIGHTNESS_INDEX:I = 0x3

.field private static final REQUEST_BRIGHTNESS_MAX_INDEX:I = 0x2

.field private static final REQUEST_BRIGHTNESS_NORMAL_INDEX:I = 0x4

.field private static final REQUEST_FACTORY_DATA_RESET:I = 0xe

.field private static final REQUEST_INVOCATION_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN:I

.field private static final mIntentMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcServiceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    .line 77
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.settings.action.INVOCATION"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS_MAX"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS_NORMAL"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.intent.action.MAX_INACTIVITY_TIME_CHANGED"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.intent.action.SETTINGS_SET_BLUETOOTH_DISCOVERABLE_TIMEOUT"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.MOUNT_SD_CARD_VOLUME"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.MOUNT_USB_VOLUME"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_SD_CARD_VOLUME"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_AND_EXTERNAL_SD_CARD_VOLUME"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FACTORY_DATA_RESET"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.FACTORY_DATA_RESET"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->ACTION_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.demoflo.install_finish"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.demoflo.uninstall_finish"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.settings.action.SET_AGPS_ENABLED"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.settings.action.SET_GPS_ENABLED"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 297
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method private final dispatchIntent(ILandroid/content/Intent;)V
    .locals 6
    .parameter "startId"
    .parameter "intent"

    .prologue
    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 211
    .local v2, rawIndex:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    .local v1, index:I
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 291
    :pswitch_0
    sget-object v3, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_1
    return-void

    .line 211
    .end local v1           #index:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 216
    .restart local v1       #index:I
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 219
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightnessMax(Landroid/content/Context;)V

    goto :goto_1

    .line 222
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightness(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 225
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightnessNormal(Landroid/content/Context;)V

    goto :goto_1

    .line 228
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcMailRequest;->onMaxInactiveTimeChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 232
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcBTRequest;->setDiscoverableTimeout(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 236
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->mountSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 239
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->mountUsbVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 243
    :pswitch_9
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 247
    :pswitch_a
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 251
    :pswitch_b
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalAndExternalSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 256
    :pswitch_c
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/os/HtcStorageManager;->doFactoryDataReset(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 260
    :pswitch_d
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->onBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 265
    :pswitch_e
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Handler;->handleEmergencyLockPolicy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 270
    :pswitch_f
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->handleInstallPolicy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 275
    :pswitch_10
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->handleUninstallPolicy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 280
    :pswitch_11
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/util/HtcLocationUtil$Handler;->handleEnableAgps(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 285
    :pswitch_12
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/util/HtcLocationUtil$Handler;->handleEnableGps(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 166
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 167
    .local v6, startId:I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 168
    .local v5, intent:Landroid/content/Intent;
    const-wide/16 v7, 0x0

    .local v7, startTime:J
    const-wide/16 v3, 0x0

    .line 171
    .local v3, endTime:J
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_0

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 173
    const-string v9, ">> handleMessage(...)"

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t startId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 175
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t startTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 180
    :cond_0
    if-eqz v5, :cond_1

    .line 182
    invoke-direct {p0, v6, v5}, Lcom/android/settings/framework/app/HtcServiceHandler;->dispatchIntent(ILandroid/content/Intent;)V

    .line 185
    :cond_1
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_3

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 187
    sub-long v1, v3, v7

    .line 188
    .local v1, elapsedTime:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t endTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t elapsedTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (ms)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 193
    const-wide/32 v9, 0xea60

    cmp-long v9, v1, v9

    if-lez v9, :cond_2

    .line 194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t startId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 196
    const-string v0, "The request has been executed more than 60 sec."

    .line 197
    .local v0, e:Ljava/lang/String;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 199
    .end local v0           #e:Ljava/lang/String;
    :cond_2
    const-string v9, "<< handleMessage(...)"

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    .line 201
    .end local v1           #elapsedTime:J
    :cond_3
    return-void
.end method

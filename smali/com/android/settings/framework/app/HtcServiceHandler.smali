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

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.settings.action.INVOCATION"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS_MAX"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS_NORMAL"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.intent.action.MAX_INACTIVITY_TIME_CHANGED"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.intent.action.SETTINGS_SET_BLUETOOTH_DISCOVERABLE_TIMEOUT"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.MOUNT_SD_CARD_VOLUME"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.MOUNT_USB_VOLUME"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_SD_CARD_VOLUME"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_AND_EXTERNAL_SD_CARD_VOLUME"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FACTORY_DATA_RESET"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.FACTORY_DATA_RESET"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;->ACTION_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.demoflo.install_finish"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.demoflo.uninstall_finish"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.settings.action.SET_AGPS_ENABLED"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.settings.action.SET_GPS_ENABLED"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final dispatchIntent(ILandroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

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

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightnessMax(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightness(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightnessNormal(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcMailRequest;->onMaxInactiveTimeChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcBTRequest;->setDiscoverableTimeout(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->mountSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->mountUsbVolume(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_9
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_a
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_b
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalAndExternalSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_c
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/os/HtcStorageManager;->doFactoryDataReset(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_d
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->onBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_e
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Handler;->handleEmergencyLockPolicy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_f
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->handleInstallPolicy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_10
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->handleUninstallPolicy(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_11
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/util/HtcLocationUtil$Handler;->handleEnableAgps(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_12
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/util/HtcLocationUtil$Handler;->handleEnableGps(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

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

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-string v9, ">> handleMessage(...)"

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

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

    :cond_0
    if-eqz v5, :cond_1

    invoke-direct {p0, v6, v5}, Lcom/android/settings/framework/app/HtcServiceHandler;->dispatchIntent(ILandroid/content/Intent;)V

    :cond_1
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v1, v3, v7

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

    const-wide/32 v9, 0xea60

    cmp-long v9, v1, v9

    if-lez v9, :cond_2

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

    const-string v0, "The request has been executed more than 60 sec."

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string v9, "<< handleMessage(...)"

    invoke-direct {p0, v9}, Lcom/android/settings/framework/app/HtcServiceHandler;->Log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

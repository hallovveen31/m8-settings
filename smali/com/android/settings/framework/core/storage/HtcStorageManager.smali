.class public final Lcom/android/settings/framework/core/storage/HtcStorageManager;
.super Ljava/lang/Object;
.source "HtcStorageManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sPhoneStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field private static sPhoneStorageVolumeIndex:I

.field private static sPrimaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field private static sSdCardStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field private static sSdCardStorageVolumeIndex:I

.field private static volatile sSystemSpace:Ljava/lang/Long;

.field private static sUsbStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field private static sUsbStorageVolumeIndex:I

.field private static ssMountService:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/os/storage/IMountService;",
            ">;"
        }
    .end annotation
.end field

.field private static ssRawStorageVolumes:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private static ssStorageManager:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/os/storage/StorageManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    sput v2, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolumeIndex:I

    sput v2, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolumeIndex:I

    sput v2, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolumeIndex:I

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->requireHtcStorageVolumes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireMountService()Landroid/os/storage/IMountService;
    .locals 5
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
        value = {
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.8 ms"
                device = "Evita-Sense45-ICS"
                round = 0x5L
                totalTime = "4 ms"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.136 ms"
                device = "EvitareUL-Sense45-JB"
                round = 0x2710L
                totalTime = "1360 ms"
            .end subannotation
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> acquireMountService(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_0
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "The mount service doesn\'t exist!"

    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - MountService instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< acquireMountService(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private static acquireRawStorageVolumes()[Landroid/os/storage/StorageVolume;
    .locals 9
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
        value = {
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "2.4 ms"
                device = "Evita-Sense45-ICS"
                round = 0x5L
                totalTime = "12 ms"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.2884 ms"
                device = "EvitareUL-Sense45-JB"
                round = 0x2710L
                totalTime = "2884 ms"
            .end subannotation
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v7, :cond_0

    new-instance v5, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">> acquireRawStorageVolumes(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_1
    if-nez v6, :cond_4

    const/4 v7, 0x0

    new-array v3, v7, [Landroid/os/storage/StorageVolume;

    :cond_2
    sget-boolean v7, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - raw volume["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v7, Lcom/android/settings/framework/core/storage/HtcStorageManager;->TAG:Ljava/lang/String;

    const-string v8, "Failed to get the storage volumes!"

    invoke-static {v7, v8, v1}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :cond_3
    :goto_1
    return-object v3

    :cond_4
    array-length v0, v6

    new-array v3, v0, [Landroid/os/storage/StorageVolume;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    aget-object v7, v6, v2

    check-cast v7, Landroid/os/storage/StorageVolume;

    aput-object v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<< acquireRawStorageVolumes(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static acquireStorageManager()Landroid/os/storage/StorageManager;
    .locals 5

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v2, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v2}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> acquireStorageManager(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "storage"

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    sget-boolean v3, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - StorageManager instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< acquireStorageManager(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static dumpConfigurations()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssMountService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssMountService:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssMountService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssRawStorageVolumes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssRawStorageVolumes:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssRawStorageVolumes:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sPhoneStorageVolumeIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolumeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sSdCardStorageVolumeIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolumeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sUsbStorageVolumeIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolumeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "null"

    goto/16 :goto_0

    :cond_1
    const-string v1, "null"

    goto :goto_1
.end method

.method public static getChipStorageVolume()Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;
    .locals 1

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;-><init>()V

    return-object v0
.end method

.method public static getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;-><init>()V

    return-object v0
.end method

.method public static getMountService()Landroid/os/storage/IMountService;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssMountService:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssMountService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/IMountService;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->acquireMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssMountService:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method public static getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrimaryStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPrimaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPrimaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolumeIndex:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPrimaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPrimaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolumeIndex:I

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPrimaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_1

    :cond_3
    sget v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolumeIndex:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getUsbStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPrimaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_1
.end method

.method public static getRawStorageVolumes()[Landroid/os/storage/StorageVolume;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssRawStorageVolumes:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssRawStorageVolumes:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->acquireRawStorageVolumes()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssRawStorageVolumes:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method public static getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStorageManager()Landroid/os/storage/StorageManager;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssStorageManager:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssStorageManager:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->acquireStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->ssStorageManager:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method public static getSystemSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)J
    .locals 19

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getChipStorageVolume()Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v14

    iget-wide v1, v14, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v14

    iget-wide v5, v14, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    const-wide/16 v9, 0x0

    if-nez v11, :cond_1

    sub-long v12, v1, v5

    :goto_0
    sget-boolean v14, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v14, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SystemSpace: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v4, v12, v13}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " - chipTotal: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v4, v1, v2}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " - dataTotal: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - phoneVolume: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "    - phoneTotal: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-wide/16 v17, 0x0

    cmp-long v14, v9, v17

    if-eqz v14, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v14, Ljava/lang/Long;

    invoke-direct {v14, v12, v13}, Ljava/lang/Long;-><init>(J)V

    sput-object v14, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSystemSpace:Ljava/lang/Long;

    return-wide v12

    :cond_1
    move-object/from16 v0, p0

    invoke-interface {v11, v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v14

    iget-wide v9, v14, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-interface {v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v14

    if-eqz v14, :cond_2

    sub-long v12, v1, v9

    goto/16 :goto_0

    :cond_2
    sub-long v14, v1, v5

    sub-long v12, v14, v9

    goto/16 :goto_0

    :cond_3
    const-string v14, "N/A"

    goto :goto_1
.end method

.method public static getUsbStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static requireHtcStorageVolumes()V
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    sget-boolean v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v9, :cond_0

    new-instance v8, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v8}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">> requireStorageVolumeIndices(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getRawStorageVolumes()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    array-length v0, v7

    new-instance v5, Lcom/android/settings/framework/core/storage/HtcPathComparator;

    invoke-direct {v5}, Lcom/android/settings/framework/core/storage/HtcPathComparator;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v6, v7, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/android/settings/framework/core/storage/HtcPathComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v9

    if-nez v9, :cond_3

    new-instance v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    sget-object v9, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-direct {v2, v9, v1, v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;IZ)V

    sput v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolumeIndex:I

    new-instance v9, Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    invoke-direct {v9, v6, v2}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    sput-object v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    sget-boolean v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sUsbStorageVolumeIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-boolean v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    sget-object v9, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-direct {v2, v9, v1, v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;IZ)V

    sput v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolumeIndex:I

    new-instance v9, Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;

    invoke-direct {v9, v6, v2}, Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    sput-object v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    sget-boolean v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sSdCardStorageVolumeIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    sget-object v9, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-direct {v2, v9, v1, v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;IZ)V

    sput v1, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolumeIndex:I

    new-instance v9, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;

    invoke-direct {v9, v6, v2}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    sput-object v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    sget-boolean v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sPhoneStorageVolumeIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-boolean v9, Lcom/android/settings/framework/core/storage/HtcStorageManager;->DEBUG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<< requireStorageVolumeIndices(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->log(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static supportPhoneStorageVolume()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sPhoneStorageVolumeIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSdCardStorageVolume()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sSdCardStorageVolumeIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportUsbStorageVolume()Z
    .locals 1

    sget v0, Lcom/android/settings/framework/core/storage/HtcStorageManager;->sUsbStorageVolumeIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

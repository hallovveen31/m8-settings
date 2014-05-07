.class public Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;
.super Ljava/lang/Object;
.source "HtcCloudStorageManager.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DROPBOX:Ljava/lang/String; = "dropbox"

.field private static final DROPBOX_IDX:I = 0x0

.field private static final REFRESH_DURATION:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static mDropboxAccount:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastRefresh:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->DEBUG:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mLastRefresh:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccountInfo(Landroid/content/Context;)[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .locals 11

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->listServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v9, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v10, "Dropbox service doesn\'t exist"

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v8

    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v7, v1, v3

    const-string v9, "dropbox"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_3

    sget-object v9, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v10, "Dropbox service doesn\'t exist"

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v9, "dropbox"

    invoke-static {p0, v9}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getServiceInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v6

    if-nez v6, :cond_4

    sget-object v9, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v10, "mCloudService is null"

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v6}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->init()Z

    invoke-virtual {v6}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->accountInfo()[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudService;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getDropboxAccountInfo(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .locals 11

    const-class v5, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;

    monitor-enter v5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v6, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mLastRefresh:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x2710

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    sget-boolean v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Refresh data, the old data was got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mLastRefresh:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s ago."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getDropboxAccountInfoDirectly(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_1
    :goto_0
    monitor-exit v5

    return-object v3

    :cond_2
    :try_start_1
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mDropboxAccount:Ljava/lang/ref/SoftReference;

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "mDropboxAccount is null. Create a new one."

    invoke-static {v4, v6}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getDropboxAccountInfoDirectly(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v3

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mDropboxAccount:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-object v3, v0

    if-nez v3, :cond_6

    sget-boolean v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->DEBUG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "mDropboxAccoount is released. Got a new one."

    invoke-static {v4, v6}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getDropboxAccountInfoDirectly(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v3

    goto :goto_0

    :cond_6
    sget-boolean v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v6, "Use mDropboxAccount cache"

    invoke-static {v4, v6}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static getDropboxAccountInfoDirectly(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getAccountInfo(Landroid/content/Context;)[Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "accountInfo is null. The account is not assigned."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mDropboxAccount:Ljava/lang/ref/SoftReference;

    :goto_0
    return-object v1

    :cond_0
    array-length v2, v0

    if-gtz v2, :cond_1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "accountInfo is null. The account is not assigned."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mDropboxAccount:Ljava/lang/ref/SoftReference;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-object v1, v0, v2

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mDropboxAccount:Ljava/lang/ref/SoftReference;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->mLastRefresh:J

    goto :goto_0
.end method

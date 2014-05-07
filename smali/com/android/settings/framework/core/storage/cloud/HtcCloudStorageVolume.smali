.class public Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;
.super Ljava/lang/Object;
.source "HtcCloudStorageVolume.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CloudService:",
        "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;",
        "Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private final mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

.field private final mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager",
            "<",
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

.field private final mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCloudService;"
        }
    .end annotation
.end field

.field private final mThis:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume",
            "<TCloudService;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mThis:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v0, Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/os/response/HtcResponser;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getCloudStorageManager(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mThis:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)Lcom/android/settings/framework/os/response/HtcResponser;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    return-object v0
.end method

.method private runHeavyTask(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/response/HtcResponser;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    move-result v0

    return v0
.end method

.method public broadcast(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/response/HtcResponser;->broadcast(Landroid/os/Message;)V

    return-void
.end method

.method public canEncrypt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->clone()Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->clone()Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public decrypt(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public encrypt(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public encrypt(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public format()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public format(Z)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    return-object v0
.end method

.method public getAppsSpace()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependencyPaths()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMediaFilesSpace()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/HtcAbsWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getStatFs()Lcom/android/settings/framework/core/storage/HtcStatFs;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getState()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getQuota(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "mounted"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    const-string v2, "Failed to invoke getState()"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v1, "unmounted"

    goto :goto_0
.end method

.method public getTotalAvailableSpace()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v0

    return-object v0
.end method

.method public getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 9

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {v2}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>()V

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->init(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getQuota(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "quota_total"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    iget-wide v3, v2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    const-string v5, "quota_used"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "quota_shared"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->release()V

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    const-string v4, "Failed to invoke getTotalAvailableSpace()"

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;-><init>(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)V

    invoke-direct {p0, v3}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->runHeavyTask(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {v2, v4, v5, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>(JJ)V

    goto :goto_1
.end method

.method public getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method public hasDependencyPaths()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMountable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSecondary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTertiary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mount()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public mount(Z)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->refresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    return-void
.end method

.method public refresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1

    new-instance v0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$2;-><init>(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->runHeavyTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllOnResponseListeners()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/response/HtcResponser;->removeAllOnResponseListeners()V

    return-void
.end method

.method public removeOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/os/response/HtcResponser;->removeOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    move-result v0

    return v0
.end method

.method public stopGettingAppsSpace()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public stopGettingMediaFilesSpace()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unmount()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unmount(Z)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

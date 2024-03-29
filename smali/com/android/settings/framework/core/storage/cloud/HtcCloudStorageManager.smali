.class public Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;
.super Ljava/lang/Object;
.source "HtcCloudStorageManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudStorageManager(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;
    .locals 3

    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getGoogleDriveManager(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/IGoogledrive;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support new APIs for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGoogleDriveManager(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/IGoogledrive;
    .locals 2

    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->getInstance(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;I)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/IGoogledrive;

    return-object v0
.end method

.method public static getGoogleDriveStorages(Landroid/content/Context;)[Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;
    .locals 11

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->supportGoogleDrive(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v9, "getGoogleDriveStorages:supportGoogleDrive: false"

    invoke-static {v7, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v8

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getGoogleDriveManager(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/IGoogledrive;

    move-result-object v4

    if-nez v4, :cond_4

    sget-boolean v7, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->DEBUG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v9, "getGoogleDriveStorages:getGoogleDriveManager: null"

    invoke-static {v7, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v8

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getAccountCount()I

    move-result v7

    if-gtz v7, :cond_7

    :cond_5
    sget-boolean v7, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->DEBUG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getGoogleDriveStorages:getAccountManager: empty\n - am: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v2, v8

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    new-instance v9, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-direct {v9, v7}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;-><init>(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V

    aput-object v9, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v7, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->TAG:Ljava/lang/String;

    const-string v9, "Failed to get accounts."

    invoke-static {v7, v9, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v8

    goto :goto_0
.end method

.method public static supportGoogleDrive(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/CloudStorageManager;->isServiceEnabled(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;I)Z

    move-result v0

    return v0
.end method

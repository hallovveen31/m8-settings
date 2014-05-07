.class final Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;
.super Lcom/android/settings/framework/core/storage/HtcStorageVolume;
.source "HtcDataStorageVolume.java"


# static fields
.field private static final DEBUG:Z

.field private static final METADATA:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

.field private static final VOLUME:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 21
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;->DEBUG:Z

    .line 23
    new-instance v0, Landroid/os/storage/StorageVolume;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;->VOLUME:Landroid/os/storage/StorageVolume;

    .line 34
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;IZ)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;->METADATA:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;->VOLUME:Landroid/os/storage/StorageVolume;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcDataStorageVolume;->METADATA:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "mounted"

    return-object v0
.end method

.method public getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 5
    .parameter "statFs"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v0

    .line 56
    .local v0, space:Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    invoke-static {p1}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSystemSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)J

    move-result-wide v1

    .line 57
    .local v1, systemSpace:J
    iget-wide v3, v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 59
    return-object v0
.end method

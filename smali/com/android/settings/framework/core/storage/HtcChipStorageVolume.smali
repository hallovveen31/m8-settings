.class final Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;
.super Lcom/android/settings/framework/core/storage/HtcStorageVolume;
.source "HtcChipStorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/HtcChipStorageVolume$ChipInfo;
    }
.end annotation


# static fields
.field private static final METADATA:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

.field private static final VOLUME:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v2, 0x0

    new-instance v0, Landroid/os/storage/StorageVolume;

    new-instance v1, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;->VOLUME:Landroid/os/storage/StorageVolume;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;IZ)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;->METADATA:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;->VOLUME:Landroid/os/storage/StorageVolume;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;->METADATA:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    return-void
.end method


# virtual methods
.method public getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 5

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume$ChipInfo;->getChipTotalSpace()J

    move-result-wide v1

    invoke-static {p1}, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume$ChipInfo;->getChipAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>(JJ)V

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "mounted"

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

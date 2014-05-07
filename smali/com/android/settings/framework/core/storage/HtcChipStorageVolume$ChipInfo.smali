.class public Lcom/android/settings/framework/core/storage/HtcChipStorageVolume$ChipInfo;
.super Ljava/lang/Object;
.source "HtcChipStorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcChipStorageVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChipInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ceilSizeInPower2(J)J
    .locals 7

    const-wide/16 v3, 0x1

    const-wide/16 v1, 0x0

    cmp-long v5, p0, v1

    if-gez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The \'size\' must be an natural number."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    cmp-long v5, p0, v1

    if-nez v5, :cond_1

    :goto_0
    return-wide v1

    :cond_1
    long-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x4000

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    if-gez v0, :cond_2

    move-wide v1, v3

    goto :goto_0

    :cond_2
    shl-long v1, v3, v0

    goto :goto_0
.end method

.method public static getChipAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)J
    .locals 8

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    invoke-interface {v2, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v6

    iget-wide v0, v6, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v6

    iget-wide v4, v6, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    add-long/2addr v0, v4

    :cond_0
    return-wide v0
.end method

.method public static getChipTotalSpace()J
    .locals 9

    const-string v0, "/sys/block/mmcblk0/size"

    const-wide/16 v1, 0x200

    const-string v7, "/sys/block/mmcblk0/size"

    invoke-static {v7}, Lcom/android/settings/framework/io/HtcFileManager;->readLongValue(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v7, 0x200

    mul-long v5, v3, v7

    invoke-static {v5, v6}, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume$ChipInfo;->ceilSizeInPower2(J)J

    move-result-wide v5

    return-wide v5
.end method

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

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ceilSizeInPower2(J)J
    .locals 7
    .parameter "size"

    .prologue
    const-wide/16 v3, 0x1

    const-wide/16 v1, 0x0

    .line 70
    cmp-long v5, p0, v1

    if-gez v5, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The \'size\' must be an natural number."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    cmp-long v5, p0, v1

    if-nez v5, :cond_1

    .line 87
    :goto_0
    return-wide v1

    .line 82
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

    .line 84
    .local v0, power:I
    if-gez v0, :cond_2

    move-wide v1, v3

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    shl-long v1, v3, v0

    goto :goto_0
.end method

.method public static getChipAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)J
    .locals 8
    .parameter "statFs"

    .prologue
    .line 126
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v2

    .line 128
    .local v2, dataVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v3

    .line 132
    .local v3, phoneVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-interface {v2, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v6

    iget-wide v0, v6, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 135
    .local v0, availableSpace:J
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 136
    invoke-interface {v3, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v6

    iget-wide v4, v6, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 138
    .local v4, tmp:J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 139
    add-long/2addr v0, v4

    .line 142
    .end local v4           #tmp:J
    :cond_0
    return-wide v0
.end method

.method public static getChipTotalSpace()J
    .locals 9

    .prologue
    .line 103
    const-string v0, "/sys/block/mmcblk0/size"

    .line 104
    .local v0, PATH:Ljava/lang/String;
    const-wide/16 v1, 0x200

    .line 107
    .local v1, SECTOR_SIZE:J
    const-string v7, "/sys/block/mmcblk0/size"

    invoke-static {v7}, Lcom/android/settings/framework/io/HtcFileManager;->readLongValue(Ljava/lang/String;)J

    move-result-wide v3

    .line 108
    .local v3, totalBlock:J
    const-wide/16 v7, 0x200

    mul-long v5, v3, v7

    .line 109
    .local v5, totalSpace:J
    invoke-static {v5, v6}, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume$ChipInfo;->ceilSizeInPower2(J)J

    move-result-wide v5

    .line 110
    return-wide v5
.end method

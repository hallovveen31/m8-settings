.class final Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;
.super Lcom/android/settings/framework/core/storage/HtcStorageVolume;
.source "HtcPhoneStorageVolume.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V
    .locals 0
    .parameter "volume"
    .parameter "metadata"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    .line 33
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->getMetadata()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 8
    .parameter "statFs"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v3

    .line 48
    .local v3, space:Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->isEmulated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcChipStorageVolume$ChipInfo;->getChipTotalSpace()J

    move-result-wide v0

    .line 51
    .local v0, chipSize:J
    sget-boolean v4, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "getTotalAvailableSpace(...)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - statFs:imcs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getMediaContainerService()Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "ready"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - chipSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - systemSpace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    sub-long v6, v0, v6

    invoke-static {v5, v6, v7}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - raw used/total: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {v5, v6, v7}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/storage/HtcPhoneStorageVolume;->log(Ljava/lang/String;)V

    .line 86
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iput-wide v0, v3, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 88
    .end local v0           #chipSize:J
    :cond_1
    return-object v3

    .line 54
    .restart local v0       #chipSize:J
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v4, "not ready"

    goto/16 :goto_0
.end method

.class final Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;
.super Lcom/android/settings/framework/core/storage/HtcStorageVolume;
.source "HtcSdCardStorageVolume.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V
    .locals 0
    .parameter "volume"
    .parameter "metadata"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;

    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;->getMetadata()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;-><init>(Landroid/os/storage/StorageVolume;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;)V

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
    .line 14
    invoke-virtual {p0}, Lcom/android/settings/framework/core/storage/HtcSdCardStorageVolume;->clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    return-object v0
.end method

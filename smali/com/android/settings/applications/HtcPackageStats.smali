.class public Lcom/android/settings/applications/HtcPackageStats;
.super Landroid/content/pm/PackageStats;
.source "HtcPackageStats.java"


# static fields
.field private static final sPrimaryStorage:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPrimaryStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/HtcPackageStats;->sPrimaryStorage:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageStats;)V
    .locals 1
    .parameter "pStats"

    .prologue
    .line 19
    iget-object v0, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings/applications/HtcPackageStats;->remapping(Landroid/content/pm/PackageStats;)V

    .line 21
    return-void
.end method

.method private remapping(Landroid/content/pm/PackageStats;)V
    .locals 6
    .parameter "pStats"

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    iget-object v0, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/HtcPackageStats;->packageName:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/settings/applications/HtcPackageStats;->sPrimaryStorage:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->codeSize:J

    .line 90
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->dataSize:J

    .line 91
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->cacheSize:J

    .line 94
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->externalCodeSize:J

    .line 95
    iput-wide v4, p0, Lcom/android/settings/applications/HtcPackageStats;->externalDataSize:J

    .line 96
    iput-wide v4, p0, Lcom/android/settings/applications/HtcPackageStats;->externalCacheSize:J

    .line 97
    iput-wide v4, p0, Lcom/android/settings/applications/HtcPackageStats;->externalMediaSize:J

    .line 98
    iput-wide v4, p0, Lcom/android/settings/applications/HtcPackageStats;->externalObbSize:J

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->codeSize:J

    .line 103
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->dataSize:J

    .line 104
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->cacheSize:J

    .line 107
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->externalCodeSize:J

    .line 108
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->externalDataSize:J

    .line 109
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->externalCacheSize:J

    .line 110
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->externalMediaSize:J

    .line 111
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/HtcPackageStats;->externalObbSize:J

    goto :goto_0
.end method

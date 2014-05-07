.class public Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;
.super Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;
.source "HtcChipStorageVolumeBarPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected final updateTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 13
    .parameter "tas"

    .prologue
    const-wide/16 v11, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->getVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v6

    .line 66
    .local v6, volume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-interface {v6}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, status:Ljava/lang/String;
    const/4 v2, 0x0

    .line 70
    .local v2, progress:I
    sget-boolean v7, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetTotalAvailableSpace:status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-static {v0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpaceInGigaByteWithoutDecimal(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v7, v5}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 84
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_1

    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v7, v7, v11

    if-gtz v7, :cond_3

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->setProgress(I)Z

    .line 108
    sget-boolean v7, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v7, :cond_2

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetTotalAvailableSpace("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - totalSpace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - availableSpace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcChipStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 117
    :cond_2
    return-void

    .line 87
    :cond_3
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    long-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float v3, v7, v8

    .line 88
    .local v3, ratio:F
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    long-to-float v7, v7

    div-float v1, v7, v3

    .line 94
    .local v1, percentage:F
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    iget-wide v9, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    const/high16 v7, 0x42c6

    cmpg-float v7, v7, v1

    if-gez v7, :cond_4

    .line 95
    const/16 v2, 0x63

    .line 102
    :goto_1
    rsub-int/lit8 v2, v2, 0x64

    goto/16 :goto_0

    .line 96
    :cond_4
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_5

    const/high16 v7, 0x3f80

    cmpg-float v7, v1, v7

    if-gez v7, :cond_5

    .line 97
    const/4 v2, 0x1

    goto :goto_1

    .line 99
    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1
.end method

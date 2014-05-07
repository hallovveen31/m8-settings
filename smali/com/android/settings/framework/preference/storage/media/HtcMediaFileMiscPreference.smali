.class public Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;
.super Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;
.source "HtcMediaFileMiscPreference.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAppsSize:Ljava/lang/Long;

.field private volatile mMediaFileInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

.field private volatile mUsedSize:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->TAG:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/media/HtcAbsMediaFilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method private updateMiscSpace()V
    .locals 6

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mUsedSize:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mAppsSize:Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mUsedSize:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 115
    .local v1, miscSpace:J
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mAppsSize:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 116
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mMediaFileInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mMediaFileInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getMusicSpace()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 118
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mMediaFileInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getImageAndVideoSpace()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 119
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mMediaFileInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getDownloadSpace()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 122
    :cond_2
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMiscSpace: \n - mUsedSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mUsedSize:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - mAppsSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mAppsSize:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - mMediaFileInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mMediaFileInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - miscSpace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->log(Ljava/lang/String;)V

    .line 133
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->setSpaceSummary(J)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getColorBarColorTint()I
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;->getOtherColor()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetAppsSpace(J)V
    .locals 1
    .parameter "appsSize"

    .prologue
    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mAppsSize:Ljava/lang/Long;

    .line 89
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->updateMiscSpace()V

    .line 90
    return-void
.end method

.method protected onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V
    .locals 0
    .parameter "space"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mMediaFileInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->updateMiscSpace()V

    .line 96
    return-void
.end method

.method protected onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 2
    .parameter "space"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->mUsedSize:Ljava/lang/Long;

    .line 83
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/media/HtcMediaFileMiscPreference;->updateMiscSpace()V

    .line 84
    return-void
.end method

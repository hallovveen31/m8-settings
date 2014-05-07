.class public Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;
.super Ljava/lang/Object;
.source "HtcMediaFileGroupInfo.java"


# instance fields
.field private mAudioSpace:J

.field private mDownloadSpace:J

.field private mImageSpace:J

.field private mMiscSpace:J

.field private mVideoSpace:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mAudioSpace:J

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mImageSpace:J

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mVideoSpace:J

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mDownloadSpace:J

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mMiscSpace:J

    return-void
.end method

.method private getInfo(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p3, p4}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAudioSpace(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mAudioSpace:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mAudioSpace:J

    return-void
.end method

.method public addDownloadSpace(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mDownloadSpace:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mDownloadSpace:J

    return-void
.end method

.method public addImageSpace(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mImageSpace:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mImageSpace:J

    return-void
.end method

.method public addMiscSpace(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mMiscSpace:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mMiscSpace:J

    return-void
.end method

.method public addVideoSpace(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mVideoSpace:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mVideoSpace:J

    return-void
.end method

.method public getDownloadSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mDownloadSpace:J

    return-wide v0
.end method

.method public getImageAndVideoSpace()J
    .locals 4

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mImageSpace:J

    iget-wide v2, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mVideoSpace:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getImageSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mImageSpace:J

    return-wide v0
.end method

.method public getMiscSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mMiscSpace:J

    return-wide v0
.end method

.method public getMusicSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mAudioSpace:J

    return-wide v0
.end method

.method public getVideoSpace()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mVideoSpace:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "MediaFileGroupInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mAudioSpace"

    iget-wide v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mAudioSpace:J

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getInfo(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mImageSpace"

    iget-wide v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mImageSpace:J

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getInfo(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mVideoSpace"

    iget-wide v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mVideoSpace:J

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getInfo(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDownloadSpace"

    iget-wide v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mDownloadSpace:J

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getInfo(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMiscSpace"

    iget-wide v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->mMiscSpace:J

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getInfo(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.class public Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;
.super Ljava/lang/Object;
.source "HtcMediaFileClassifier.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DIRECTORY_ALARMS:Ljava/lang/String;

.field private final DIRECTORY_DOWNLOADS:Ljava/lang/String;

.field private final DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

.field private final DIRECTORY_RINGTONES:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

.field private mPathBlackList:[Ljava/lang/String;

.field private final mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

.field private volatile mStop:Z

.field private mTaskThread:Ljava/lang/Thread;

.field private final mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/os/response/HtcResponser;)V
    .locals 3
    .parameter "context"
    .parameter "volume"
    .parameter "responser"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mTaskThread:Ljava/lang/Thread;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    .line 90
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Each parameter should not be null. \n - context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n - volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n - responser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 101
    iput-object p3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

    .line 104
    sget-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->getTopLevelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 106
    sget-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->getTopLevelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 108
    sget-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->getTopLevelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->getTopLevelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->classify()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mTaskThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private classify()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->onPrepareClassification()V

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->onQuery()V

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->onFinishClassification()V

    goto :goto_0
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "parent"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "_display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "_size"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "mime_type"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getTopLevelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 126
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 458
    sget-object v0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method private onCountMediaFile(Lcom/android/settings/framework/core/storage/media/HtcMediaFile;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 379
    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mPathBlackList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 392
    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mPathBlackList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    :cond_2
    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 404
    :cond_3
    const/4 v0, 0x1

    .line 405
    .local v0, caseIndex:I
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->addMiscSpace(J)V

    goto :goto_0

    .line 408
    .end local v0           #caseIndex:I
    :cond_4
    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 409
    const/4 v0, 0x2

    .line 410
    .restart local v0       #caseIndex:I
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->addDownloadSpace(J)V

    goto :goto_0

    .line 412
    .end local v0           #caseIndex:I
    :cond_5
    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 413
    iget-object v3, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->mimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 416
    const/4 v0, 0x3

    .line 417
    .restart local v0       #caseIndex:I
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->addAudioSpace(J)V

    goto :goto_0

    .line 419
    .end local v0           #caseIndex:I
    :cond_6
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 420
    const/4 v0, 0x4

    .line 421
    .restart local v0       #caseIndex:I
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->addImageSpace(J)V

    goto/16 :goto_0

    .line 423
    .end local v0           #caseIndex:I
    :cond_7
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 424
    const/4 v0, 0x5

    .line 425
    .restart local v0       #caseIndex:I
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->addVideoSpace(J)V

    goto/16 :goto_0

    .line 428
    .end local v0           #caseIndex:I
    :cond_8
    const/4 v0, 0x6

    .line 429
    .restart local v0       #caseIndex:I
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->addMiscSpace(J)V

    goto/16 :goto_0

    .line 432
    .end local v0           #caseIndex:I
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x7

    .line 433
    .restart local v0       #caseIndex:I
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->addMiscSpace(J)V

    goto/16 :goto_0
.end method

.method private onFinishClassification()V
    .locals 4

    .prologue
    .line 445
    sget-boolean v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V

    .line 449
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/os/response/HtcIResponser;->broadcast(Landroid/os/Message;)V

    .line 455
    return-void
.end method

.method private onPrepareClassification()V
    .locals 3

    .prologue
    .line 230
    new-instance v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-direct {v1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;-><init>()V

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mGroupInfo:Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    .line 233
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getDependencyPaths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mPathBlackList:[Ljava/lang/String;

    .line 235
    sget-boolean v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mPathBlackList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mPathBlackList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlackList["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mPathBlackList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v0           #i:I
    :cond_0
    const-string v1, "mBlackList is empty."

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V

    .line 245
    :cond_1
    return-void
.end method

.method private onQuery()V
    .locals 6

    .prologue
    .line 284
    const/4 v3, 0x0

    .line 288
    .local v3, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v4, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 289
    new-instance v3, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v3           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v3}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 290
    .restart local v3       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQuery():query: >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V

    .line 296
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->getCursor()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 305
    .local v0, c:Landroid/database/Cursor;
    :goto_0
    sget-boolean v4, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQuery():query: << "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V

    .line 309
    :cond_1
    if-eqz v0, :cond_3

    .line 311
    :try_start_1
    sget-boolean v4, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQuery():classify: >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V

    .line 316
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 320
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    if-nez v4, :cond_4

    .line 321
    new-instance v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;

    invoke-direct {v2}, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;-><init>()V

    .line 322
    .local v2, mediaFile:Lcom/android/settings/framework/core/storage/media/HtcMediaFile;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->id:I

    .line 323
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->parent:I

    .line 324
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->path:Ljava/lang/String;

    .line 325
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->title:Ljava/lang/String;

    .line 326
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->displayName:Ljava/lang/String;

    .line 327
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->size:J

    .line 328
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFile;->mimeType:Ljava/lang/String;

    .line 330
    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->onCountMediaFile(Lcom/android/settings/framework/core/storage/media/HtcMediaFile;)V

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 337
    .end local v2           #mediaFile:Lcom/android/settings/framework/core/storage/media/HtcMediaFile;
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_2
    sget-object v4, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->TAG:Ljava/lang/String;

    const-string v5, "A racing condition happened! Media-store provider has deleted some records."

    invoke-static {v4, v5, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 369
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_3
    :goto_2
    return-void

    .line 297
    .end local v0           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 298
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->TAG:Ljava/lang/String;

    const-string v5, "Failed to get the cursor"

    invoke-static {v4, v5, v1}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    const/4 v0, 0x0

    .restart local v0       #c:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 334
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_3
    sget-boolean v4, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQuery():classify: << "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 364
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 364
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
.end method


# virtual methods
.method public start()V
    .locals 5
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 147
    .local v1, starterThraed:Ljava/lang/Thread;
    new-instance v2, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier$1;-><init>(Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;Ljava/lang/Thread;)V

    .line 163
    .local v2, task:Ljava/lang/Runnable;
    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mTaskThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 172
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/Thread;

    sget-object v4, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->TAG:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mTaskThread:Ljava/lang/Thread;

    .line 187
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    .line 188
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mTaskThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 189
    monitor-exit v1

    .line 190
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->TAG:Ljava/lang/String;

    const-string v4, "Failed to wait()"

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 189
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public stop()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->mStop:Z

    .line 199
    sget-boolean v0, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "stop(): The media-file classification has been canceled."

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileClassifier;->log(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

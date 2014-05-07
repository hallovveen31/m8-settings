.class public Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;
.super Lcom/htc/widget/HtcListItem1LineTextProgressBar;
.source "HtcListItem1LineTextStorageBar.java"

# interfaces
.implements Lcom/android/settings/framework/preference/storage/HtcIStorageVolumePreference;
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$2;,
        Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsStatFsReady:Z

.field private mSpaceListener:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;

.field private mUiHandler:Landroid/os/Handler;

.field private mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mUiHandler:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mUiHandler:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mUiHandler:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    .line 118
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 361
    sget-object v0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->TAG:Ljava/lang/String;

    .line 362
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method

.method private onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 13
    .parameter "tas"

    .prologue
    const-wide/16 v11, 0x0

    .line 275
    iget-object v7, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mSpaceListener:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;

    if-eqz v7, :cond_0

    .line 276
    iget-object v7, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mSpaceListener:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;

    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v7, v8, p1}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;->onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v7}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, status:Ljava/lang/String;
    const-string v4, ""

    .line 284
    .local v4, readOnly:Ljava/lang/String;
    const/4 v2, 0x0

    .line 287
    .local v2, progress:I
    const-string v7, "mounted_ro"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 288
    const-string v5, "mounted"

    .line 289
    const v7, 0x7f0c0b3e

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    :cond_1
    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, title:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mUiHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$1;

    invoke-direct {v8, p0, v6}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$1;-><init>(Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;Ljava/lang/String;)V

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 324
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_2

    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v7, v7, v11

    if-ltz v7, :cond_2

    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 326
    :cond_2
    const/4 v2, 0x0

    .line 346
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 349
    sget-boolean v7, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 350
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

    invoke-direct {p0, v7}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v8}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 352
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v8}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 354
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

    invoke-direct {p0, v7}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 355
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

    invoke-direct {p0, v7}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 356
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

    invoke-direct {p0, v7}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 358
    :cond_3
    return-void

    .line 298
    .end local v6           #title:Ljava/lang/String;
    :cond_4
    const v7, 0x7f0c08b7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #title:Ljava/lang/String;
    goto/16 :goto_0

    .line 328
    :cond_5
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    long-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float v3, v7, v8

    .line 329
    .local v3, ratio:F
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    long-to-float v7, v7

    div-float v1, v7, v3

    .line 335
    .local v1, percentage:F
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    iget-wide v9, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    const/high16 v7, 0x42c6

    cmpg-float v7, v7, v1

    if-gez v7, :cond_6

    .line 336
    const/16 v2, 0x63

    .line 343
    :goto_2
    rsub-int/lit8 v2, v2, 0x64

    goto/16 :goto_1

    .line 337
    :cond_6
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_7

    const/high16 v7, 0x3f80

    cmpg-float v7, v1, v7

    if-gez v7, :cond_7

    .line 338
    const/4 v2, 0x1

    goto :goto_2

    .line 340
    :cond_7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_2
.end method

.method private onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 2
    .parameter "lifecycle"

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefresh("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - mIsStatFsReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    .line 270
    :cond_1
    return-void
.end method

.method private onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 245
    sget-object v0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$2;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    iget-object v1, p1, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;->newState:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    .line 256
    :cond_0
    :pswitch_0
    return-void

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setTitleAndSpace()V
    .locals 4

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, labelRedId:I
    sget-object v1, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$2;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->setPrimaryText(I)V

    .line 212
    :goto_1
    const v1, 0x7f0c0e6b

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->setStampText(I)V

    .line 213
    return-void

    .line 186
    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const v0, 0x7f0c028e

    goto :goto_0

    .line 191
    :cond_0
    const v0, 0x7f0c0f85

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    const v0, 0x7f0c028e

    .line 196
    goto :goto_0

    .line 198
    :pswitch_2
    const v0, 0x7f0c0f86

    .line 199
    goto :goto_0

    .line 207
    :cond_1
    sget-object v1, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An unexpected exception!\n - volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 131
    sget-boolean v1, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "attachStorageVolume(...)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - this.mVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - getMediaContainerService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getStatFs()Lcom/android/settings/framework/core/storage/HtcStatFs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getMediaContainerService()Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->log(Ljava/lang/String;)V

    .line 146
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eq v1, p1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->removeOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 155
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    .line 156
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->setTitleAndSpace()V

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getStatFs()Lcom/android/settings/framework/core/storage/HtcStatFs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getMediaContainerService()Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    .line 173
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    .line 175
    :cond_3
    return-void

    .line 134
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :cond_4
    const-string v1, "null"

    goto :goto_0
.end method

.method public onResponse(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 219
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mIsStatFsReady:Z

    .line 220
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    goto :goto_0

    .line 224
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    goto :goto_0

    .line 229
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    goto :goto_0

    .line 233
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    goto :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x63 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnGetTotalAvailableSpaceListener(Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->mSpaceListener:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;

    .line 127
    return-void
.end method

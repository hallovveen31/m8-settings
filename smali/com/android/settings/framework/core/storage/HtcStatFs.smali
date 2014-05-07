.class public Lcom/android/settings/framework/core/storage/HtcStatFs;
.super Ljava/lang/Object;
.source "HtcStatFs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field public static final UNAVAILABLE_SIZE:I = -0x1


# instance fields
.field private mImcs:Lcom/android/internal/app/IMediaContainerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcStatFs;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    .line 132
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcStatFs;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "imcs"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->setMediaContainerService(Lcom/android/internal/app/IMediaContainerService;)V

    .line 182
    return-void
.end method

.method public static getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "size"

    .prologue
    .line 221
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 222
    const v1, 0x7f0c08b7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, formattedSize:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 224
    .end local v0           #formattedSize:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedSize:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "tas"

    .prologue
    const-wide/16 v6, 0x0

    .line 247
    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 248
    :cond_0
    const v4, 0x7f0c08b7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, formattedSize:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 250
    .end local v0           #formattedSize:Ljava/lang/String;
    :cond_1
    const-string v1, "%1$s / %2$s"

    .line 251
    .local v1, pattern:Ljava/lang/String;
    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    iget-wide v6, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    sub-long v2, v4, v6

    .line 252
    .local v2, usedSpace:J
    const-string v4, "%1$s / %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {p0, v7, v8}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedSize:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFormattedSpaceInGigaByteWithoutDecimal(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "size"

    .prologue
    .line 273
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 274
    const v2, 0x7f0c08b7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, formattedSize:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 276
    .end local v0           #formattedSize:Ljava/lang/String;
    :cond_0
    const v1, 0x104004e

    .line 278
    .local v1, suffix:I
    const/16 v2, 0x1e

    shr-long/2addr p1, v2

    .line 279
    const v2, 0x1040051

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x104004e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedSize:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFormattedSpaceInGigaByteWithoutDecimal(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "tas"

    .prologue
    const-wide/16 v6, 0x0

    .line 304
    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 305
    :cond_0
    const v4, 0x7f0c08b7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, formattedSize:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 307
    .end local v0           #formattedSize:Ljava/lang/String;
    :cond_1
    const-string v1, "%1$s / %2$s"

    .line 308
    .local v1, pattern:Ljava/lang/String;
    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    iget-wide v6, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    sub-long v2, v4, v6

    .line 309
    .local v2, usedSpace:J
    const-string v4, "%1$s / %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {p0, v7, v8}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpaceInGigaByteWithoutDecimal(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #formattedSize:Ljava/lang/String;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 459
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method


# virtual methods
.method public calculateDirectorySize(Ljava/lang/String;)J
    .locals 6
    .parameter "mountPoint"

    .prologue
    const-wide/16 v1, -0x1

    .line 391
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStatFs;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/settings/framework/core/storage/HtcStatFs;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v1

    .line 403
    :goto_0
    return-wide v1

    .line 395
    :cond_0
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMediaContainerService is not ready!\n - mountPoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call calculateDirectorySize(...)\n - mountPoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFileSystemStats(Ljava/lang/String;)[J
    .locals 6
    .parameter "mountPoint"

    .prologue
    const/4 v5, 0x2

    .line 343
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/core/storage/HtcStatFs;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/settings/framework/core/storage/HtcStatFs;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v1

    .line 352
    .local v1, space:[J
    sget-boolean v2, Lcom/android/settings/framework/core/storage/HtcStatFs;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcStatFs;->log(Ljava/lang/String;)V

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcStatFs;->log(Ljava/lang/String;)V

    .line 379
    .end local v1           #space:[J
    :cond_0
    :goto_0
    return-object v1

    .line 358
    :cond_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMediaContainerService is not ready!\n - mountPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v2, 0x2

    new-array v1, v2, [J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    fill-array-data v1, :array_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call getFileSystemStats(...)\n - mountPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    new-array v1, v5, [J

    fill-array-data v1, :array_1

    goto :goto_0

    .line 368
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call getFileSystemStats(...)\n - mountPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    const-string v3, "Please contact SSD to fix the kernel issue."

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-array v1, v5, [J

    fill-array-data v1, :array_2

    goto :goto_0

    .line 361
    nop

    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 366
    :array_1
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 379
    :array_2
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getMediaContainerService()Lcom/android/internal/app/IMediaContainerService;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcStatFs;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method public getTotalAvailableSpace(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 8
    .parameter "mountPoint"

    .prologue
    const-wide/16 v6, -0x1

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    .line 419
    .local v0, stats:[J
    new-instance v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>(JJ)V

    .line 422
    .local v1, tas:Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    iget-wide v2, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    iget-wide v2, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 424
    :cond_0
    iput-wide v6, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    iput-wide v6, v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 426
    :cond_1
    return-object v1
.end method

.method public getUsedSpace(Ljava/lang/String;)J
    .locals 9
    .parameter "mountPoint"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    .line 441
    .local v0, stats:[J
    aget-wide v3, v0, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    aget-wide v3, v0, v8

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 443
    :cond_0
    const-wide/16 v1, -0x1

    .line 448
    .local v1, usedSpace:J
    :goto_0
    sget-boolean v3, Lcom/android/settings/framework/core/storage/HtcStatFs;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsedSpace(...)\n - mountPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - totalSpace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v0, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - availableSpace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v0, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - usedSpace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/core/storage/HtcStatFs;->log(Ljava/lang/String;)V

    .line 455
    :cond_1
    return-wide v1

    .line 445
    .end local v1           #usedSpace:J
    :cond_2
    aget-wide v3, v0, v7

    aget-wide v5, v0, v8

    sub-long v1, v3, v5

    .restart local v1       #usedSpace:J
    goto :goto_0
.end method

.method public setMediaContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 3
    .parameter "imcs"

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcStatFs;->TAG:Ljava/lang/String;

    const-string v1, "\'imcs\' should not be null."

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcStatFs;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    .line 194
    return-void
.end method

.class Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "MemoryMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MemoryMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;
    }
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x5

.field public static final MSG_CONNECTED:I = 0x3

.field public static final MSG_DISCONNECT:I = 0x4

.field public static final MSG_INVALIDATE:I = 0x6

.field public static final MSG_MEASURE_EXTERNAL:I = 0x2

.field public static final MSG_MEASURE_INTERNAL:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field private volatile mMeasured:Z

.field private mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MemoryMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    new-instance v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V

    return-void
.end method

.method private getSize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 6

    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private measureApproximateInternalStorage()V
    .locals 13

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v8, v12

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    mul-long v10, v8, v4

    mul-long v0, v2, v4

    iget-object v12, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalTotalSize:J
    invoke-static {v12, v10, v11}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$802(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    iget-object v12, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAvailSize:J
    invoke-static {v12, v0, v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$902(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    iget-object v12, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1000(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    return-void
.end method

.method private measureExactInternalStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    move-object v3, v12

    :goto_0
    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v7, 0x0

    :goto_2
    const/4 v12, 0x5

    if-ge v7, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    const-wide/16 v13, 0x0

    aput-wide v13, v12, v7

    sget-object v12, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v6, v12, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mDirPaths:[Ljava/lang/String;

    array-length v10, v6

    if-lez v10, :cond_4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_4

    aget-object v12, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->getSize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    aget-wide v13, v12, v7

    add-long/2addr v13, v4

    aput-wide v13, v12, v7

    sget-boolean v12, Lcom/android/settings/deviceinfo/MemoryMeasurement;->LOGV:Z

    if-eqz v12, :cond_3

    const-string v12, "MemorySettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "size of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v6, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v14}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v14

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    aput-wide v14, v12, v13

    const/4 v7, 0x1

    :goto_4
    const/4 v12, 0x5

    if-ge v7, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v12

    const/4 v13, 0x5

    aget-wide v14, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static/range {v16 .. v16}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v16

    aget-wide v16, v16, v7

    sub-long v14, v14, v16

    aput-wide v14, v12, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    sget-boolean v12, Lcom/android/settings/deviceinfo/MemoryMeasurement;->LOGV:Z

    if-eqz v12, :cond_7

    const-string v12, "MemorySettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "media_misc size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mMediaSizes:[J
    invoke-static {v14}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1100(Lcom/android/settings/deviceinfo/MemoryMeasurement;)[J

    move-result-object v14

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    const/16 v12, 0x2200

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v12, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Lcom/android/settings/deviceinfo/MemoryMeasurement$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;
    invoke-static {v12}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->access$1300(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;

    move-result-object v13

    monitor-enter v13

    const/4 v7, 0x0

    :goto_5
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    iget-object v14, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->queuePackageMeasurementLocked(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V

    monitor-exit v13

    goto/16 :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 17

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v12, v10

    if-eqz v12, :cond_0

    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v2, v10, v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/android/settings/deviceinfo/Constants;->ExclusionTargetsForMiscFiles:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    aget-object v2, v10, v11

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    iget-object v14, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;

    aget-object v15, v10, v11

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v15, 0x1

    add-long v8, v6, v15

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v6, v8

    goto :goto_2

    :cond_4
    aget-object v2, v10, v11

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->getSize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    iget-object v14, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;

    const-wide/16 v15, 0x1

    add-long v8, v6, v15

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/MemoryMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v6, v8

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MemoryMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onInternalMeasurementComplete()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendExternalApproximateUpdate()V
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$200(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureApproximateExternalStorage()V

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalExactUpdate()V
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$300(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    :cond_3
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureApproximateInternalStorage()V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$400()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->measureExactInternalStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    :cond_5
    if-nez v0, :cond_6

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_6
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_7
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :pswitch_4
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendInternalExactUpdate()V
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$300(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V

    goto/16 :goto_0

    :pswitch_5
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mMeasured:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public measureApproximateExternalStorage()V
    .locals 12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v7, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    mul-long v10, v7, v2

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalTotalSize:J
    invoke-static {v9, v10, v11}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1402(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    mul-long v10, v0, v2

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mExternalAvailSize:J
    invoke-static {v9, v10, v11}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$1502(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement;->sendExternalApproximateUpdate()V
    invoke-static {v9}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$200(Lcom/android/settings/deviceinfo/MemoryMeasurement;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mountPoint: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->getAppsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

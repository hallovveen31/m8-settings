.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 17

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v12, v11, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    new-instance v10, Lcom/android/settings/applications/HtcPackageStats;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings/applications/HtcPackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v13, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    :try_start_1
    iput-boolean v11, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    iget-wide v13, v10, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v15, v10, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v2, v13, v15

    iget-wide v13, v10, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v15, v10, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long v4, v13, v15

    add-long v13, v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    #calls: Lcom/android/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v11, v10}, Lcom/android/settings/applications/ApplicationsState;->access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v15

    add-long v7, v13, v15

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v11, v13, v7

    if-nez v11, :cond_0

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v15, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v11, v13, v15

    if-nez v11, :cond_0

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v15, v10, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v11, v13, v15

    if-nez v11, :cond_0

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v15, v10, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v11, v13, v15

    if-nez v11, :cond_0

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v11, v13, v2

    if-nez v11, :cond_0

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v11, v13, v4

    if-nez v11, :cond_0

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    iget-wide v15, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v11, v13, v15

    if-eqz v11, :cond_1

    :cond_0
    iput-wide v7, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v13, v10, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v13, v10, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v13, v10, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v2, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v4, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iget-wide v13, v10, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    #calls: Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v11, v13, v14}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    #calls: Lcom/android/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v11, v10}, Lcom/android/settings/applications/ApplicationsState;->access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSize:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSize:J

    #calls: Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v11, v13, v14}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    #calls: Lcom/android/settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v11, v10}, Lcom/android/settings/applications/ApplicationsState;->access$300(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-wide v13, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    #calls: Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v11, v13, v14}, Lcom/android/settings/applications/ApplicationsState;->access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    const/4 v9, 0x1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x4

    iget-object v14, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v13, 0x0

    iput-object v13, v11, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11
.end method

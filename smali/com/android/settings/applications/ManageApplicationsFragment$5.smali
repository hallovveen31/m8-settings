.class Lcom/android/settings/applications/ManageApplicationsFragment$5;
.super Ljava/lang/Object;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onGetTotalAvailableSpaceForData(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 15

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mPrimaryVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v11}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1800(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mPrimaryVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v11}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1800(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    :goto_0
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v11}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getCount()I

    move-result v1

    const-wide/16 v2, 0x0

    add-int/lit8 v9, v1, -0x1

    :goto_1
    if-ltz v9, :cond_3

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v11}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v8

    if-nez v8, :cond_2

    sget-boolean v11, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onGetTotalAvailableSpaceForData, i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", entry is null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1700(Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-wide v11, v8, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v13, v8, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    if-eqz v7, :cond_0

    iget-wide v11, v8, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v13, v8, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;
    invoke-static {v11}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    add-long/2addr v11, v4

    move-object/from16 v0, p2

    iput-wide v11, v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    sget-boolean v11, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v11}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onGetTotalAvailableSpaceForData(...)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n - volume: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n - totalSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {v6, v12, v13}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n - availableSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    invoke-static {v6, v12, v13}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n - appSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v2, v3}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n - cacheSpace: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v4, v5}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1700(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private onGetTotalAvailableSpaceForPrimary(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 11

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getCount()I

    move-result v0

    const-wide/16 v1, 0x0

    add-int/lit8 v5, v0, -0x1

    :goto_0
    if-ltz v5, :cond_2

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    if-nez v4, :cond_1

    sget-boolean v7, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetTotalAvailableSpaceForPrimay, i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", entry is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1700(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-wide v7, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v9, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v7, v9

    iget-wide v9, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long/2addr v7, v9

    add-long/2addr v1, v7

    goto :goto_1

    :cond_2
    sget-boolean v7, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v7}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetTotalAvailableSpaceForPrimary(...)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - volume: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - totalSpace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {v3, v8, v9}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - availableSpace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    invoke-static {v3, v8, v9}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n - appSpace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3, v1, v2}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1700(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 4

    iget-wide v0, p2, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v0

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->access$200(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$5;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1500(Lcom/android/settings/applications/ManageApplicationsFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ManageApplicationsFragment$5;->onGetTotalAvailableSpaceForPrimary(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ManageApplicationsFragment$5;->onGetTotalAvailableSpaceForData(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    goto :goto_0
.end method

.class Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "HtcAppsStatistician.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcAppsStatistician;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsObserver"
.end annotation


# instance fields
.field private mAppsSize:J

.field final synthetic this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->mAppsSize:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;-><init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    #getter for: Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z
    invoke-static {v4}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$200(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    if-eqz p2, :cond_2

    sget-object v4, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$2;->$SwitchMap$com$android$settings$framework$core$storage$HtcAppsStatistician$AppsType:[I

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    #getter for: Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    invoke-static {v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$300(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->mAppsSize:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->mAppsSize:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v4, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const-string v5, "x..y..z"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$400()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    #getter for: Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$500(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->mAppsSize:J

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n appSpace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$600(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x4

    iget-wide v6, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->mAppsSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    #getter for: Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;
    invoke-static {v4}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$700(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/os/response/HtcIResponser;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/settings/framework/os/response/HtcIResponser;->broadcast(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;->this$0:Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    #getter for: Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    invoke-static {v4}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->access$800(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    goto :goto_0

    :pswitch_0
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v2, v4, v6

    goto :goto_1

    :pswitch_1
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v2, v4, v6

    goto/16 :goto_1

    :pswitch_2
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    goto/16 :goto_1

    :pswitch_3
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v2, v4, v6

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;
.super Ljava/lang/Thread;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameAndIconLoader"
.end annotation


# instance fields
.field private mAbort:Z

.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->this$0:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    .line 113
    const-string v0, "BatteryUsage Icon Loader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->mAbort:Z

    .line 114
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->mAbort:Z

    .line 118
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 124
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->this$0:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    #getter for: Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->access$000(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->this$0:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    #getter for: Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->access$000(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->mAbort:Z

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->this$0:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    #getter for: Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->access$100(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    monitor-exit v2

    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->this$0:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    #getter for: Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->access$000(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 130
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->loadNameAndIcon()V

    goto :goto_0

    .line 130
    .end local v0           #bs:Lcom/android/settings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

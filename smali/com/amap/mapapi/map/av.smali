.class Lcom/amap/mapapi/map/av;
.super Ljava/lang/Thread;
.source "TileDownloadCtrl.java"


# instance fields
.field a:I

.field b:Lcom/amap/mapapi/map/MapView;

.field c:J

.field volatile d:Z

.field e:Ljava/lang/Thread;

.field private f:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/av;->f:Ljava/util/Hashtable;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/av;->a:I

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/av;->d:Z

    .line 32
    iput-object p1, p0, Lcom/amap/mapapi/map/av;->b:Lcom/amap/mapapi/map/MapView;

    .line 33
    invoke-virtual {p0}, Lcom/amap/mapapi/map/av;->b()V

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/av;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/av;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/map/av;->c:J

    .line 38
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/av;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/av;->d:Z

    .line 42
    iget-object v0, p0, Lcom/amap/mapapi/map/av;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amap/mapapi/map/av;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 45
    :cond_0
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/av;->f:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/av;->e:Ljava/lang/Thread;

    .line 49
    :goto_0
    iget-boolean v0, p0, Lcom/amap/mapapi/map/av;->d:Z

    if-eqz v0, :cond_1

    .line 50
    iget v0, p0, Lcom/amap/mapapi/map/av;->a:I

    if-lez v0, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/mapapi/map/av;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amap/mapapi/map/av;->b:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/av;->b:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->e()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapView;->loadBMtilesData2(Ljava/util/ArrayList;Z)V

    .line 57
    :cond_0
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/mapapi/map/av;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

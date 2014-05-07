.class Lcom/amap/mapapi/map/n;
.super Ljava/lang/Thread;
.source "ConnectionManager.java"


# instance fields
.field a:Lcom/amap/mapapi/map/al;

.field b:I

.field volatile c:Z

.field d:Ljava/lang/Thread;

.field e:Lcom/amap/mapapi/map/MapView;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/amap/mapapi/map/al;

    invoke-direct {v0}, Lcom/amap/mapapi/map/al;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/amap/mapapi/map/n;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/n;->c:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 6

    const/4 v3, 0x0

    monitor-enter p0

    move v4, v3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ac;

    move v2, v3

    :goto_1
    iget-object v1, v0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/map/n;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v5, v1, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    iget-object v1, v0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/amap/mapapi/map/av;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/n;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/av;->a()V

    move v4, v3

    :goto_2
    iget-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ac;

    iget-boolean v1, v0, Lcom/amap/mapapi/map/ac;->j:Z

    if-eqz v1, :cond_2

    move v2, v3

    :goto_3
    iget-object v1, v0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/amap/mapapi/map/n;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v5, v1, Lcom/amap/mapapi/map/MapView;->tileDownloadCtrl:Lcom/amap/mapapi/map/av;

    iget-object v1, v0, Lcom/amap/mapapi/map/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/amap/mapapi/map/av;->c(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/al;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/mapapi/map/ac;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/n;->c:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/n;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/n;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amap/mapapi/map/n;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/n;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/mapapi/map/n;->a:Lcom/amap/mapapi/map/al;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/al;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ac;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/amap/mapapi/map/ac;->d:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ac;->b()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/amap/mapapi/map/n;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/map/n;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    return-void
.end method

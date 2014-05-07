.class Lcom/amap/mapapi/map/u;
.super Lcom/amap/mapapi/core/t;
.source "InprocessingTiles.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/core/t",
        "<",
        "Lcom/amap/mapapi/map/at$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/amap/mapapi/core/t;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/amap/mapapi/map/at$a;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/u;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/amap/mapapi/map/at$a;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 28
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/u;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 32
    :goto_0
    monitor-exit p0

    return v0

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/u;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

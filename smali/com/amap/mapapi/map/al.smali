.class Lcom/amap/mapapi/map/al;
.super Ljava/util/Vector;
.source "ConnectionManager.java"


# instance fields
.field protected a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/al;->a:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/al;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_0
    monitor-exit p0

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    invoke-super {p0, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/al;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

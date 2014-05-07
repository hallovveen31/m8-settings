.class Lcom/amap/mapapi/map/am;
.super Ljava/lang/Thread;
.source "RenderPool.java"


# instance fields
.field volatile a:Z

.field b:Ljava/lang/Thread;

.field c:Lcom/amap/mapapi/map/MapView;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;)V
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/am;->a:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/am;->d:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/amap/mapapi/map/am;->c:Lcom/amap/mapapi/map/MapView;

    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/am;->a:Z

    .line 16
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    :cond_0
    return-void
.end method

.method public a(Lcom/amap/mapapi/map/an;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    move v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/an;

    .line 51
    iget-object v0, v0, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 57
    :goto_1
    return v0

    .line 49
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    move v0, v1

    .line 55
    goto :goto_1

    :cond_1
    move v0, v1

    .line 57
    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amap/mapapi/map/am;->a:Z

    if-eqz v0, :cond_2

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/am;->b:Ljava/lang/Thread;

    .line 25
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/an;

    .line 27
    iget-object v1, p0, Lcom/amap/mapapi/map/am;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/amap/mapapi/map/am;->c:Lcom/amap/mapapi/map/MapView;

    iget-object v2, v0, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/map/MapView;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/amap/mapapi/map/am;->c:Lcom/amap/mapapi/map/MapView;

    iget-object v1, v1, Lcom/amap/mapapi/map/MapView;->f:Lcom/mapabc/minimap/map/vmap/NativeMapEngine;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/an;->a(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;)Z

    .line 32
    iget-object v0, p0, Lcom/amap/mapapi/map/am;->c:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->postInvalidate()V

    .line 36
    :cond_1
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Lcom/amap/mapapi/map/am;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

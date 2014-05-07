.class Lcom/amap/mapapi/map/au;
.super Lcom/amap/mapapi/map/ar;
.source "TaskPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/map/ar",
        "<",
        "Lcom/amap/mapapi/map/at$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/mapapi/map/ar;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized b(IZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ar;->a:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ar;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le p1, v3, :cond_1

    move p1, v3

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_1
    if-ge v1, v3, :cond_5

    iget-object v0, p0, Lcom/amap/mapapi/map/ar;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ar;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    if-nez v0, :cond_4

    move v0, v1

    move v1, v2

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_4
    iget v6, v0, Lcom/amap/mapapi/map/at$a;->a:I

    if-eqz p2, :cond_6

    if-nez v6, :cond_7

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/mapapi/map/ar;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_2
    if-lt v1, p1, :cond_3

    :cond_5
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ar;->b()V

    move-object v0, v5

    goto :goto_0

    :cond_6
    if-gez v6, :cond_7

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/mapapi/map/ar;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2
.end method

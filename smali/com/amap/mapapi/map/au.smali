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

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/amap/mapapi/map/ar;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized b(IZ)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/au;->a:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 222
    :goto_0
    monitor-exit p0

    return-object v0

    .line 170
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/mapapi/map/au;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 171
    if-le p1, v3, :cond_1

    move p1, v3

    .line 175
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 180
    :goto_1
    if-ge v1, v3, :cond_5

    .line 181
    iget-object v0, p0, Lcom/amap/mapapi/map/au;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_2

    move-object v0, v4

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/au;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 186
    if-nez v0, :cond_4

    move v0, v1

    move v1, v2

    move v2, v3

    .line 180
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 190
    :cond_4
    iget v6, v0, Lcom/amap/mapapi/map/at$a;->a:I

    .line 191
    if-eqz p2, :cond_6

    .line 193
    if-nez v6, :cond_7

    .line 195
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/amap/mapapi/map/au;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 197
    add-int/lit8 v3, v3, -0x1

    .line 198
    add-int/lit8 v1, v1, -0x1

    .line 199
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    .line 213
    :goto_2
    if-lt v1, p1, :cond_3

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/amap/mapapi/map/au;->b()V

    move-object v0, v5

    .line 222
    goto :goto_0

    .line 204
    :cond_6
    if-gez v6, :cond_7

    .line 206
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/amap/mapapi/map/au;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    add-int/lit8 v3, v3, -0x1

    .line 209
    add-int/lit8 v1, v1, -0x1

    .line 210
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2

    .line 166
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

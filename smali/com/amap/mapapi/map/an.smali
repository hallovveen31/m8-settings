.class Lcom/amap/mapapi/map/an;
.super Ljava/lang/Object;
.source "RenderedMapTile.java"


# instance fields
.field public a:Ljava/lang/String;

.field b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/an;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/high16 v2, 0x2

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->hasBitMapData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->fillBitmapBufferData(Ljava/lang/String;[B)V

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/mapapi/map/an;->b:Z

    :goto_1
    return v0

    :cond_0
    new-instance v3, Lcom/mapabc/minimap/map/vmap/NativeMap;

    invoke-direct {v3}, Lcom/mapabc/minimap/map/vmap/NativeMap;-><init>()V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x100

    const/16 v6, 0x100

    invoke-virtual {v3, v4, v5, v6}, Lcom/mapabc/minimap/map/vmap/NativeMap;->initMap([BII)V

    iget-object v4, p0, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->QuadKeyToTile(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    mul-int/lit16 v6, v6, 0x100

    add-int/lit16 v6, v6, 0x80

    rsub-int/lit8 v7, v5, 0x14

    shl-int/2addr v6, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/lit16 v4, v4, 0x100

    add-int/lit16 v4, v4, 0x80

    rsub-int/lit8 v7, v5, 0x14

    shl-int/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/mapabc/minimap/map/vmap/NativeMap;->setMapParameter(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/mapabc/minimap/map/vmap/NativeMap;->paintMap(Lcom/mapabc/minimap/map/vmap/NativeMapEngine;I)Z

    iget-object v3, p0, Lcom/amap/mapapi/map/an;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-virtual {p1, v3, v2, v4, v5}, Lcom/mapabc/minimap/map/vmap/NativeMapEngine;->putBitmapData(Ljava/lang/String;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0
.end method

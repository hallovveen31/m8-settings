.class Lcom/amap/mapapi/map/bg;
.super Lcom/amap/mapapi/map/s;
.source "WaterMarkOverlay.java"


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/s;-><init>(Lcom/amap/mapapi/map/ai;Landroid/graphics/Bitmap;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected a()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 13
    iget-object v0, p0, Lcom/amap/mapapi/map/bg;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v0

    .line 15
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/mapapi/map/bg;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0xa

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/mapapi/map/bg;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/bg;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/amap/mapapi/map/bg;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/bg;->b:Landroid/graphics/Bitmap;

    .line 25
    :cond_0
    return-void
.end method

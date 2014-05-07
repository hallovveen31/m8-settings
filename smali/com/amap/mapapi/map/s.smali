.class abstract Lcom/amap/mapapi/map/s;
.super Lcom/amap/mapapi/map/p;
.source "ImageOverlay.java"


# instance fields
.field protected a:Lcom/amap/mapapi/map/ai;

.field protected b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/amap/mapapi/map/p;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/mapapi/map/s;->a:Lcom/amap/mapapi/map/ai;

    .line 17
    iput-object p2, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    .line 18
    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/graphics/Point;
.end method

.method public c()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/amap/mapapi/map/s;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 26
    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->b:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    .line 30
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 37
    iget-object v0, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 38
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v1, Lcom/amap/mapapi/core/c$a;->b:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 43
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v1, Lcom/amap/mapapi/core/c$a;->b:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/s;->c()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/s;->c()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    return v4
.end method

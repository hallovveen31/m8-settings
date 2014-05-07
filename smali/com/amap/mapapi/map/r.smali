.class Lcom/amap/mapapi/map/r;
.super Lcom/amap/mapapi/map/a;
.source "FrameAnim.java"


# instance fields
.field private e:[Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Rect;

.field private g:I

.field private h:Lcom/amap/mapapi/map/ai;


# direct methods
.method public constructor <init>(IILcom/amap/mapapi/map/ai;[Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/a;-><init>(II)V

    iput-object p4, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    iput v3, p0, Lcom/amap/mapapi/map/r;->g:I

    iput-object p3, p0, Lcom/amap/mapapi/map/r;->h:Lcom/amap/mapapi/map/ai;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    iget v0, p0, Lcom/amap/mapapi/map/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/r;->g:I

    iget v0, p0, Lcom/amap/mapapi/map/r;->g:I

    iget-object v1, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/r;->g:I

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/r;->h:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/ai$a;->b(IIII)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;II)V
    .locals 5

    iget-object v0, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    sub-int v3, p2, v0

    sub-int v4, p3, v1

    add-int/2addr v0, p2

    add-int/2addr v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/amap/mapapi/map/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/r;->g:I

    iget v0, p0, Lcom/amap/mapapi/map/r;->g:I

    iget-object v1, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/r;->g:I

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/amap/mapapi/map/r;->g:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/mapapi/map/r;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/r;->e:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

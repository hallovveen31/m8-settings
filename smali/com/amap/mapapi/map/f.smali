.class Lcom/amap/mapapi/map/f;
.super Ljava/lang/Object;
.source "BitmapDrawer.java"


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field protected b:Landroid/graphics/Canvas;

.field protected c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    .line 8
    iput-object v0, p0, Lcom/amap/mapapi/map/f;->b:Landroid/graphics/Canvas;

    .line 12
    iput-object p1, p0, Lcom/amap/mapapi/map/f;->c:Landroid/graphics/Bitmap$Config;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    :cond_0
    iput-object v1, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/amap/mapapi/map/f;->b:Landroid/graphics/Canvas;

    .line 34
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/amap/mapapi/map/f;->a()V

    .line 24
    iget-object v0, p0, Lcom/amap/mapapi/map/f;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    .line 25
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/f;->b:Landroid/graphics/Canvas;

    .line 26
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    .line 19
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/f;->b:Landroid/graphics/Canvas;

    .line 20
    return-void
.end method

.method public a(Lcom/amap/mapapi/map/g;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amap/mapapi/map/f;->b:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 38
    iget-object v0, p0, Lcom/amap/mapapi/map/f;->b:Landroid/graphics/Canvas;

    invoke-interface {p1, v0}, Lcom/amap/mapapi/map/g;->a(Landroid/graphics/Canvas;)V

    .line 39
    iget-object v0, p0, Lcom/amap/mapapi/map/f;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 40
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amap/mapapi/map/f;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

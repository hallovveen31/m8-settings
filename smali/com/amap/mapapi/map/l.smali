.class Lcom/amap/mapapi/map/l;
.super Lcom/amap/mapapi/map/s;
.source "CompassOverlay.java"


# instance fields
.field private c:Lcom/amap/mapapi/map/k;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;)V
    .locals 4
    .parameter

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/mapapi/map/s;-><init>(Lcom/amap/mapapi/map/ai;Landroid/graphics/Bitmap;)V

    .line 14
    new-instance v0, Lcom/amap/mapapi/map/k;

    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->d:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v3, Lcom/amap/mapapi/core/c$a;->e:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v3}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/map/k;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/l;->c:Lcom/amap/mapapi/map/k;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/l;->d:F

    .line 21
    invoke-direct {p0}, Lcom/amap/mapapi/map/l;->d()V

    .line 22
    return-void
.end method

.method private b(F)Z
    .locals 2
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/amap/mapapi/map/l;->d:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/mapapi/map/l;->c:Lcom/amap/mapapi/map/k;

    iget v1, p0, Lcom/amap/mapapi/map/l;->d:F

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/k;->a(F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method


# virtual methods
.method protected a()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xf

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/l;->b(F)Z

    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iput p1, p0, Lcom/amap/mapapi/map/l;->d:F

    .line 32
    invoke-direct {p0}, Lcom/amap/mapapi/map/l;->d()V

    .line 34
    :cond_0
    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    .line 53
    :cond_0
    return-void
.end method

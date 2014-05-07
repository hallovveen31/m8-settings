.class Lcom/amap/mapapi/map/k;
.super Ljava/lang/Object;
.source "ComassMaker.java"

# interfaces
.implements Lcom/amap/mapapi/map/g;


# instance fields
.field a:Lcom/amap/mapapi/map/f;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/k;->f:F

    .line 14
    new-instance v0, Lcom/amap/mapapi/map/f;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/f;-><init>(Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/k;->a:Lcom/amap/mapapi/map/f;

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/k;->d:I

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/k;->e:I

    .line 19
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/k;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/k;->b:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-direct {p0, p2}, Lcom/amap/mapapi/map/k;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/k;->c:Landroid/graphics/drawable/Drawable;

    .line 21
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 24
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    iget v1, p0, Lcom/amap/mapapi/map/k;->d:I

    iget v2, p0, Lcom/amap/mapapi/map/k;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    return-object v0
.end method


# virtual methods
.method public a(F)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/amap/mapapi/map/k;->f:F

    .line 31
    iget-object v0, p0, Lcom/amap/mapapi/map/k;->a:Lcom/amap/mapapi/map/f;

    iget v1, p0, Lcom/amap/mapapi/map/k;->d:I

    iget v2, p0, Lcom/amap/mapapi/map/k;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/f;->a(II)V

    .line 33
    iget-object v0, p0, Lcom/amap/mapapi/map/k;->a:Lcom/amap/mapapi/map/f;

    invoke-virtual {v0, p0}, Lcom/amap/mapapi/map/f;->a(Lcom/amap/mapapi/map/g;)V

    .line 35
    iget-object v0, p0, Lcom/amap/mapapi/map/k;->a:Lcom/amap/mapapi/map/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/mapapi/map/k;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    iget v0, p0, Lcom/amap/mapapi/map/k;->f:F

    neg-float v0, v0

    iget v1, p0, Lcom/amap/mapapi/map/k;->d:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/mapapi/map/k;->e:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 42
    iget-object v0, p0, Lcom/amap/mapapi/map/k;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    return-void
.end method

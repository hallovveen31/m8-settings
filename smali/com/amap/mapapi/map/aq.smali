.class Lcom/amap/mapapi/map/aq;
.super Ljava/lang/Object;
.source "ShadowMaker.java"

# interfaces
.implements Lcom/amap/mapapi/map/g;


# instance fields
.field private a:Lcom/amap/mapapi/map/f;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/amap/mapapi/map/f;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/f;-><init>(Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/aq;->a:Lcom/amap/mapapi/map/f;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 36
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object v0, p0, Lcom/amap/mapapi/map/aq;->a:Lcom/amap/mapapi/map/f;

    iget-object v1, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/f;->a(II)V

    .line 17
    iget-object v0, p0, Lcom/amap/mapapi/map/aq;->a:Lcom/amap/mapapi/map/f;

    invoke-virtual {v0, p0}, Lcom/amap/mapapi/map/f;->a(Lcom/amap/mapapi/map/g;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    .line 19
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amap/mapapi/map/aq;->a:Lcom/amap/mapapi/map/f;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/f;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    .line 25
    iget-object v0, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x7f00

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    const v0, -0x4099999a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->skew(FF)V

    .line 27
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f00

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 28
    iget-object v0, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    iget-object v0, p0, Lcom/amap/mapapi/map/aq;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 30
    return-void
.end method

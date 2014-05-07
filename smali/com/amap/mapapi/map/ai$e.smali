.class public Lcom/amap/mapapi/map/ai$e;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Lcom/amap/mapapi/map/Projection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/ai;

.field private b:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/ai$e;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$e;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(Z)I
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getMapAngle()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v5, v5, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v5}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    add-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {p0, v8, v0}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {p0, v2, v8}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/ai$e;->a(Z)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/ai$e;->a(Z)I

    move-result v0

    return v0
.end method

.method public fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;
    .locals 7

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v4

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v2, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v2, v2, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v3, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, v3, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v5, v5, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v5, v5, Lcom/amap/mapapi/map/ad;->h:[D

    aget-wide v4, v5, v4

    iget-object v6, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v6, v6, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v6, v6, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/ai$e;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/amap/mapapi/map/ai$e;->b:I

    if-eq v1, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/amap/mapapi/map/ai$e;->b:I

    iget-object v1, p0, Lcom/amap/mapapi/map/ai$e;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v4, v4}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, v4, v2}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v3, v1, v2}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    const/high16 v0, 0x4120

    div-float v1, p1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/amap/mapapi/map/ai$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    const-wide/high16 v8, 0x3fe0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v1

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v2, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v2, v2, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v3, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, v3, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v4, v4, Lcom/amap/mapapi/map/ad;->h:[D

    aget-wide v4, v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/ad;->b(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView$c;->a()Lcom/amap/mapapi/map/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/map/ai$e;->a:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v2}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v2, v2, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget-boolean v3, v1, Lcom/amap/mapapi/map/aj;->m:Z

    if-eqz v3, :cond_4

    iget-boolean v2, v1, Lcom/amap/mapapi/map/aj;->l:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/amap/mapapi/map/aj;->j:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, v1, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, v1, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iget-object v3, v1, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v1, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/amap/mapapi/map/aj;->j:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v4, v1, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    mul-float/2addr v0, v3

    iget-object v3, v1, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    iget-object v3, v1, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v1

    add-float v3, v0, v1

    float-to-int v1, v2

    float-to-int v0, v3

    float-to-double v4, v2

    int-to-double v6, v1

    add-double/2addr v6, v8

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    float-to-double v2, v3

    int-to-double v4, v0

    add-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p2, :cond_2

    iget v0, v2, Landroid/graphics/Point;->x:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    :cond_2
    return-object v2

    :cond_3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    sget v1, Lcom/amap/mapapi/map/bh;->h:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    sget v1, Lcom/amap/mapapi/map/bh;->h:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float v2, v0, v1

    float-to-int v1, v3

    float-to-int v0, v2

    float-to-double v3, v3

    int-to-double v5, v1

    add-double/2addr v5, v8

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    float-to-double v2, v2

    int-to-double v4, v0

    add-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

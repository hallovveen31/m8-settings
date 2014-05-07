.class public Lcom/amap/mapapi/map/MyLocationOverlay;
.super Lcom/amap/mapapi/map/Overlay;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/hardware/SensorListener;
.implements Landroid/location/LocationListener;
.implements Lcom/amap/mapapi/map/Overlay$Snappable;


# instance fields
.field private a:Lcom/amap/mapapi/map/ai;

.field private b:Lcom/amap/mapapi/map/m;

.field private c:Z

.field private d:Z

.field private e:F

.field private f:Lcom/amap/mapapi/map/l;

.field private g:Lcom/amap/mapapi/map/r;

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amap/mapapi/location/LocationManagerProxy;

.field private j:Lcom/amap/mapapi/location/c;

.field private k:Landroid/location/Criteria;

.field private l:Landroid/location/Location;

.field private m:Landroid/location/Location;

.field private n:Landroid/content/Context;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/mapapi/map/MapView;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 44
    invoke-direct {p0}, Lcom/amap/mapapi/map/Overlay;-><init>()V

    .line 31
    iput-boolean v7, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    .line 32
    iput-boolean v7, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    .line 33
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MapView \u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->n:Landroid/content/Context;

    .line 49
    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    .line 50
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v4}, Lcom/amap/mapapi/map/ai$c;->a(I)Lcom/amap/mapapi/map/af;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/m;

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->b:Lcom/amap/mapapi/map/m;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    .line 53
    new-instance v0, Lcom/amap/mapapi/map/l;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/l;-><init>(Lcom/amap/mapapi/map/ai;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    .line 54
    new-instance v0, Lcom/amap/mapapi/map/r;

    const/4 v1, -0x1

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    new-array v4, v4, [Landroid/graphics/Bitmap;

    sget-object v5, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v6, Lcom/amap/mapapi/core/c$a;->f:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v6}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    sget-object v6, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v7, Lcom/amap/mapapi/core/c$a;->f:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v7}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/r;-><init>(IILcom/amap/mapapi/map/ai;[Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    .line 64
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->disableMyLocation()V

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->c()V

    .line 68
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->disableCompass()V

    .line 69
    return-void
.end method

.method private a(Landroid/location/Location;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 5
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    if-eqz p1, :cond_0

    .line 183
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    .line 187
    :cond_0
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/location/LocationManagerProxy;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    const-string v3, "gps"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "network"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_1
    move-object v1, v0

    .line 155
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 159
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 163
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    .line 164
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 165
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 166
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 168
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 169
    return-void
.end method

.method private d()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getMyLocation()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/r;->i()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 202
    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/r;->j()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 203
    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v4, v1, v0}, Lcom/amap/mapapi/map/ai$e;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    iget v5, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v3

    iget v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    invoke-direct {v0, v4, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    :cond_0
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public disableCompass()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->b:Lcom/amap/mapapi/map/m;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/m;->e()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    .line 78
    return-void
.end method

.method public disableMyLocation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/c;->a()V

    .line 100
    :cond_0
    iput-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    .line 102
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/LocationManagerProxy;->destory()V

    .line 105
    :cond_1
    iput-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    .line 106
    return-void
.end method

.method protected dispatchTap()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 306
    if-eqz p3, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v7

    .line 310
    :cond_1
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v3

    .line 312
    if-eqz v3, :cond_2

    .line 313
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/amap/mapapi/map/MyLocationOverlay;->a(Landroid/location/Location;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amap/mapapi/map/MyLocationOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Landroid/location/Location;Lcom/amap/mapapi/core/GeoPoint;J)V

    .line 317
    :cond_2
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    if-eqz v0, :cond_0

    .line 318
    iget v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    invoke-virtual {p0, p1, v0}, Lcom/amap/mapapi/map/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;F)V

    goto :goto_0
.end method

.method protected drawCompass(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v0, p2}, Lcom/amap/mapapi/map/l;->a(F)Z

    .line 448
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/l;->draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z

    .line 449
    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Landroid/location/Location;Lcom/amap/mapapi/core/GeoPoint;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/amap/mapapi/map/ai$e;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 415
    const/high16 v0, 0x43fa

    .line 416
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 417
    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 420
    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/mapapi/map/MapView$c;->a()Lcom/amap/mapapi/map/aj;

    move-result-object v3

    .line 422
    const-string v4, "lbs"

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    invoke-virtual {p3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 424
    iget-boolean v0, v3, Lcom/amap/mapapi/map/aj;->m:Z

    if-eqz v0, :cond_1

    .line 425
    sget v0, Lcom/amap/mapapi/map/aj;->j:F

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    mul-float/2addr v0, v3

    .line 434
    :cond_0
    :goto_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/amap/mapapi/map/Projection;->metersToEquatorPixels(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 436
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 437
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 439
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/amap/mapapi/map/Projection;->metersToEquatorPixels(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 442
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/amap/mapapi/map/r;->a(Landroid/graphics/Canvas;II)V

    .line 444
    return-void

    .line 428
    :cond_1
    sget v0, Lcom/amap/mapapi/map/bh;->h:F

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    mul-float/2addr v0, v3

    goto :goto_0
.end method

.method public enableCompass()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->b:Lcom/amap/mapapi/map/m;

    invoke-virtual {v1, p0}, Lcom/amap/mapapi/map/m;->a(Landroid/hardware/SensorEventListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iput-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableMyLocation()Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x2710

    const/high16 v4, 0x40a0

    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-nez v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/mapapi/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/mapapi/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    .line 124
    :cond_0
    new-instance v0, Lcom/amap/mapapi/location/c;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/location/c;-><init>(Lcom/amap/mapapi/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    .line 125
    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    .line 126
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JFLjava/lang/String;)Z

    move-result v0

    .line 135
    :goto_0
    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->l:Landroid/location/Location;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    .line 141
    :cond_1
    return v0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JF)Z

    move-result v0

    goto :goto_0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->m:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/MyLocationOverlay;->a(Landroid/location/Location;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    return v0
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 487
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 481
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 260
    if-eqz p1, :cond_3

    .line 261
    iput-object p1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->l:Landroid/location/Location;

    .line 262
    iput-object p1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->m:Landroid/location/Location;

    .line 263
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->d()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 268
    if-eqz v0, :cond_1

    .line 269
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 275
    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 492
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    .line 493
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/l;->c()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/l;->c()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v3, v3, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v4, v4, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v5}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/ai$a;->a(IIII)V

    .line 502
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter

    .prologue
    .line 464
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    .line 465
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/l;->c()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/l;->c()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v3, v3, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v4, v4, Lcom/amap/mapapi/map/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v5}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/ai$a;->a(IIII)V

    .line 475
    :cond_0
    return-void
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/amap/mapapi/map/MapView;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getMyLocation()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p4}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v2

    .line 247
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 248
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 249
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 250
    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    int-to-double v2, v2

    .line 251
    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p2, v1

    int-to-double v4, v1

    .line 252
    mul-double v1, v2, v2

    mul-double v3, v4, v4

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4050

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 255
    :cond_0
    return v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x2710

    const/high16 v4, 0x40a0

    .line 279
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    .line 283
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JFLjava/lang/String;)Z

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JF)Z

    goto :goto_0
.end method

.method public onTap(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    iget-boolean v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    if-eqz v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->d()Landroid/graphics/Rect;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_0

    .line 220
    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/amap/mapapi/map/ai$e;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 221
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->dispatchTap()Z

    move-result v0

    .line 226
    :cond_0
    return v0
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->m:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

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

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/amap/mapapi/map/Overlay;-><init>()V

    iput-boolean v7, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    iput-boolean v7, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MapView \u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->n:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v0, v4}, Lcom/amap/mapapi/map/ai$c;->a(I)Lcom/amap/mapapi/map/af;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/m;

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->b:Lcom/amap/mapapi/map/m;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    new-instance v0, Lcom/amap/mapapi/map/l;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/l;-><init>(Lcom/amap/mapapi/map/ai;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    new-instance v0, Lcom/amap/mapapi/map/r;

    const/4 v1, -0x1

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    new-array v4, v4, [Landroid/graphics/Bitmap;

    sget-object v5, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v6, Lcom/amap/mapapi/core/c$a;->f:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    sget-object v6, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v7, Lcom/amap/mapapi/core/c$a;->f:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/r;-><init>(IILcom/amap/mapapi/map/ai;[Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->disableMyLocation()V

    :cond_1
    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->c()V

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->disableCompass()V

    return-void
.end method

.method private a(Landroid/location/Location;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

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

    :cond_0
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

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

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->k:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-void
.end method

.method private d()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getMyLocation()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/r;->i()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/r;->j()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v4, v1, v0}, Lcom/amap/mapapi/map/ai$e;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

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

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method public disableCompass()V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->b:Lcom/amap/mapapi/map/m;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/m;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    return-void
.end method

.method public disableMyLocation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/c;->a()V

    :cond_0
    iput-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-virtual {v0}, Lcom/amap/mapapi/location/LocationManagerProxy;->destory()V

    :cond_1
    iput-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    return-void
.end method

.method protected dispatchTap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z
    .locals 8

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_2

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

    :cond_2
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    invoke-virtual {p0, p1, v0}, Lcom/amap/mapapi/map/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;F)V

    goto :goto_0
.end method

.method protected drawCompass(Landroid/graphics/Canvas;F)V
    .locals 6

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v0, p2}, Lcom/amap/mapapi/map/l;->a(F)Z

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/s;->draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z

    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Landroid/location/Location;Lcom/amap/mapapi/core/GeoPoint;J)V
    .locals 6

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/amap/mapapi/map/ai$e;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    const/high16 v0, 0x43fa

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/mapapi/map/MapView$c;->a()Lcom/amap/mapapi/map/aj;

    move-result-object v3

    const-string v4, "lbs"

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget-boolean v0, v3, Lcom/amap/mapapi/map/aj;->m:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/amap/mapapi/map/aj;->j:F

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    mul-float/2addr v0, v3

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

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->g:Lcom/amap/mapapi/map/r;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/amap/mapapi/map/r;->a(Landroid/graphics/Canvas;II)V

    return-void

    :cond_1
    sget v0, Lcom/amap/mapapi/map/bh;->h:F

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    mul-float/2addr v0, v3

    goto :goto_0
.end method

.method public enableCompass()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->b:Lcom/amap/mapapi/map/m;

    invoke-virtual {v1, p0}, Lcom/amap/mapapi/map/m;->a(Landroid/hardware/SensorEventListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableMyLocation()Z
    .locals 6

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x40a0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/mapapi/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/mapapi/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    :cond_0
    new-instance v0, Lcom/amap/mapapi/location/c;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/location/c;-><init>(Lcom/amap/mapapi/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JFLjava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->i:Lcom/amap/mapapi/location/LocationManagerProxy;

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->l:Landroid/location/Location;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JF)Z

    move-result v0

    goto :goto_0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->m:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/MyLocationOverlay;->a(Landroid/location/Location;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->d:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    return v0
.end method

.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->l:Landroid/location/Location;

    iput-object p1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->m:Landroid/location/Location;

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->d()V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 6

    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/s;->c()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/s;->c()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v3, v3, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v4, v4, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v5}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/ai$a;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->e:F

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/s;->c()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/s;->c()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v3, v3, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    iget-object v4, v4, Lcom/amap/mapapi/map/s;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->f:Lcom/amap/mapapi/map/l;

    invoke-virtual {v5}, Lcom/amap/mapapi/map/l;->a()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/ai$a;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/amap/mapapi/map/MapView;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->getMyLocation()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p3, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p3, Landroid/graphics/Point;->y:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    int-to-double v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p2, v1

    int-to-double v4, v1

    mul-double v1, v2, v2

    mul-double v3, v4, v4

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4050

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x40a0

    iget-boolean v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    const-string v0, "lbs"

    iget-object v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    iget-object v5, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->o:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JFLjava/lang/String;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/amap/mapapi/location/c;->a(Landroid/location/LocationListener;JF)Z

    goto :goto_0
.end method

.method public onTap(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->c:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->d()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->a:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/amap/mapapi/map/ai$e;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MyLocationOverlay;->dispatchTap()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->m:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->j:Lcom/amap/mapapi/location/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MyLocationOverlay;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

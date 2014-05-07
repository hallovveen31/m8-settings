.class Lcom/amap/mapapi/map/ap;
.super Ljava/lang/Object;
.source "RouteOverlayDraw.java"


# instance fields
.field protected c:Lcom/amap/mapapi/map/RouteOverlay;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/mapapi/map/ap;->c:Lcom/amap/mapapi/map/RouteOverlay;

    return-void
.end method


# virtual methods
.method protected a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;
    .locals 2

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 3

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/amap/mapapi/map/Projection;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/amap/mapapi/map/MapView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/amap/mapapi/map/MapView;)V
    .locals 0

    return-void
.end method

.class Lcom/amap/mapapi/map/ak;
.super Lcom/amap/mapapi/map/ap;
.source "RouteOverlayDraw.java"


# instance fields
.field protected a:I

.field protected b:Lcom/amap/mapapi/core/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ap;-><init>(Lcom/amap/mapapi/map/RouteOverlay;)V

    iput p2, p0, Lcom/amap/mapapi/map/ak;->a:I

    iput-object p3, p0, Lcom/amap/mapapi/map/ak;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method

.class Lcom/amap/mapapi/map/ak;
.super Lcom/amap/mapapi/map/ap;
.source "RouteOverlayDraw.java"


# instance fields
.field protected a:I

.field protected b:Lcom/amap/mapapi/core/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ap;-><init>(Lcom/amap/mapapi/map/RouteOverlay;)V

    .line 271
    iput p2, p0, Lcom/amap/mapapi/map/ak;->a:I

    .line 272
    iput-object p3, p0, Lcom/amap/mapapi/map/ak;->b:Lcom/amap/mapapi/core/GeoPoint;

    .line 273
    return-void
.end method

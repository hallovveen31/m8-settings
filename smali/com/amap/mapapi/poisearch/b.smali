.class Lcom/amap/mapapi/poisearch/b;
.super Ljava/lang/Object;
.source "QueryInternal.java"


# instance fields
.field public a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

.field public b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

.field public c:Lcom/amap/mapapi/core/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/poisearch/PoiSearch$Query;Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    .line 13
    iput-object p2, p0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    .line 14
    iput-object p3, p0, Lcom/amap/mapapi/poisearch/b;->c:Lcom/amap/mapapi/core/GeoPoint;

    .line 15
    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    iput-object p2, p0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    iput-object p3, p0, Lcom/amap/mapapi/poisearch/b;->c:Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method

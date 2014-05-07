.class public Lcom/amap/mapapi/route/f;
.super Ljava/lang/Object;
.source "RouteParam.java"


# instance fields
.field public a:Lcom/amap/mapapi/route/Route$FromAndTo;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/route/Route$FromAndTo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amap/mapapi/route/f;->a:Lcom/amap/mapapi/route/Route$FromAndTo;

    .line 21
    iput p2, p0, Lcom/amap/mapapi/route/f;->b:I

    .line 22
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/mapapi/route/f;->a:Lcom/amap/mapapi/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/amap/mapapi/route/f;->c:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amap/mapapi/route/f;->a:Lcom/amap/mapapi/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amap/mapapi/route/f;->a:Lcom/amap/mapapi/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public d()D
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amap/mapapi/route/f;->a:Lcom/amap/mapapi/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    return-wide v0
.end method

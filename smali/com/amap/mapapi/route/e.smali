.class public abstract Lcom/amap/mapapi/route/e;
.super Lcom/amap/mapapi/core/m;
.source "RouteHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/core/m",
        "<",
        "Lcom/amap/mapapi/route/f;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/mapapi/route/Route;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Lcom/amap/mapapi/core/GeoPoint;

.field protected m:Lcom/amap/mapapi/core/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/core/m;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "\u8d77\u70b9"

    iput-object v0, p0, Lcom/amap/mapapi/route/e;->j:Ljava/lang/String;

    .line 16
    const-string v0, "\u7ec8\u70b9"

    iput-object v0, p0, Lcom/amap/mapapi/route/e;->k:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/amap/mapapi/route/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/route/f;

    iget-object v0, v0, Lcom/amap/mapapi/route/f;->a:Lcom/amap/mapapi/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route$FromAndTo;->mFrom:Lcom/amap/mapapi/core/GeoPoint;

    iput-object v0, p0, Lcom/amap/mapapi/route/e;->l:Lcom/amap/mapapi/core/GeoPoint;

    .line 18
    iget-object v0, p0, Lcom/amap/mapapi/route/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/route/f;

    iget-object v0, v0, Lcom/amap/mapapi/route/f;->a:Lcom/amap/mapapi/route/Route$FromAndTo;

    iget-object v0, v0, Lcom/amap/mapapi/route/Route$FromAndTo;->mTo:Lcom/amap/mapapi/core/GeoPoint;

    iput-object v0, p0, Lcom/amap/mapapi/route/e;->m:Lcom/amap/mapapi/core/GeoPoint;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/route/Route;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a([Ljava/lang/String;)[Lcom/amap/mapapi/core/GeoPoint;
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide v9, 0x412e848000000000L

    .line 43
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lcom/amap/mapapi/core/GeoPoint;

    .line 46
    array-length v3, p1

    move v1, v0

    .line 48
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_0

    .line 49
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v9

    double-to-long v4, v4

    .line 50
    add-int/lit8 v6, v1, 0x1

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v9

    double-to-long v6, v6

    .line 51
    new-instance v8, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v8, v6, v7, v4, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    aput-object v8, v2, v0

    .line 52
    add-int/lit8 v1, v1, 0x2

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-object v2
.end method

.method protected synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/route/e;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

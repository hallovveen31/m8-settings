.class public Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchBound"
.end annotation


# static fields
.field public static final BOUND_SHAPE:Ljava/lang/String; = "bound"

.field public static final ELLIPSE_SHAPE:Ljava/lang/String; = "Ellipse"

.field public static final POLYGON_SHAPE:Ljava/lang/String; = "Polygon"

.field public static final RECTANGLE_SHAPE:Ljava/lang/String; = "Rectangle"


# instance fields
.field private a:Lcom/amap/mapapi/core/GeoPoint;

.field private b:Lcom/amap/mapapi/core/GeoPoint;

.field private c:I

.field private d:Lcom/amap/mapapi/core/GeoPoint;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/core/GeoPoint;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bound"

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    iput p2, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->c:I

    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/mapapi/core/GeoPoint;

    invoke-static {p2}, Lcom/amap/mapapi/core/e;->b(I)I

    move-result v0

    invoke-static {p2}, Lcom/amap/mapapi/core/e;->b(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/mapapi/core/GeoPoint;II)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Rectangle"

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/map/MapView;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Rectangle"

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v0

    sget v1, Lcom/amap/mapapi/core/c;->j:I

    invoke-interface {v0, v3, v1}, Lcom/amap/mapapi/map/Projection;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v1

    sget v2, Lcom/amap/mapapi/core/c;->i:I

    invoke-interface {v1, v2, v3}, Lcom/amap/mapapi/map/Projection;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Polygon"

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->f:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/amap/mapapi/core/GeoPoint;II)V
    .locals 11

    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, p3, 0x2

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v4

    new-instance v6, Lcom/amap/mapapi/core/GeoPoint;

    int-to-long v7, v0

    sub-long v7, v2, v7

    int-to-long v9, v1

    sub-long v9, v4, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    new-instance v7, Lcom/amap/mapapi/core/GeoPoint;

    int-to-long v8, v0

    add-long/2addr v2, v8

    int-to-long v0, v1

    add-long/2addr v0, v4

    invoke-direct {v7, v2, v3, v0, v1}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    invoke-direct {p0, v6, v7}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)V

    return-void
.end method

.method private a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 9

    const-wide/16 v7, 0x2

    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    iput-object p2, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid rect "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    div-long/2addr v1, v7

    iget-object v3, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v5}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v5

    add-long/2addr v3, v5

    div-long/2addr v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method


# virtual methods
.method public getCenter()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getLatSpanInMeter()I
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(I)I

    move-result v0

    return v0
.end method

.method public getLonSpanInMeter()I
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(I)I

    move-result v0

    return v0
.end method

.method public getLowerLeft()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getPolygonShape()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->f:Ljava/util/List;

    return-object v0
.end method

.method public getRange()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->c:I

    return v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperRight()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

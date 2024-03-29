.class public Lcom/amap/mapapi/route/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private a:Lcom/amap/mapapi/core/GeoPoint;

.field private b:Lcom/amap/mapapi/core/GeoPoint;

.field protected mLength:I

.field protected mRoute:Lcom/amap/mapapi/route/Route;

.field protected mShapes:[Lcom/amap/mapapi/core/GeoPoint;

.field protected strTimeConsume:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/route/Segment;->a:Lcom/amap/mapapi/core/GeoPoint;

    iput-object v0, p0, Lcom/amap/mapapi/route/Segment;->b:Lcom/amap/mapapi/core/GeoPoint;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/route/Segment;->strTimeConsume:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 9

    const v1, 0x7fffffff

    const/high16 v2, -0x8000

    iget-object v7, p0, Lcom/amap/mapapi/route/Segment;->mShapes:[Lcom/amap/mapapi/core/GeoPoint;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    move v5, v2

    move v4, v1

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v0, v7, v6

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    if-le v3, v5, :cond_0

    move v5, v3

    :cond_0
    if-ge v3, v4, :cond_4

    :goto_1
    if-le v0, v2, :cond_1

    move v2, v0

    :cond_1
    if-ge v0, v1, :cond_3

    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v4, v3

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v0, v1, v4}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/route/Segment;->a:Lcom/amap/mapapi/core/GeoPoint;

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v0, v2, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/route/Segment;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-void

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private b()I
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p0}, Lcom/amap/mapapi/route/Route;->getSegmentIndex(Lcom/amap/mapapi/route/Segment;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this segment is not in the route !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method


# virtual methods
.method public getConsumeTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->strTimeConsume:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->mShapes:[Lcom/amap/mapapi/core/GeoPoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->mShapes:[Lcom/amap/mapapi/core/GeoPoint;

    iget-object v1, p0, Lcom/amap/mapapi/route/Segment;->mShapes:[Lcom/amap/mapapi/core/GeoPoint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/route/Segment;->mLength:I

    return v0
.end method

.method public getLowerLeftPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->a:Lcom/amap/mapapi/core/GeoPoint;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/mapapi/route/Segment;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->a:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getNext()Lcom/amap/mapapi/route/Segment;
    .locals 2

    invoke-direct {p0}, Lcom/amap/mapapi/route/Segment;->b()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/route/Segment;->mRoute:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/route/Segment;->mRoute:Lcom/amap/mapapi/route/Route;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrev()Lcom/amap/mapapi/route/Segment;
    .locals 2

    invoke-direct {p0}, Lcom/amap/mapapi/route/Segment;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/route/Segment;->mRoute:Lcom/amap/mapapi/route/Route;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    goto :goto_0
.end method

.method public getShapes()[Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->mShapes:[Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getUpperRightPoint()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->b:Lcom/amap/mapapi/core/GeoPoint;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/mapapi/route/Segment;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/route/Segment;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public setConsumeTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/Segment;->strTimeConsume:Ljava/lang/String;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/route/Segment;->mLength:I

    return-void
.end method

.method public setRoute(Lcom/amap/mapapi/route/Route;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/Segment;->mRoute:Lcom/amap/mapapi/route/Route;

    return-void
.end method

.method public setShapes([Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/Segment;->mShapes:[Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method

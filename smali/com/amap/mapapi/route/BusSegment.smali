.class public Lcom/amap/mapapi/route/BusSegment;
.super Lcom/amap/mapapi/route/Segment;
.source "BusSegment.java"


# instance fields
.field protected mFirstStation:Ljava/lang/String;

.field protected mLastStation:Ljava/lang/String;

.field protected mLine:Ljava/lang/String;

.field protected mPassStopName:[Ljava/lang/String;

.field protected mPassStopPos:[Lcom/amap/mapapi/core/GeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/mapapi/route/Segment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstStationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/BusSegment;->mFirstStation:Ljava/lang/String;

    return-object v0
.end method

.method public getLastStationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/BusSegment;->mLastStation:Ljava/lang/String;

    return-object v0
.end method

.method public getLineName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/BusSegment;->mLine:Ljava/lang/String;

    return-object v0
.end method

.method public getOffStationName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/mapapi/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOnStationName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPassStopName()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    return-object v0
.end method

.method public getStopNumber()I
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/BusSegment;->mPassStopPos:[Lcom/amap/mapapi/core/GeoPoint;

    array-length v0, v0

    return v0
.end method

.method public setFirstStationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/BusSegment;->mFirstStation:Ljava/lang/String;

    return-void
.end method

.method public setLastStationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/BusSegment;->mLastStation:Ljava/lang/String;

    return-void
.end method

.method public setLineName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/BusSegment;->mLine:Ljava/lang/String;

    return-void
.end method

.method public setPassStopName([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/BusSegment;->mPassStopName:[Ljava/lang/String;

    return-void
.end method

.method public setPassStopPos([Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/route/BusSegment;->mPassStopPos:[Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method

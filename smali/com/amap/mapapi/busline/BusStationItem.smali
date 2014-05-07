.class public Lcom/amap/mapapi/busline/BusStationItem;
.super Ljava/lang/Object;
.source "BusStationItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/mapapi/core/GeoPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusStationItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getmCoord()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusStationItem;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusStationItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getmSpell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusStationItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getmStationNum()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusStationItem;->e:I

    return v0
.end method

.method public setmCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusStationItem;->d:Ljava/lang/String;

    return-void
.end method

.method public setmCoord(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusStationItem;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusStationItem;->a:Ljava/lang/String;

    return-void
.end method

.method public setmSpell(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusStationItem;->c:Ljava/lang/String;

    return-void
.end method

.method public setmStationNum(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/busline/BusStationItem;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusStationItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Coord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusStationItem;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Spell: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusStationItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusStationItem;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " StationNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/mapapi/busline/BusStationItem;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

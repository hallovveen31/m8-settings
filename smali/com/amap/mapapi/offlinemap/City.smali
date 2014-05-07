.class public Lcom/amap/mapapi/offlinemap/City;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/offlinemap/City;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/amap/mapapi/offlinemap/City;->setCity(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/amap/mapapi/offlinemap/City;->setInitial(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amap/mapapi/offlinemap/City;->c:Ljava/lang/String;

    invoke-virtual {p0, p5}, Lcom/amap/mapapi/offlinemap/City;->setPinyin(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    check-cast p1, Lcom/amap/mapapi/offlinemap/City;

    iget-object v1, p1, Lcom/amap/mapapi/offlinemap/City;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/amap/mapapi/offlinemap/City;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/offlinemap/City;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/City;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/City;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInitial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/City;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/City;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/offlinemap/City;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/City;->b:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/City;->c:Ljava/lang/String;

    return-void
.end method

.method public setInitial(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/City;->d:Ljava/lang/String;

    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/City;->e:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/offlinemap/City;->a:Ljava/lang/String;

    return-void
.end method

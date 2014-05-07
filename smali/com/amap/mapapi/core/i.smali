.class public Lcom/amap/mapapi/core/i;
.super Lcom/amap/mapapi/core/m;
.source "LocTansServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/core/m",
        "<",
        "Lcom/amap/mapapi/core/GeoPoint$b;",
        "Lcom/amap/mapapi/core/GeoPoint$b;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Lcom/amap/mapapi/core/GeoPoint$b;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/core/m;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/mapapi/core/i;->i:Lcom/amap/mapapi/core/GeoPoint$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/mapapi/core/GeoPoint$b;
    .locals 6

    iget-object v0, p0, Lcom/amap/mapapi/core/i;->i:Lcom/amap/mapapi/core/GeoPoint$b;

    iget-wide v0, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    iget-object v2, p0, Lcom/amap/mapapi/core/i;->i:Lcom/amap/mapapi/core/GeoPoint$b;

    iget-wide v2, v2, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/util/Shifting;->table_offset(DD)[D

    move-result-object v0

    new-instance v1, Lcom/amap/mapapi/core/GeoPoint$b;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/mapapi/core/GeoPoint$b;-><init>(DD)V

    return-object v1
.end method

.method protected a(Ljava/io/InputStream;)Lcom/amap/mapapi/core/GeoPoint$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    iget-object v2, p0, Lcom/amap/mapapi/core/i;->i:Lcom/amap/mapapi/core/GeoPoint$b;

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/mapapi/map/i;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    const-string v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/amap/mapapi/core/GeoPoint$b;->b:D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v2
.end method

.method protected synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/core/i;->a(Ljava/io/InputStream;)Lcom/amap/mapapi/core/GeoPoint$b;

    move-result-object v0

    return-object v0
.end method

.method protected d()[B
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "config=RGC&resType=json&flag=true&enc=utf-8&coors="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint$b;

    iget-wide v2, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint$b;

    iget-wide v2, v0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/core/j;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

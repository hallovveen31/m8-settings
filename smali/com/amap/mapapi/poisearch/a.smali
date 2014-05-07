.class public Lcom/amap/mapapi/poisearch/a;
.super Lcom/amap/mapapi/core/m;
.source "PoiSearchServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/core/m",
        "<",
        "Lcom/amap/mapapi/poisearch/b;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/mapapi/core/PoiItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/poisearch/b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/core/m;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/poisearch/a;->i:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/poisearch/a;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/a;->l:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    return v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/core/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/mapapi/map/i;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/amap/mapapi/core/e;->c(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "E0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v0, "count"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/poisearch/a;->k:I

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "pguid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v1, "y"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v1, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v1, "name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "address"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/amap/mapapi/core/PoiItem;

    new-instance v12, Lcom/amap/mapapi/core/GeoPoint;

    invoke-static {v8, v9}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v8

    invoke-static {v6, v7}, Lcom/amap/mapapi/core/e;->a(D)J

    move-result-wide v6

    invoke-direct {v12, v8, v9, v6, v7}, Lcom/amap/mapapi/core/GeoPoint;-><init>(JJ)V

    invoke-direct {v11, v0, v12, v1, v10}, Lcom/amap/mapapi/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/mapapi/core/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adcode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/mapapi/core/PoiItem;->setAdCode(Ljava/lang/String;)V

    const-string v0, "tel"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/mapapi/core/PoiItem;->setTel(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "typecode"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/mapapi/core/PoiItem;->setTypeCode(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    const-string v0, "type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    aget-object v1, v6, v0

    const/4 v0, 0x1

    :goto_4
    array-length v7, v6

    if-ge v0, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v6, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1
    invoke-virtual {v11, v1}, Lcom/amap/mapapi/core/PoiItem;->setTypeDes(Ljava/lang/String;)V

    const-string v0, "xml"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/mapapi/core/PoiItem;->setXmlNode(Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/amap/mapapi/core/PoiItem;->setDistance(I)V

    const-string v0, "imageid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/amap/mapapi/core/PoiItem;->setImageId(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :cond_2
    move-object v0, v2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/poisearch/a;->i:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->k:I

    return v0
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/poisearch/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_1

    :goto_0
    if-gtz v0, :cond_0

    const/16 v0, 0x14

    :cond_0
    iput v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public c()Lcom/amap/mapapi/poisearch/PoiSearch$Query;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    return-object v0
.end method

.method protected d()[B
    .locals 13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    if-nez v0, :cond_3

    const-string v0, "sid=1000"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->getCity()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/amap/mapapi/poisearch/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "&city="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "&keyword="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->c:Lcom/amap/mapapi/core/GeoPoint;

    if-eqz v0, :cond_1

    const-string v0, "&x="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->c:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "&y="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->c:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "&number="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&batch="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->i:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&sort="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->getSortMode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    const-string v0, "&resType=json&encode=utf-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v0, ""

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v4, "bound"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sid=1002"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->getCity()Ljava/lang/String;

    move-result-object v0

    :try_start_3
    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :goto_4
    invoke-direct {p0, v0}, Lcom/amap/mapapi/poisearch/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "&city="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "&keyword="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&number="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&batch="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->i:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&cenX="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "&cenY="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "&range="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getRange()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&sort="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->a:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->getSortMode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string v0, ""

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Rectangle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "sid=1005"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v4}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v11

    const-string v0, "&keyword="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&number="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&batch="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->i:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&regionType=rectangle"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&region="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Ellipse"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sid=1005"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v4}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v11

    const-string v0, "&keyword="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&number="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&batch="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->i:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&regionType=ellipse"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&region="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Polygon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sid=1005"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&keyword="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&number="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->j:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&batch="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amap/mapapi/poisearch/a;->i:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&regionType=polygon"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&region="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;->getPolygonShape()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/core/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gss/simple?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/core/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v0, v0, Lcom/amap/mapapi/poisearch/b;->b:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/a;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.class public Lcom/amap/mapapi/busline/a;
.super Lcom/amap/mapapi/core/m;
.source "BusSearchServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/mapapi/core/m",
        "<",
        "Lcom/amap/mapapi/busline/BusQuery;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/mapapi/busline/BusLineItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/busline/BusQuery;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/core/m;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/busline/a;->i:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/mapapi/busline/a;->j:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/busline/a;->k:I

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 60
    const-string v0, ",|;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 64
    new-instance v3, Lcom/amap/mapapi/core/GeoPoint;

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v7

    double-to-int v4, v4

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    .line 67
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 69
    :cond_0
    return-object v2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/amap/mapapi/busline/a;->j:I

    return v0
.end method

.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    const/4 v2, 0x0

    .line 201
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/mapapi/map/i;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :try_start_1
    invoke-static {v1}, Lcom/amap/mapapi/core/e;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 206
    :goto_0
    invoke-static {v1}, Lcom/amap/mapapi/core/e;->c(Ljava/lang/String;)V

    .line 208
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v1, "count"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/amap/mapapi/busline/a;->k:I

    .line 210
    const-string v1, "list"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 211
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 212
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 213
    new-instance v5, Lcom/amap/mapapi/busline/BusLineItem;

    invoke-direct {v5}, Lcom/amap/mapapi/busline/BusLineItem;-><init>()V

    .line 215
    const-string v6, "length"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmLength(F)V

    .line 216
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmName(Ljava/lang/String;)V

    .line 218
    const-string v6, "description"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmDescription(Ljava/lang/String;)V

    .line 219
    const-string v6, "status"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmStatus(I)V

    .line 220
    const-string v6, "speed"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 221
    const-string v6, "speed"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmSpeed(F)V

    .line 222
    :cond_0
    const-string v6, "xys"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/amap/mapapi/busline/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmXys(Ljava/util/ArrayList;)V

    .line 223
    const-string v6, "line_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmLineId(Ljava/lang/String;)V

    .line 224
    const-string v6, "key_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmKeyName(Ljava/lang/String;)V

    .line 225
    const-string v6, "front_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmFrontName(Ljava/lang/String;)V

    .line 226
    const-string v6, "terminal_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmTerminalName(Ljava/lang/String;)V

    .line 227
    const-string v6, "start_time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmStartTime(Ljava/lang/String;)V

    .line 228
    const-string v6, "end_time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmEndTime(Ljava/lang/String;)V

    .line 229
    const-string v6, "company"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmCompany(Ljava/lang/String;)V

    .line 230
    const-string v6, "basic_price"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmBasicPrice(F)V

    .line 231
    const-string v6, "total_price"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmTotalPrice(F)V

    .line 232
    const-string v6, "commutation_ticket"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmCommunicationTicket(Z)V

    .line 234
    const-string v6, "auto"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmAuto(Z)V

    .line 235
    const-string v6, "ic_card"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmIcCard(Z)V

    .line 236
    const-string v6, "loop"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmLoop(Z)V

    .line 237
    const-string v6, "double_deck"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmDoubleDeck(Z)V

    .line 238
    const-string v6, "data_source"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmDataSource(I)V

    .line 239
    const-string v6, "air"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmAir(Z)V

    .line 240
    const-string v6, "front_spell"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmFrontSpell(Ljava/lang/String;)V

    .line 241
    const-string v6, "terminal_spell"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmTerminalSpell(Ljava/lang/String;)V

    .line 242
    const-string v6, "express_way"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/mapapi/busline/BusLineItem;->setmExpressWay(Z)V

    .line 243
    const-string v6, "stationdes"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 244
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 245
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 246
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_1

    .line 247
    new-instance v9, Lcom/amap/mapapi/busline/BusStationItem;

    invoke-direct {v9}, Lcom/amap/mapapi/busline/BusStationItem;-><init>()V

    .line 248
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 249
    const-string v11, "code"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/mapapi/busline/BusStationItem;->setmCode(Ljava/lang/String;)V

    .line 250
    const-string v11, "xy"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 251
    new-instance v12, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L

    mul-double/2addr v13, v15

    double-to-int v13, v13

    const/4 v14, 0x0

    aget-object v11, v11, v14

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L

    mul-double v14, v14, v16

    double-to-int v11, v14

    invoke-direct {v12, v13, v11}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    .line 254
    invoke-virtual {v9, v12}, Lcom/amap/mapapi/busline/BusStationItem;->setmCoord(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 255
    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/mapapi/busline/BusStationItem;->setmName(Ljava/lang/String;)V

    .line 256
    const-string v11, "stationNum"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/amap/mapapi/busline/BusStationItem;->setmStationNum(I)V

    .line 257
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 203
    :catch_0
    move-exception v1

    move-object/from16 v18, v1

    move-object v1, v2

    move-object/from16 v2, v18

    .line 204
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 259
    :cond_1
    :try_start_3
    invoke-virtual {v5, v8}, Lcom/amap/mapapi/busline/BusLineItem;->setmStations(Ljava/util/ArrayList;)V

    .line 260
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 211
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 262
    :catch_1
    move-exception v1

    .line 263
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 265
    :cond_2
    return-object v3

    .line 203
    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/amap/mapapi/busline/a;->i:I

    .line 31
    return-void
.end method

.method public b()Lcom/amap/mapapi/busline/BusQuery;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/mapapi/busline/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/busline/BusQuery;

    return-object v0
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
    .line 18
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/busline/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    const/16 v0, 0x14

    .line 34
    if-le p1, v0, :cond_1

    .line 37
    :goto_0
    if-gtz v0, :cond_0

    .line 38
    const/16 v0, 0xa

    .line 40
    :cond_0
    iput v0, p0, Lcom/amap/mapapi/busline/a;->j:I

    .line 41
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/amap/mapapi/busline/a;->k:I

    return v0
.end method

.method protected d()[B
    .locals 3

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const-string v0, "encode=utf-8"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "&resType=json&city="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lcom/amap/mapapi/busline/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/busline/BusQuery;

    invoke-virtual {v0}, Lcom/amap/mapapi/busline/BusQuery;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/amap/mapapi/busline/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const-string v0, "total"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/busline/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/busline/BusQuery;

    invoke-virtual {v0}, Lcom/amap/mapapi/busline/BusQuery;->getCategory()Lcom/amap/mapapi/busline/BusQuery$SearchType;

    move-result-object v0

    sget-object v1, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_LINE_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    if-ne v0, v1, :cond_2

    .line 167
    const-string v0, "&sid=8004"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "&busName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amap/mapapi/busline/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/busline/BusQuery;

    invoke-virtual {v0}, Lcom/amap/mapapi/busline/BusQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 182
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "&number="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v0, p0, Lcom/amap/mapapi/busline/a;->j:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, "&batch="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget v0, p0, Lcom/amap/mapapi/busline/a;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 160
    :cond_1
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/busline/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/busline/BusQuery;

    invoke-virtual {v0}, Lcom/amap/mapapi/busline/BusQuery;->getCategory()Lcom/amap/mapapi/busline/BusQuery$SearchType;

    move-result-object v0

    sget-object v1, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_ID:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    if-ne v0, v1, :cond_3

    .line 170
    const-string v0, "&sid=8085"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, "&ids="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/busline/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/busline/BusQuery;

    invoke-virtual {v0}, Lcom/amap/mapapi/busline/BusQuery;->getCategory()Lcom/amap/mapapi/busline/BusQuery$SearchType;

    move-result-object v0

    sget-object v1, Lcom/amap/mapapi/busline/BusQuery$SearchType;->BY_STATION_NAME:Lcom/amap/mapapi/busline/BusQuery$SearchType;

    if-ne v0, v1, :cond_0

    .line 173
    const-string v0, "&sid=8086"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, "&stationName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :catch_1
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/core/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bus/simple"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

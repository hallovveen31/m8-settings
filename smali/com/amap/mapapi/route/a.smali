.class Lcom/amap/mapapi/route/a;
.super Lcom/amap/mapapi/route/e;
.source "BusHandler.java"


# instance fields
.field i:Ljava/util/List;
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
.method public constructor <init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/route/e;-><init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/route/Segment;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/amap/mapapi/route/Segment;

    invoke-direct {v0}, Lcom/amap/mapapi/route/Segment;-><init>()V

    .line 47
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amap/mapapi/core/GeoPoint;

    .line 48
    invoke-virtual {v0, v1}, Lcom/amap/mapapi/route/Segment;->setShapes([Lcom/amap/mapapi/core/GeoPoint;)V

    .line 49
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 50
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 52
    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v2

    sub-int/2addr v1, v2

    .line 53
    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v3

    sub-int/2addr v2, v3

    .line 54
    mul-int/2addr v2, v2

    mul-int/2addr v1, v1

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 55
    invoke-static {v1}, Lcom/amap/mapapi/core/e;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/route/Segment;->setLength(I)V

    .line 56
    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/route/Segment;->setLength(I)V

    .line 59
    :cond_0
    return-object v0
.end method

.method private a(Ljava/util/LinkedList;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amap/mapapi/route/Segment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/route/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 26
    add-int/lit8 v0, v4, -0x1

    new-array v5, v0, [Lcom/amap/mapapi/route/Segment;

    move v3, v2

    .line 27
    :goto_0
    add-int/lit8 v0, v4, -0x2

    if-gt v3, v0, :cond_0

    .line 28
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    .line 29
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/route/Segment;

    .line 30
    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getLastPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Segment;->getFirstPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/route/a;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    aput-object v0, v5, v3

    .line 27
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 33
    :goto_1
    add-int/lit8 v1, v4, -0x2

    if-gt v0, v1, :cond_1

    .line 34
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v5, v0

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/route/a;->l:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getFirstPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/amap/mapapi/route/a;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/Segment;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Segment;->getLastPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/route/a;->m:Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/route/a;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 42
    return-object p1
.end method

.method private a(Lcom/amap/mapapi/route/BusSegment;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1, p2}, Lcom/amap/mapapi/route/BusSegment;->setLineName(Ljava/lang/String;)V

    .line 64
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/route/BusSegment;->setFirstStationName(Ljava/lang/String;)V

    .line 65
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/route/BusSegment;->setLastStationName(Ljava/lang/String;)V

    .line 67
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 68
    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 69
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    if-gt v1, v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amap/mapapi/route/BusSegment;->setLineName(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/amap/mapapi/route/BusSegment;->setFirstStationName(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/route/BusSegment;->setLastStationName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([Lcom/amap/mapapi/core/GeoPoint;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 90
    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 91
    aget-object v2, p2, v1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 92
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 93
    new-instance v4, Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v4, v3, v2}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    aput-object v4, p1, v0

    .line 94
    add-int/lit8 v1, v1, 0x2

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 85
    add-int/lit8 v1, v0, 0x1

    aget-object v2, p2, v0

    aput-object v2, p1, v1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const/4 v3, 0x0

    .line 154
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/mapapi/map/i;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-static {v2}, Lcom/amap/mapapi/core/e;->c(Ljava/lang/String;)V

    .line 160
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v2, "list"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 162
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_0

    .line 163
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 164
    const-string v3, "segmentList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 165
    new-instance v8, Lcom/amap/mapapi/route/Route;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/route/a;->b:Ljava/lang/Object;

    check-cast v2, Lcom/amap/mapapi/route/f;

    iget v2, v2, Lcom/amap/mapapi/route/f;->b:I

    invoke-direct {v8, v2}, Lcom/amap/mapapi/route/Route;-><init>(I)V

    .line 166
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 167
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 168
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 170
    new-instance v10, Lcom/amap/mapapi/route/BusSegment;

    invoke-direct {v10}, Lcom/amap/mapapi/route/BusSegment;-><init>()V

    .line 171
    const-string v11, ""

    .line 172
    const-string v11, ""

    .line 180
    const-string v11, "startName"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    const-string v12, "endName"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 182
    const-string v13, "busName"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/amap/mapapi/route/a;->a(Lcom/amap/mapapi/route/BusSegment;Ljava/lang/String;)V

    .line 183
    const-string v13, "driverLength"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/amap/mapapi/route/BusSegment;->setLength(I)V

    .line 184
    const-string v13, "passDepotCount"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 185
    add-int/lit8 v14, v13, 0x2

    new-array v14, v14, [Ljava/lang/String;

    .line 186
    add-int/lit8 v15, v13, 0x2

    new-array v15, v15, [Lcom/amap/mapapi/core/GeoPoint;

    .line 187
    const-string v16, "passDepotName"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 188
    const-string v17, "passDepotCoordinate"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ",|;"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 189
    const-string v18, "coordinateList"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v18, ",|;"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/amap/mapapi/route/a;->a([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/amap/mapapi/route/a;->a([Lcom/amap/mapapi/core/GeoPoint;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/route/a;->a([Ljava/lang/String;)[Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/amap/mapapi/route/BusSegment;->setShapes([Lcom/amap/mapapi/core/GeoPoint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    :goto_4
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v10}, Lcom/amap/mapapi/route/BusSegment;->getFirstPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v16

    aput-object v16, v15, v2

    .line 203
    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v10}, Lcom/amap/mapapi/route/BusSegment;->getLastPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v16

    aput-object v16, v15, v2

    .line 204
    const/4 v2, 0x0

    aput-object v11, v14, v2

    .line 205
    add-int/lit8 v2, v13, 0x1

    aput-object v12, v14, v2

    .line 206
    invoke-virtual {v10, v15}, Lcom/amap/mapapi/route/BusSegment;->setPassStopPos([Lcom/amap/mapapi/core/GeoPoint;)V

    .line 207
    invoke-virtual {v10, v14}, Lcom/amap/mapapi/route/BusSegment;->setPassStopName([Ljava/lang/String;)V

    .line 208
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 167
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 155
    :catch_0
    move-exception v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    goto/16 :goto_0

    .line 194
    :catch_1
    move-exception v16

    .line 195
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 222
    :catch_2
    move-exception v2

    .line 223
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 228
    :cond_0
    return-object v5

    .line 199
    :catch_3
    move-exception v2

    .line 200
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 210
    :cond_1
    invoke-virtual {v8, v9}, Lcom/amap/mapapi/route/Route;->a(Ljava/util/List;)V

    .line 211
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amap/mapapi/route/a;->a(Lcom/amap/mapapi/route/Route;)V

    .line 213
    invoke-virtual {v8}, Lcom/amap/mapapi/route/Route;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/mapapi/route/Segment;

    .line 214
    invoke-virtual {v2, v8}, Lcom/amap/mapapi/route/Segment;->setRoute(Lcom/amap/mapapi/route/Route;)V

    goto :goto_5

    .line 216
    :cond_2
    if-eqz v8, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/route/a;->j:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/amap/mapapi/route/Route;->setStartPlace(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/mapapi/route/a;->k:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/amap/mapapi/route/Route;->setTargetPlace(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 162
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1
.end method

.method protected a(Lcom/amap/mapapi/route/Route;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/amap/mapapi/route/Route;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/amap/mapapi/route/a;->a(Ljava/util/LinkedList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/route/Route;->a(Ljava/util/List;)V

    .line 106
    return-void
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
    .line 17
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/route/a;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()[B
    .locals 9

    .prologue
    const-wide v7, 0x412e848000000000L

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v0, "sid=8001"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v0, "&encode=utf-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&xys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/mapapi/route/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/route/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/f;->a()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/mapapi/route/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/route/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/f;->c()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcom/amap/mapapi/route/a;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/route/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/amap/mapapi/route/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 132
    const-string v1, ""

    .line 133
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 135
    iget-object v0, p0, Lcom/amap/mapapi/route/a;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint;

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amap/mapapi/route/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/route/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/f;->b()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/mapapi/route/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/route/f;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/f;->d()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, "&resType=json"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&RouteType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/mapapi/route/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/amap/mapapi/route/f;

    iget v0, v0, Lcom/amap/mapapi/route/f;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, "&per="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/16 v0, 0x32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
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

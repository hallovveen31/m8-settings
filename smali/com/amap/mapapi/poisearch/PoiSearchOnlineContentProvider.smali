.class public Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;
.super Landroid/content/ContentProvider;
.source "PoiSearchOnlineContentProvider.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final d:Landroid/content/UriMatcher;


# instance fields
.field private b:Lcom/amap/mapapi/poisearch/PoiSearch;

.field private c:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "full_address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "distance"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->a:[Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.amap.poisearch.provider.nearby"

    const-string v2, "search_poi/online"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    .line 54
    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.amap.poisearch.provider.nearby"

    return-object v0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {p0}, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/poisearch/PoiSearch;-><init>(Landroid/content/Context;Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    .line 84
    invoke-virtual {p0}, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    sget-object v1, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 275
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 94
    :pswitch_0
    if-eqz p3, :cond_1

    .line 95
    const-string v1, "&"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_2
    const/4 v8, 0x0

    .line 101
    const/16 v7, 0x14

    .line 102
    const-string v6, ""

    .line 103
    const-wide/16 v4, 0x0

    .line 104
    const-wide/16 v2, 0x0

    .line 106
    const/4 v10, 0x0

    .line 107
    if-eqz p4, :cond_0

    .line 108
    array-length v11, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_0

    aget-object v12, v1, v9

    .line 109
    move-object/from16 v0, p4

    array-length v13, v0

    if-lt v10, v13, :cond_2

    .line 152
    :cond_0
    if-nez v8, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing Param keyword."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "category=?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "count=?"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "keyword=?"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "latitude=?"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "longitude=?"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "radius=?"

    aput-object v3, v1, v2

    goto :goto_2

    .line 111
    :cond_2
    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 112
    const-string v13, "category"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 114
    :try_start_0
    aget-object v8, p4, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 148
    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 108
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 115
    :catch_0
    move-exception v8

    .line 116
    const/4 v8, 0x0

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    const-string v13, "count"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 120
    :try_start_1
    aget-object v7, p4, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_4

    .line 121
    :catch_1
    move-exception v7

    .line 122
    const/16 v7, 0x14

    .line 123
    goto :goto_4

    .line 124
    :cond_5
    const-string v13, "keyword"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 125
    aget-object v6, p4, v10

    goto :goto_4

    .line 126
    :cond_6
    const-string v13, "latitude"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 128
    :try_start_2
    aget-object v4, p4, v10

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v4

    goto :goto_4

    .line 129
    :catch_2
    move-exception v4

    .line 130
    const-wide/16 v4, 0x0

    .line 131
    goto :goto_4

    .line 132
    :cond_7
    const-string v13, "longitude"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 134
    :try_start_3
    aget-object v2, p4, v10

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    goto :goto_4

    .line 135
    :catch_3
    move-exception v2

    .line 136
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 157
    :cond_8
    packed-switch v8, :pswitch_data_1

    .line 192
    const-string v1, ""

    .line 198
    :goto_5
    :try_start_4
    new-instance v8, Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-direct {v8, v6, v1}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 202
    if-eqz p5, :cond_9

    const-string v1, "important"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 203
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->setSortMode(I)V

    .line 205
    :cond_a
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v1, v8}, Lcom/amap/mapapi/poisearch/PoiSearch;->setQuery(Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V

    .line 206
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v1, v7}, Lcom/amap/mapapi/poisearch/PoiSearch;->setPageSize(I)V

    .line 208
    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_d

    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_d

    .line 209
    new-instance v1, Lcom/amap/mapapi/core/GeoPoint;

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-direct {v1, v4, v2}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    .line 231
    :goto_6
    iget-object v2, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v2, v1}, Lcom/amap/mapapi/poisearch/PoiSearch;->setCenter(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 233
    :try_start_5
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v1}, Lcom/amap/mapapi/poisearch/PoiSearch;->searchPOI()Lcom/amap/mapapi/poisearch/PoiPagedResult;

    move-result-object v1

    .line 234
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/poisearch/PoiPagedResult;->getPage(I)Ljava/util/List;

    move-result-object v1

    .line 235
    if-nez p2, :cond_b

    .line 236
    sget-object p2, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->a:[Ljava/lang/String;

    .line 238
    :cond_b
    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 239
    new-instance v2, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 240
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/core/PoiItem;

    .line 241
    const/4 v4, 0x0

    .line 242
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v6, v3, [Ljava/lang/String;

    .line 243
    move-object/from16 v0, p2

    array-length v7, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v7, :cond_15

    aget-object v8, p2, v3

    .line 244
    const-string v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 245
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 257
    :cond_c
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 159
    :pswitch_1
    const-string v1, ""

    goto/16 :goto_5

    .line 162
    :pswitch_2
    const-string v1, "\u52a0\u6cb9\u7ad9"

    goto/16 :goto_5

    .line 165
    :pswitch_3
    const-string v1, "\u4e2d\u9910\u5385|\u5916\u56fd\u9910\u5385|\u5feb\u9910\u5385"

    goto/16 :goto_5

    .line 168
    :pswitch_4
    const-string v1, "\u505c\u8f66\u573a"

    goto/16 :goto_5

    .line 171
    :pswitch_5
    const-string v1, "\u5496\u5561\u5385"

    goto/16 :goto_5

    .line 174
    :pswitch_6
    const-string v1, "\u9152\u5427"

    goto/16 :goto_5

    .line 177
    :pswitch_7
    const-string v1, "ATM"

    goto/16 :goto_5

    .line 180
    :pswitch_8
    const-string v1, "\u8d85\u7ea7\u5e02\u573a|\u4fbf\u6c11\u5546\u5e97/\u4fbf\u5229\u5e97"

    goto/16 :goto_5

    .line 183
    :pswitch_9
    const-string v1, "\u836f\u5e97"

    goto/16 :goto_5

    .line 186
    :pswitch_a
    const-string v1, "\u8d2d\u7269\u670d\u52a1"

    goto/16 :goto_5

    .line 189
    :pswitch_b
    const-string v1, "\u7efc\u5408\u533b\u9662|\u4e13\u79d1\u533b\u9662|\u8bca\u6240|\u516c\u5b89\u8b66\u5bdf"

    goto/16 :goto_5

    .line 199
    :catch_4
    move-exception v1

    .line 200
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 214
    :cond_d
    :try_start_6
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 215
    if-nez v1, :cond_e

    .line 216
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    :cond_e
    move-object v2, v1

    .line 222
    :goto_a
    if-eqz v2, :cond_f

    .line 223
    new-instance v1, Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-direct {v1, v3, v2}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    goto/16 :goto_6

    .line 219
    :catch_5
    move-exception v1

    .line 220
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_a

    .line 226
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 246
    :cond_10
    :try_start_7
    const-string v9, "full_address"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 247
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v4

    goto/16 :goto_9

    .line 268
    :catch_6
    move-exception v1

    goto/16 :goto_0

    .line 248
    :cond_11
    const-string v9, "latitude"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 249
    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    goto/16 :goto_9

    .line 250
    :cond_12
    const-string v9, "longitude"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 251
    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    goto/16 :goto_9

    .line 252
    :cond_13
    const-string v9, "distance"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 253
    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getDistance()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    goto/16 :goto_9

    .line 254
    :cond_14
    const-string v9, "icon_path"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 255
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getImageId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v4

    goto/16 :goto_9

    .line 259
    :cond_15
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_7

    :cond_16
    move-object v1, v2

    .line 263
    goto/16 :goto_1

    .line 266
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

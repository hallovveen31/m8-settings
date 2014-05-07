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

    const/4 v3, 0x0

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

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    sget-object v0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.amap.poisearch.provider.nearby"

    const-string v2, "search_poi/online"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.amap.poisearch.provider.nearby"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 3

    new-instance v0, Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/poisearch/PoiSearch;-><init>(Landroid/content/Context;Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    sget-object v1, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :pswitch_0
    if-eqz p3, :cond_1

    const-string v1, "&"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v8, 0x0

    const/16 v7, 0x14

    const-string v6, ""

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    if-eqz p4, :cond_0

    array-length v11, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_0

    aget-object v12, v1, v9

    move-object/from16 v0, p4

    array-length v13, v0

    if-lt v10, v13, :cond_2

    :cond_0
    if-nez v8, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing Param keyword."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

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

    :cond_2
    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "category"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    :try_start_0
    aget-object v8, p4, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_0
    move-exception v8

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    const-string v13, "count"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    :try_start_1
    aget-object v7, p4, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_4

    :catch_1
    move-exception v7

    const/16 v7, 0x14

    goto :goto_4

    :cond_5
    const-string v13, "keyword"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    aget-object v6, p4, v10

    goto :goto_4

    :cond_6
    const-string v13, "latitude"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    :try_start_2
    aget-object v4, p4, v10

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v4

    goto :goto_4

    :catch_2
    move-exception v4

    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_7
    const-string v13, "longitude"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    :try_start_3
    aget-object v2, p4, v10

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    goto :goto_4

    :catch_3
    move-exception v2

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_8
    packed-switch v8, :pswitch_data_1

    const-string v1, ""

    :goto_5
    :try_start_4
    new-instance v8, Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    invoke-direct {v8, v6, v1}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz p5, :cond_9

    const-string v1, "important"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->setSortMode(I)V

    :cond_a
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v1, v8}, Lcom/amap/mapapi/poisearch/PoiSearch;->setQuery(Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V

    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v1, v7}, Lcom/amap/mapapi/poisearch/PoiSearch;->setPageSize(I)V

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_d

    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_d

    new-instance v1, Lcom/amap/mapapi/core/GeoPoint;

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-direct {v1, v4, v2}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    :goto_6
    iget-object v2, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v2, v1}, Lcom/amap/mapapi/poisearch/PoiSearch;->setCenter(Lcom/amap/mapapi/core/GeoPoint;)V

    :try_start_5
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->b:Lcom/amap/mapapi/poisearch/PoiSearch;

    invoke-virtual {v1}, Lcom/amap/mapapi/poisearch/PoiSearch;->searchPOI()Lcom/amap/mapapi/poisearch/PoiPagedResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/poisearch/PoiPagedResult;->getPage(I)Ljava/util/List;

    move-result-object v1

    if-nez p2, :cond_b

    sget-object p2, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->a:[Ljava/lang/String;

    :cond_b
    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    new-instance v2, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/core/PoiItem;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v3, v0

    new-array v6, v3, [Ljava/lang/String;

    move-object/from16 v0, p2

    array-length v7, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v7, :cond_15

    aget-object v8, p2, v3

    const-string v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :cond_c
    :goto_9
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :pswitch_1
    const-string v1, ""

    goto/16 :goto_5

    :pswitch_2
    const-string v1, "\u52a0\u6cb9\u7ad9"

    goto/16 :goto_5

    :pswitch_3
    const-string v1, "\u4e2d\u9910\u5385|\u5916\u56fd\u9910\u5385|\u5feb\u9910\u5385"

    goto/16 :goto_5

    :pswitch_4
    const-string v1, "\u505c\u8f66\u573a"

    goto/16 :goto_5

    :pswitch_5
    const-string v1, "\u5496\u5561\u5385"

    goto/16 :goto_5

    :pswitch_6
    const-string v1, "\u9152\u5427"

    goto/16 :goto_5

    :pswitch_7
    const-string v1, "ATM"

    goto/16 :goto_5

    :pswitch_8
    const-string v1, "\u8d85\u7ea7\u5e02\u573a|\u4fbf\u6c11\u5546\u5e97/\u4fbf\u5229\u5e97"

    goto/16 :goto_5

    :pswitch_9
    const-string v1, "\u836f\u5e97"

    goto/16 :goto_5

    :pswitch_a
    const-string v1, "\u8d2d\u7269\u670d\u52a1"

    goto/16 :goto_5

    :pswitch_b
    const-string v1, "\u7efc\u5408\u533b\u9662|\u4e13\u79d1\u533b\u9662|\u8bca\u6240|\u516c\u5b89\u8b66\u5bdf"

    goto/16 :goto_5

    :catch_4
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_d
    :try_start_6
    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/amap/mapapi/poisearch/PoiSearchOnlineContentProvider;->c:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    :cond_e
    move-object v2, v1

    :goto_a
    if-eqz v2, :cond_f

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

    :catch_5
    move-exception v1

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_10
    :try_start_7
    const-string v9, "full_address"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v4

    goto/16 :goto_9

    :catch_6
    move-exception v1

    goto/16 :goto_0

    :cond_11
    const-string v9, "latitude"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v1}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    goto/16 :goto_9

    :cond_12
    const-string v9, "longitude"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v1}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    goto/16 :goto_9

    :cond_13
    const-string v9, "distance"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getDistance()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    goto/16 :goto_9

    :cond_14
    const-string v9, "icon_path"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/PoiItem;->getImageId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v4

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_7

    :cond_16
    move-object v1, v2

    goto/16 :goto_1

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

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

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

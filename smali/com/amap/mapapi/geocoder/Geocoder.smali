.class public final Lcom/amap/mapapi/geocoder/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# static fields
.field public static final Cross:Ljava/lang/String; = "Cross"

.field public static final POI:Ljava/lang/String; = "POI"

.field public static final Street_Road:Ljava/lang/String; = "StreetAndRoad"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/mapapi/geocoder/Geocoder;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/mapapi/geocoder/Geocoder;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(DDIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDIZ)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    sget-boolean v0, Lcom/amap/mapapi/core/e;->a:Z

    if-eqz v0, :cond_3

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x3dfd240

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/mapapi/core/AMapException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException latitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/32 v0, 0x2faf080

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x8a48640

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/amap/mapapi/core/AMapException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException longitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gtz p5, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_4
    new-instance v7, Lcom/amap/mapapi/core/p;

    new-instance v0, Lcom/amap/mapapi/core/q;

    move-wide v1, p3

    move-wide v3, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/core/q;-><init>(DDIZ)V

    iget-object v1, p0, Lcom/amap/mapapi/geocoder/Geocoder;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/geocoder/Geocoder;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/amap/mapapi/core/p;-><init>(Lcom/amap/mapapi/core/q;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/amap/mapapi/core/m;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method private a(Ljava/util/List;DDDDI)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;DDDDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    cmpg-double v8, v4, p8

    if-gtz v8, :cond_0

    cmpl-double v4, v4, p4

    if-ltz v4, :cond_0

    cmpg-double v4, v6, p6

    if-gtz v4, :cond_0

    cmpl-double v4, v6, p2

    if-ltz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p10

    if-ge v4, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/geocoder/Geocoder;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/mapapi/geocoder/Geocoder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/geocoder/Geocoder;->a(DDIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v3

    const-wide/32 v0, 0x2faf080

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v5

    const-wide/32 v0, 0x3dfd240

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v7

    const-wide/32 v0, 0x8a48640

    invoke-static {v0, v1}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/amap/mapapi/geocoder/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "locationName == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-boolean v2, Lcom/amap/mapapi/core/e;->a:Z

    if-eqz v2, :cond_8

    const-wide/32 v2, 0xf4240

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpg-double v2, p3, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x3dfd240

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpl-double v2, p3, v2

    if-lez v2, :cond_2

    :cond_1
    new-instance v2, Lcom/amap/mapapi/core/AMapException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException lowerLeftLatitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-wide/32 v2, 0x2faf080

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpg-double v2, p5, v2

    if-ltz v2, :cond_3

    const-wide/32 v2, 0x8a48640

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpl-double v2, p5, v2

    if-lez v2, :cond_4

    :cond_3
    new-instance v2, Lcom/amap/mapapi/core/AMapException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException lowerLeftLongitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-wide/32 v2, 0xf4240

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpg-double v2, p7, v2

    if-ltz v2, :cond_5

    const-wide/32 v2, 0x3dfd240

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpl-double v2, p7, v2

    if-lez v2, :cond_6

    :cond_5
    new-instance v2, Lcom/amap/mapapi/core/AMapException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException upperRightLatitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-wide/32 v2, 0x2faf080

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpg-double v2, p9, v2

    if-ltz v2, :cond_7

    const-wide/32 v2, 0x8a48640

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v2

    cmpl-double v2, p9, v2

    if-lez v2, :cond_8

    :cond_7
    new-instance v2, Lcom/amap/mapapi/core/AMapException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException upperRightLongitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amap/mapapi/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    if-gtz p2, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_0
    return-object v3

    :cond_a
    new-instance v2, Lcom/amap/mapapi/geocoder/a;

    new-instance v3, Lcom/amap/mapapi/geocoder/b;

    const/16 v4, 0xf

    invoke-direct {v3, p1, v4}, Lcom/amap/mapapi/geocoder/b;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/amap/mapapi/geocoder/Geocoder;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/mapapi/geocoder/Geocoder;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/mapapi/geocoder/a;-><init>(Lcom/amap/mapapi/geocoder/b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amap/mapapi/core/m;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-boolean v2, Lcom/amap/mapapi/core/e;->a:Z

    if-eqz v2, :cond_9

    move-object v2, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/amap/mapapi/geocoder/Geocoder;->a(Ljava/util/List;DDDDI)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public getFromRawGpsLocation(DDI)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    :try_start_0
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint$b;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/amap/mapapi/core/GeoPoint$b;-><init>(DD)V

    new-instance v1, Lcom/amap/mapapi/core/i;

    iget-object v2, p0, Lcom/amap/mapapi/geocoder/Geocoder;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/geocoder/Geocoder;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amap/mapapi/core/i;-><init>(Lcom/amap/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/mapapi/core/m;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint$b;

    if-eqz v0, :cond_1

    iget-wide v3, v0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    iget-wide v1, v0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v0, v6, v3

    if-nez v0, :cond_0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v0, v6, v1

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/geocoder/Geocoder;->a(DDIZ)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-wide v3, p3

    move-wide v1, p1

    goto :goto_0
.end method

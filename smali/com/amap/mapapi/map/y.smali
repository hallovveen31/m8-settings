.class Lcom/amap/mapapi/map/y;
.super Lcom/amap/mapapi/map/ap;
.source "RouteOverlayDraw.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:[Lcom/amap/mapapi/core/GeoPoint;

.field private d:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;[Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ap;-><init>(Lcom/amap/mapapi/map/RouteOverlay;)V

    .line 56
    iput-object p3, p0, Lcom/amap/mapapi/map/y;->a:Landroid/graphics/Paint;

    .line 57
    iput-object p2, p0, Lcom/amap/mapapi/map/y;->b:[Lcom/amap/mapapi/core/GeoPoint;

    .line 58
    return-void
.end method

.method private a(Lcom/amap/mapapi/map/MapView;Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/mapapi/map/MapView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 234
    .line 235
    iget-object v0, p0, Lcom/amap/mapapi/map/y;->b:[Lcom/amap/mapapi/core/GeoPoint;

    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;

    move-result-object v0

    move v2, v3

    .line 238
    :goto_0
    iget-object v1, p0, Lcom/amap/mapapi/map/y;->b:[Lcom/amap/mapapi/core/GeoPoint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_2

    .line 239
    add-int/lit8 v2, v2, 0x1

    .line 240
    iget-object v1, p0, Lcom/amap/mapapi/map/y;->b:[Lcom/amap/mapapi/core/GeoPoint;

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;

    move-result-object v1

    .line 245
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 246
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v0, v1

    .line 256
    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/map/y;->a(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/map/y;->a(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    :cond_3
    return v2
.end method

.method private a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/amap/mapapi/map/MapView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/amap/mapapi/map/y;->d:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/y;->d:Landroid/graphics/Path;

    .line 109
    :cond_0
    const/4 v2, 0x1

    .line 110
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 112
    :goto_0
    if-ge v3, v4, :cond_2

    .line 113
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 114
    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/amap/mapapi/map/y;->d:Landroid/graphics/Path;

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v1

    .line 112
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v5, p0, Lcom/amap/mapapi/map/y;->d:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move v0, v2

    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/y;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amap/mapapi/map/y;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/amap/mapapi/map/y;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 123
    return-void
.end method

.method private a(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 220
    .line 221
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    if-eqz p3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-direct {p0, p2, v0}, Lcom/amap/mapapi/map/y;->a(Lcom/amap/mapapi/map/MapView;Ljava/util/ArrayList;)I

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/amap/mapapi/map/y;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Ljava/util/ArrayList;)V

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

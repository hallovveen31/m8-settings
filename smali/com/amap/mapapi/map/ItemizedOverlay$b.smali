.class Lcom/amap/mapapi/map/ItemizedOverlay$b;
.super Ljava/lang/Object;
.source "ItemizedOverlay.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/ItemizedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/ItemizedOverlay;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ItemizedOverlay;)V
    .locals 4

    iput-object p1, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a:Lcom/amap/mapapi/map/ItemizedOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/amap/mapapi/map/ItemizedOverlay;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->createItem(I)Lcom/amap/mapapi/core/OverlayItem;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private a(Lcom/amap/mapapi/core/OverlayItem;Lcom/amap/mapapi/map/Projection;Landroid/graphics/Point;I)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Lcom/amap/mapapi/map/Projection;",
            "Landroid/graphics/Point;",
            "I)D"
        }
    .end annotation

    const-wide/high16 v0, -0x4010

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b(Lcom/amap/mapapi/core/OverlayItem;Lcom/amap/mapapi/map/Projection;Landroid/graphics/Point;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/OverlayItem;Lcom/amap/mapapi/map/Projection;Landroid/graphics/Point;)Lcom/amap/mapapi/core/GeoPoint$a;

    move-result-object v0

    iget v1, v0, Lcom/amap/mapapi/core/GeoPoint$a;->a:I

    iget v2, v0, Lcom/amap/mapapi/core/GeoPoint$a;->a:I

    mul-int/2addr v1, v2

    iget v2, v0, Lcom/amap/mapapi/core/GeoPoint$a;->b:I

    iget v0, v0, Lcom/amap/mapapi/core/GeoPoint$a;->b:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    :cond_0
    return-wide v0
.end method

.method private a(Lcom/amap/mapapi/core/OverlayItem;Lcom/amap/mapapi/map/Projection;Landroid/graphics/Point;)Lcom/amap/mapapi/core/GeoPoint$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Lcom/amap/mapapi/map/Projection;",
            "Landroid/graphics/Point;",
            ")",
            "Lcom/amap/mapapi/core/GeoPoint$a;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Lcom/amap/mapapi/core/GeoPoint$a;

    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget v3, p3, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v3, v0

    invoke-direct {v1, v2, v0}, Lcom/amap/mapapi/core/GeoPoint$a;-><init>(II)V

    return-object v1
.end method

.method private b(Lcom/amap/mapapi/core/OverlayItem;Lcom/amap/mapapi/map/Projection;Landroid/graphics/Point;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Lcom/amap/mapapi/map/Projection;",
            "Landroid/graphics/Point;",
            "I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/OverlayItem;Lcom/amap/mapapi/map/Projection;Landroid/graphics/Point;)Lcom/amap/mapapi/core/GeoPoint$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/mapapi/core/OverlayItem;->getmMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a:Lcom/amap/mapapi/map/ItemizedOverlay;

    invoke-static {v0}, Lcom/amap/mapapi/map/ItemizedOverlay;->a(Lcom/amap/mapapi/map/ItemizedOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a:Lcom/amap/mapapi/map/ItemizedOverlay;

    iget v3, v1, Lcom/amap/mapapi/core/GeoPoint$a;->a:I

    iget v1, v1, Lcom/amap/mapapi/core/GeoPoint$a;->b:I

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/amap/mapapi/map/ItemizedOverlay;->hitTest(Lcom/amap/mapapi/core/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/amap/mapapi/core/OverlayItem;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/OverlayItem;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/OverlayItem;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-le v4, v5, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v0

    if-le v1, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)I
    .locals 4

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, -0x8000

    const v0, 0x7fffffff

    iget-object v2, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/OverlayItem;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/OverlayItem;->getPoint()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    :goto_2
    if-le v0, v2, :cond_1

    move v2, v0

    :cond_1
    if-ge v0, v1, :cond_4

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v0

    goto :goto_2

    :cond_3
    sub-int v0, v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public a(I)Lcom/amap/mapapi/core/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/OverlayItem;

    return-object v0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z
    .locals 17

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v10

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v1}, Lcom/amap/mapapi/map/Projection;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v11

    const/4 v5, -0x1

    const-wide v3, 0x7fefffffffffffffL

    const v2, 0x7fffffff

    const/4 v1, 0x0

    move v6, v5

    move v14, v2

    move v2, v1

    move-wide v15, v3

    move-wide v4, v15

    move v3, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a()I

    move-result v1

    if-ge v2, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/core/OverlayItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Lcom/amap/mapapi/core/OverlayItem;Lcom/amap/mapapi/map/Projection;Landroid/graphics/Point;I)D

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmpl-double v1, v7, v12

    if-ltz v1, :cond_1

    cmpg-double v1, v7, v4

    if-gez v1, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b(I)I

    move-result v3

    move-wide v4, v7

    move v6, v2

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    cmpl-double v1, v7, v4

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->b(I)I

    move-result v1

    if-le v1, v3, :cond_0

    move v6, v2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    if-eq v1, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a:Lcom/amap/mapapi/map/ItemizedOverlay;

    invoke-virtual {v1, v6}, Lcom/amap/mapapi/map/ItemizedOverlay;->onTap(I)Z

    move-result v1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$a;->d()V

    return v1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a:Lcom/amap/mapapi/map/ItemizedOverlay;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/map/ItemizedOverlay;->setFocus(Lcom/amap/mapapi/core/OverlayItem;)V

    move v1, v9

    goto :goto_2
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/ItemizedOverlay$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/amap/mapapi/map/ItemizedOverlay$b;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

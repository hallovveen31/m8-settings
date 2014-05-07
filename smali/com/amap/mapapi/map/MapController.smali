.class public final Lcom/amap/mapapi/map/MapController;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/MapController$b;,
        Lcom/amap/mapapi/map/MapController$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/amap/mapapi/map/ai;

.field private d:Z

.field private e:Lcom/amap/mapapi/map/MapController$b;

.field private f:Lcom/amap/mapapi/map/MapController$a;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/ai;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/mapapi/map/MapController;->a:I

    iput v0, p0, Lcom/amap/mapapi/map/MapController;->b:I

    iput-object p1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    new-instance v0, Lcom/amap/mapapi/map/MapController$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/MapController$b;-><init>(Lcom/amap/mapapi/map/MapController;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    new-instance v0, Lcom/amap/mapapi/map/MapController$a;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/MapController$a;-><init>(Lcom/amap/mapapi/map/MapController;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    return-void
.end method

.method private a(F)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-lez v3, :cond_0

    return v2

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    move v1, v2

    move v2, v0

    move v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    return-object v0
.end method

.method private a(IIZZ)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/MapController;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method private a(IIZZI)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    add-int/2addr v0, p5

    :goto_0
    iget-object v2, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/MapView;->b(I)I

    move-result v3

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    if-eq v3, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/MapController;->zoomAnimationAtLevel(IIIZZ)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    sub-int/2addr v0, p5

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static calculateDistance(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)F
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v7

    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v1, v9

    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v3, v9

    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v5, v9

    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v7, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    mul-double/2addr v1, v3

    aput-wide v1, v17, v19

    const/4 v1, 0x1

    mul-double v2, v3, v9

    aput-wide v2, v17, v1

    const/4 v1, 0x2

    aput-wide v11, v17, v1

    const/4 v1, 0x0

    mul-double v2, v7, v5

    aput-wide v2, v18, v1

    const/4 v1, 0x1

    mul-double v2, v7, v13

    aput-wide v2, v18, v1

    const/4 v1, 0x2

    aput-wide v15, v18, v1

    const/4 v1, 0x0

    aget-wide v1, v17, v1

    const/4 v3, 0x0

    aget-wide v3, v18, v3

    sub-double/2addr v1, v3

    const/4 v3, 0x0

    aget-wide v3, v17, v3

    const/4 v5, 0x0

    aget-wide v5, v18, v5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v3, v17, v3

    const/4 v5, 0x1

    aget-wide v5, v18, v5

    sub-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v17, v5

    const/4 v7, 0x1

    aget-wide v7, v18, v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v3, v17, v3

    const/4 v5, 0x2

    aget-wide v5, v18, v5

    sub-double/2addr v3, v5

    const/4 v5, 0x2

    aget-wide v5, v17, v5

    const/4 v7, 0x2

    aget-wide v7, v18, v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    const-wide v3, 0x41684dae328e2ad1L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController$b;->a(Lcom/amap/mapapi/map/MapController$b;)Lcom/amap/mapapi/map/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/a;->g()Z

    move-result v0

    return v0
.end method

.method a(I)Z
    .locals 6

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/MapController;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method public animateTo(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    invoke-virtual {v0, p1, v1, v1}, Lcom/amap/mapapi/map/MapController$a;->a(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateTo(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/amap/mapapi/map/MapController$a;->a(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateTo(Lcom/amap/mapapi/core/GeoPoint;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/amap/mapapi/map/MapController$a;->a(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    return-void
.end method

.method b(I)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    move-object v0, p0

    move v4, v3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/MapController;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method public getReqLatSpan()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/MapController;->a:I

    return v0
.end method

.method public getReqLngSpan()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/MapController;->b:I

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0xa

    const/16 v2, -0xa

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v3, v1}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v3}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    sget-boolean v0, Lcom/amap/mapapi/core/c;->n:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0
.end method

.method public setCenter(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 6

    const-wide v4, 0x412e848000000000L

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->LatLongToPixels(DDI)Lcom/amap/mapapi/map/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget v2, v0, Lcom/amap/mapapi/map/bc;->a:I

    iput v2, v1, Lcom/amap/mapapi/map/MapView;->centerX:I

    iget-object v1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    iput v0, v1, Lcom/amap/mapapi/map/MapView;->centerY:I

    :cond_0
    return-void
.end method

.method public setFitView(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;)V"
        }
    .end annotation

    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v3, v2

    move v4, v1

    move v5, v2

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    if-ge v6, v5, :cond_2

    move v5, v6

    :cond_2
    if-ge v0, v3, :cond_3

    move v3, v0

    :cond_3
    if-le v6, v4, :cond_4

    move v4, v6

    :cond_4
    if-le v0, v2, :cond_5

    move v2, v0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    add-int v1, v3, v2

    div-int/lit8 v1, v1, 0x2

    add-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v0, v1, v6}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->setCenter(Lcom/amap/mapapi/core/GeoPoint;)V

    sub-int v0, v2, v3

    sub-int v1, v4, v5

    invoke-virtual {p0, v0, v1}, Lcom/amap/mapapi/map/MapController;->zoomToSpan(II)V

    goto :goto_0
.end method

.method public setReqLatSpan(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/map/MapController;->a:I

    return-void
.end method

.method public setReqLngSpan(I)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/map/MapController;->b:I

    return-void
.end method

.method public setZoom(I)I
    .locals 4

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/MapView;->b(I)I

    move-result v2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget v0, v0, Lcom/amap/mapapi/map/ad;->g:I

    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3, v2}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    :goto_0
    iget-object v3, v1, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getZoomButtonsController()Lcom/amap/mapapi/map/ZoomButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ZoomButtonsController;->getOnZoomListener()Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    move-result-object v1

    if-ge v0, v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_0
    if-le v0, v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_1
    return v2

    :cond_2
    iget v0, v1, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3, v2}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    goto :goto_0
.end method

.method public stopAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController$b;->a()V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController$a;->a()V

    return-void
.end method

.method public stopPanning()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    return-void
.end method

.method public zoomAnimationAtLevel(IIIZZ)V
    .locals 6

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/MapController$b;->a(IIIZZ)V

    return-void
.end method

.method public zoomIn()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->a(I)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amap/mapapi/map/MapController;->a(IIZZ)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->b(I)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/mapapi/map/MapController;->a(IIZZ)Z

    move-result v0

    return v0
.end method

.method public zoomToSpan(II)V
    .locals 9

    const/high16 v8, 0x3f80

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->b()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->a()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v2

    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$e;->b()I

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/ai$e;->a()I

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    iput p1, p0, Lcom/amap/mapapi/map/MapController;->a:I

    iput p2, p0, Lcom/amap/mapapi/map/MapController;->b:I

    goto :goto_0

    :cond_2
    int-to-float v5, p1

    int-to-float v4, v4

    div-float v4, v5, v4

    int-to-float v5, p2

    int-to-float v3, v3

    div-float v3, v5, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    invoke-direct {p0, v3}, Lcom/amap/mapapi/map/MapController;->a(F)I

    move-result v1

    sub-int v1, v2, v1

    if-gt v1, v0, :cond_6

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->setZoom(I)I

    goto :goto_0

    :cond_4
    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_5

    div-float v0, v8, v3

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/MapController;->a(F)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

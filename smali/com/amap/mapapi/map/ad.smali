.class Lcom/amap/mapapi/map/ad;
.super Ljava/lang/Object;
.source "MapProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/ad$a;
    }
.end annotation


# instance fields
.field a:D

.field b:I

.field c:D

.field d:D

.field public e:I

.field public f:I

.field public g:I

.field public h:[D

.field public i:Lcom/amap/mapapi/map/ae;

.field public j:Lcom/amap/mapapi/core/GeoPoint;

.field public k:Lcom/amap/mapapi/core/GeoPoint;

.field public l:Landroid/graphics/Point;

.field public m:Lcom/amap/mapapi/map/ad$a;

.field n:Lcom/amap/mapapi/map/ai$d;

.field private o:D

.field private p:D

.field private q:D


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai$d;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide v0, 0x405d196b11c6d1e1L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->o:D

    .line 31
    const-wide v0, 0x4043f556191148feL

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->p:D

    .line 36
    const-wide v0, 0x41031bf8456d5cfbL

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->a:D

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/ad;->b:I

    .line 46
    const-wide v0, -0x3e8ce407ba8f5c29L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->c:D

    .line 47
    const-wide v0, 0x41731bf84570a3d7L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->d:D

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/mapapi/map/ad;->e:I

    .line 51
    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/mapapi/map/ad;->f:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/mapapi/map/ad;->g:I

    .line 54
    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->h:[D

    .line 56
    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    .line 58
    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    .line 59
    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->k:Lcom/amap/mapapi/core/GeoPoint;

    .line 60
    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    .line 61
    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    .line 63
    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    .line 532
    const-wide v0, 0x3f91df46a2529d37L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->q:D

    .line 66
    iput-object p1, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    .line 67
    return-void
.end method

.method private a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x1

    .line 160
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 161
    mul-int/2addr v0, p1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)F
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v1

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v3

    .line 544
    invoke-virtual/range {p2 .. p2}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v5

    .line 545
    invoke-virtual/range {p2 .. p2}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v7

    .line 546
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

    mul-double/2addr v1, v9

    .line 547
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

    mul-double/2addr v3, v9

    .line 548
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

    mul-double/2addr v5, v9

    .line 549
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

    mul-double/2addr v7, v9

    .line 550
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 551
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 552
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 553
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 554
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 555
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 556
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 557
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 558
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    .line 559
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 560
    const/16 v19, 0x0

    mul-double/2addr v1, v3

    aput-wide v1, v17, v19

    .line 561
    const/4 v1, 0x1

    mul-double v2, v3, v9

    aput-wide v2, v17, v1

    .line 562
    const/4 v1, 0x2

    aput-wide v11, v17, v1

    .line 563
    const/4 v1, 0x0

    mul-double v2, v7, v5

    aput-wide v2, v18, v1

    .line 564
    const/4 v1, 0x1

    mul-double v2, v7, v13

    aput-wide v2, v18, v1

    .line 565
    const/4 v1, 0x2

    aput-wide v15, v18, v1

    .line 566
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

    .line 570
    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    const-wide v3, 0x41684dae328e2ad1L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4380

    const/4 v3, 0x0

    .line 470
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 472
    sub-int v1, p1, p3

    mul-int/lit16 v1, v1, 0x100

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 474
    iget v1, p0, Lcom/amap/mapapi/map/ad;->b:I

    if-nez v1, :cond_3

    .line 475
    sub-int v1, p2, p4

    mul-int/lit16 v1, v1, 0x100

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 483
    :cond_0
    :goto_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-lez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float v2, p6

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-lez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, p7

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 487
    :cond_1
    const/4 v0, 0x0

    .line 489
    :cond_2
    return-object v0

    .line 477
    :cond_3
    iget v1, p0, Lcom/amap/mapapi/map/ad;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 478
    iget v1, p5, Landroid/graphics/PointF;->y:F

    sub-int v2, p2, p4

    mul-int/lit16 v2, v2, 0x100

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 213
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    sub-double/2addr v1, v3

    div-double/2addr v1, p4

    iget v3, p3, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 215
    iget v1, p3, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double/2addr v3, p4

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 218
    return-object v0
.end method

.method public a(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-virtual/range {p0 .. p6}, Lcom/amap/mapapi/map/ad;->b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ad;->b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide v9, 0x41731bf84570a3d7L

    const-wide v4, 0x412e848000000000L

    const-wide v7, 0x4066800000000000L

    .line 173
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :cond_1
    sget-object v1, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v2, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v1, v2, :cond_2

    .line 181
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_2
    sget-object v1, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v2, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v1, v2, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 187
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    .line 189
    mul-double/2addr v2, v9

    div-double v3, v2, v7

    .line 190
    const-wide v5, 0x4056800000000000L

    add-double/2addr v0, v5

    const-wide v5, 0x400921fb54442d18L

    mul-double/2addr v0, v5

    const-wide v5, 0x4076800000000000L

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v5, 0x3f91df46a2529d39L

    div-double/2addr v0, v5

    .line 193
    mul-double/2addr v0, v9

    div-double v1, v0, v7

    .line 194
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    goto :goto_0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;III)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/mapapi/core/GeoPoint;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    iget v1, p0, Lcom/amap/mapapi/map/ad;->g:I

    aget-wide v9, v0, v1

    .line 348
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->c:D

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4070

    mul-double/2addr v3, v9

    div-double/2addr v1, v3

    double-to-int v11, v1

    .line 352
    mul-int/lit16 v1, v11, 0x100

    int-to-double v1, v1

    mul-double/2addr v1, v9

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->c:D

    add-double/2addr v3, v1

    .line 355
    const-wide/16 v1, 0x0

    .line 356
    iget v5, p0, Lcom/amap/mapapi/map/ad;->b:I

    if-nez v5, :cond_3

    .line 357
    iget-wide v0, p0, Lcom/amap/mapapi/map/ad;->d:D

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    sub-double/2addr v0, v5

    const-wide/high16 v5, 0x4070

    mul-double/2addr v5, v9

    div-double/2addr v0, v5

    double-to-int v0, v0

    .line 359
    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->d:D

    mul-int/lit16 v5, v0, 0x100

    int-to-double v5, v5

    mul-double/2addr v5, v9

    sub-double/2addr v1, v5

    move v8, v0

    .line 367
    :goto_0
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    .line 370
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v5

    .line 373
    new-instance v0, Lcom/amap/mapapi/map/at$a;

    iget v1, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v2, -0x1

    invoke-direct {v0, v11, v8, v1, v2}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    .line 375
    iput-object v5, v0, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 376
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const/4 v0, 0x1

    move v10, v0

    .line 386
    :goto_1
    const/4 v9, 0x0

    .line 387
    sub-int v1, v11, v10

    :goto_2
    add-int v0, v11, v10

    if-gt v1, v0, :cond_4

    .line 389
    add-int v2, v8, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 391
    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_0

    .line 395
    if-nez v9, :cond_b

    .line 396
    const/4 v0, 0x1

    .line 398
    :goto_3
    new-instance v4, Lcom/amap/mapapi/map/at$a;

    iget v6, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    .line 400
    iput-object v3, v4, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 401
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v0

    .line 404
    :cond_0
    sub-int v2, v8, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 406
    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_2

    .line 410
    if-nez v9, :cond_1

    .line 411
    const/4 v9, 0x1

    .line 413
    :cond_1
    new-instance v3, Lcom/amap/mapapi/map/at$a;

    iget v4, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    .line 415
    iput-object v0, v3, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 416
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 361
    :cond_3
    iget v5, p0, Lcom/amap/mapapi/map/ad;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 362
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v0

    iget-wide v5, p0, Lcom/amap/mapapi/map/ad;->d:D

    sub-double/2addr v0, v5

    const-wide/high16 v5, 0x4070

    mul-double/2addr v5, v9

    div-double/2addr v0, v5

    double-to-int v0, v0

    .line 363
    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x100

    int-to-double v1, v1

    mul-double/2addr v1, v9

    move v8, v0

    goto/16 :goto_0

    .line 421
    :cond_4
    add-int v0, v8, v10

    add-int/lit8 v2, v0, -0x1

    :goto_4
    sub-int v0, v8, v10

    if-le v2, v0, :cond_8

    .line 422
    add-int v1, v11, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 425
    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    .line 428
    if-eqz v3, :cond_5

    .line 429
    if-nez v9, :cond_a

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_5
    new-instance v4, Lcom/amap/mapapi/map/at$a;

    iget v6, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    .line 434
    iput-object v3, v4, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 435
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v0

    .line 439
    :cond_5
    sub-int v1, v11, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    .line 441
    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_7

    .line 445
    if-nez v9, :cond_6

    .line 446
    const/4 v9, 0x1

    .line 448
    :cond_6
    new-instance v3, Lcom/amap/mapapi/map/at$a;

    iget v4, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    .line 450
    iput-object v0, v3, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 451
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 457
    :cond_8
    if-nez v9, :cond_9

    .line 462
    return-object v12

    .line 385
    :cond_9
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_1

    :cond_a
    move v0, v9

    goto :goto_5

    :cond_b
    move v0, v9

    goto/16 :goto_3

    :cond_c
    move v8, v0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const v8, 0x4b98dfc2

    const v7, -0x3467203e

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->a:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->o:D

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->b:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->b:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->p:D

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-object v0, v0, Lcom/amap/mapapi/map/ae;->c:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sput-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    .line 99
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->d:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->d:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->a:D

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->e:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->b:I

    .line 105
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->c:D

    .line 106
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->g:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->d:D

    .line 107
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->h:I

    if-ltz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->h:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->e:I

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->i:I

    if-ltz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->i:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->f:I

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->j:I

    if-ltz v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->j:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->g:I

    .line 117
    :cond_5
    iget v0, p0, Lcom/amap/mapapi/map/ad;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    move v0, v6

    .line 118
    :goto_0
    iget v1, p0, Lcom/amap/mapapi/map/ad;->f:I

    if-gt v0, v1, :cond_6

    .line 119
    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->a:D

    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Lcom/amap/mapapi/map/ad;->a(II)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 120
    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->h:[D

    aput-wide v1, v3, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_6
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_8

    .line 125
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->p:D

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->o:D

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    .line 126
    sput-boolean v5, Lcom/amap/mapapi/core/e;->a:Z

    .line 131
    :goto_1
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    .line 132
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->k:Lcom/amap/mapapi/core/GeoPoint;

    .line 135
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    .line 138
    new-instance v0, Lcom/amap/mapapi/map/ad$a;

    invoke-direct {v0}, Lcom/amap/mapapi/map/ad$a;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    .line 139
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_7

    .line 140
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v7, v0, Lcom/amap/mapapi/map/ad$a;->a:F

    .line 141
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v8, v0, Lcom/amap/mapapi/map/ad$a;->b:F

    .line 142
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v8, v0, Lcom/amap/mapapi/map/ad$a;->c:F

    .line 143
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v7, v0, Lcom/amap/mapapi/map/ad$a;->d:F

    .line 145
    :cond_7
    return-void

    .line 128
    :cond_8
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->p:D

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->o:D

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    .line 129
    sput-boolean v6, Lcom/amap/mapapi/core/e;->a:Z

    goto :goto_1
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    .line 149
    return-void
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    aget-wide v4, v0, p3

    .line 494
    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amap/mapapi/map/ad;->b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v7

    .line 496
    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amap/mapapi/map/ad;->b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v1

    invoke-virtual {v7}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 501
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v3

    invoke-virtual {v7}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 504
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v5

    add-double v0, v5, v1

    .line 506
    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    add-double v2, v5, v3

    .line 508
    sget-object v4, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v5, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v4, v5, :cond_3

    .line 509
    :goto_0
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 510
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->b:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_0

    .line 513
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->b:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 514
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->b:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v0, v4

    goto :goto_1

    .line 517
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->d:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 518
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->c:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_2

    .line 521
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->c:F

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    .line 522
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->c:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v2, v4

    goto :goto_3

    .line 525
    :cond_3
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v4, v2, v3}, Lcom/amap/mapapi/core/GeoPoint;->b(D)V

    .line 526
    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2, v0, v1}, Lcom/amap/mapapi/core/GeoPoint;->a(D)V

    .line 530
    return-void
.end method

.method public a(Lcom/amap/mapapi/map/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    .line 83
    invoke-virtual {p0}, Lcom/amap/mapapi/map/ad;->a()V

    .line 84
    return-void
.end method

.method public b(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/MapView;->toScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView;->fromScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 279
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 280
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 282
    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    float-to-double v0, v1

    mul-double/2addr v0, p4

    add-double/2addr v0, v3

    .line 283
    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v3

    float-to-double v5, v2

    mul-double/2addr v5, p4

    sub-double v2, v3, v5

    .line 285
    sget-object v4, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v5, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v4, v5, :cond_3

    .line 286
    :goto_0
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 287
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->b:F

    iget v5, p6, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_0

    .line 290
    :cond_0
    :goto_1
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->b:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    .line 291
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->b:F

    iget v5, p6, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v0, v4

    goto :goto_1

    .line 294
    :cond_1
    :goto_2
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->d:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 295
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->c:F

    iget v5, p6, Lcom/amap/mapapi/map/ad$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_2

    .line 298
    :cond_2
    :goto_3
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->c:F

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    .line 299
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->c:F

    iget v5, p6, Lcom/amap/mapapi/map/ad$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v2, v4

    goto :goto_3

    :cond_3
    move-wide v7, v2

    move-wide v3, v0

    move-wide v1, v7

    .line 303
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    .line 305
    return-object v0
.end method

.method public b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 14
    .parameter

    .prologue
    const-wide v4, 0x41731bf84570a3d7L

    const-wide v12, 0x412e848000000000L

    const-wide v10, 0x4066800000000000L

    .line 228
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_0

    .line 230
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    double-to-long v5, v5

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v7

    double-to-long v7, v7

    invoke-direct/range {v0 .. v8}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDJJ)V

    .line 246
    :goto_0
    return-object v0

    .line 234
    :cond_0
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v0

    mul-double/2addr v0, v10

    div-double/2addr v0, v4

    double-to-float v1, v0

    .line 237
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v2

    mul-double/2addr v2, v10

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 239
    const-wide v2, 0x404ca5dc1a63c1f8L

    const-wide/high16 v4, 0x4000

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3ff921fb54442d18L

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 242
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    float-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-int v2, v2

    float-to-double v3, v1

    mul-double/2addr v3, v12

    double-to-int v1, v3

    invoke-direct {v0, v2, v1}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/amap/mapapi/map/at$a;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4070

    .line 325
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    iget v1, p0, Lcom/amap/mapapi/map/ad;->g:I

    aget-wide v1, v0, v1

    .line 327
    const/4 v0, 0x0

    .line 328
    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/amap/mapapi/map/ad;->c:D

    sub-double/2addr v3, v5

    mul-double v5, v1, v8

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 330
    iget v4, p0, Lcom/amap/mapapi/map/ad;->b:I

    if-nez v4, :cond_1

    .line 332
    iget-wide v4, p0, Lcom/amap/mapapi/map/ad;->d:D

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v0, v1, v8

    div-double v0, v4, v0

    double-to-int v0, v0

    .line 338
    :cond_0
    :goto_0
    new-instance v1, Lcom/amap/mapapi/map/at$a;

    iget v2, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v4, -0x1

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    .line 340
    return-object v1

    .line 334
    :cond_1
    iget v4, p0, Lcom/amap/mapapi/map/ad;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 336
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/mapapi/map/ad;->d:D

    sub-double/2addr v4, v6

    mul-double v0, v1, v8

    div-double v0, v4, v0

    double-to-int v0, v0

    goto :goto_0
.end method

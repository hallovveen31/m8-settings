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

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x405d196b11c6d1e1L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->o:D

    const-wide v0, 0x4043f556191148feL

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->p:D

    const-wide v0, 0x41031bf8456d5cfbL

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->a:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/ad;->b:I

    const-wide v0, -0x3e8ce407ba8f5c29L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->c:D

    const-wide v0, 0x41731bf84570a3d7L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->d:D

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/mapapi/map/ad;->e:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/mapapi/map/ad;->f:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/mapapi/map/ad;->g:I

    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->h:[D

    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->k:Lcom/amap/mapapi/core/GeoPoint;

    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput-object v2, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    const-wide v0, 0x3f91df46a2529d37L

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->q:D

    iput-object p1, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    return-void
.end method

.method private a(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/2addr v0, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;)F
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

    mul-double/2addr v1, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

    mul-double/2addr v3, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

    mul-double/2addr v5, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/amap/mapapi/map/ad;->q:D

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

.method a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 5

    const/high16 v4, 0x4380

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sub-int v1, p1, p3

    mul-int/lit16 v1, v1, 0x100

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/amap/mapapi/map/ad;->b:I

    if-nez v1, :cond_3

    sub-int v1, p2, p4

    mul-int/lit16 v1, v1, 0x100

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

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

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    :cond_3
    iget v1, p0, Lcom/amap/mapapi/map/ad;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

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

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

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

    return-object v0
.end method

.method public a(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/amap/mapapi/map/ad;->b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ad;->b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 11

    const/4 v0, 0x0

    const-wide v9, 0x41731bf84570a3d7L

    const-wide v4, 0x412e848000000000L

    const-wide v7, 0x4066800000000000L

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v2, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v2, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    mul-double/2addr v2, v9

    div-double v3, v2, v7

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

    mul-double/2addr v0, v9

    div-double v1, v0, v7

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    goto :goto_0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;III)Ljava/util/ArrayList;
    .locals 13
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

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    iget v1, p0, Lcom/amap/mapapi/map/ad;->g:I

    aget-wide v9, v0, v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->c:D

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4070

    mul-double/2addr v3, v9

    div-double/2addr v1, v3

    double-to-int v11, v1

    mul-int/lit16 v1, v11, 0x100

    int-to-double v1, v1

    mul-double/2addr v1, v9

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->c:D

    add-double/2addr v3, v1

    const-wide/16 v1, 0x0

    iget v5, p0, Lcom/amap/mapapi/map/ad;->b:I

    if-nez v5, :cond_3

    iget-wide v0, p0, Lcom/amap/mapapi/map/ad;->d:D

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    sub-double/2addr v0, v5

    const-wide/high16 v5, 0x4070

    mul-double/2addr v5, v9

    div-double/2addr v0, v5

    double-to-int v0, v0

    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->d:D

    mul-int/lit16 v5, v0, 0x100

    int-to-double v5, v5

    mul-double/2addr v5, v9

    sub-double/2addr v1, v5

    move v8, v0

    :goto_0
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v5

    new-instance v0, Lcom/amap/mapapi/map/at$a;

    iget v1, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v2, -0x1

    invoke-direct {v0, v11, v8, v1, v2}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    iput-object v5, v0, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v10, v0

    :goto_1
    const/4 v9, 0x0

    sub-int v1, v11, v10

    :goto_2
    add-int v0, v11, v10

    if-gt v1, v0, :cond_4

    add-int v2, v8, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v9, :cond_b

    const/4 v0, 0x1

    :goto_3
    new-instance v4, Lcom/amap/mapapi/map/at$a;

    iget v6, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    iput-object v3, v4, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v0

    :cond_0
    sub-int v2, v8, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :cond_1
    new-instance v3, Lcom/amap/mapapi/map/at$a;

    iget v4, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    iput-object v0, v3, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/amap/mapapi/map/ad;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v0

    iget-wide v5, p0, Lcom/amap/mapapi/map/ad;->d:D

    sub-double/2addr v0, v5

    const-wide/high16 v5, 0x4070

    mul-double/2addr v5, v9

    div-double/2addr v0, v5

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x100

    int-to-double v1, v1

    mul-double/2addr v1, v9

    move v8, v0

    goto/16 :goto_0

    :cond_4
    add-int v0, v8, v10

    add-int/lit8 v2, v0, -0x1

    :goto_4
    sub-int v0, v8, v10

    if-le v2, v0, :cond_8

    add-int v1, v11, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v3, :cond_5

    if-nez v9, :cond_a

    const/4 v0, 0x1

    :goto_5
    new-instance v4, Lcom/amap/mapapi/map/at$a;

    iget v6, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    iput-object v3, v4, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v0

    :cond_5
    sub-int v1, v11, v10

    move-object v0, p0

    move v3, v11

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/mapapi/map/ad;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :cond_6
    new-instance v3, Lcom/amap/mapapi/map/at$a;

    iget v4, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    iput-object v0, v3, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_8
    if-nez v9, :cond_9

    return-object v12

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

    const/4 v5, 0x1

    const v8, 0x4b98dfc2

    const v7, -0x3467203e

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->a:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->o:D

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->b:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->b:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->p:D

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-object v0, v0, Lcom/amap/mapapi/map/ae;->c:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sput-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->d:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->d:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->a:D

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->e:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->b:I

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->f:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->c:D

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget-wide v0, v0, Lcom/amap/mapapi/map/ae;->g:D

    iput-wide v0, p0, Lcom/amap/mapapi/map/ad;->d:D

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->h:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->h:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->e:I

    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->i:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->i:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->f:I

    :cond_4
    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->j:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    iget v0, v0, Lcom/amap/mapapi/map/ae;->j:I

    iput v0, p0, Lcom/amap/mapapi/map/ad;->g:I

    :cond_5
    iget v0, p0, Lcom/amap/mapapi/map/ad;->f:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    move v0, v6

    :goto_0
    iget v1, p0, Lcom/amap/mapapi/map/ad;->f:I

    if-gt v0, v1, :cond_6

    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->a:D

    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Lcom/amap/mapapi/map/ad;->a(II)I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->h:[D

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->p:D

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->o:D

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    sput-boolean v5, Lcom/amap/mapapi/core/e;->a:Z

    :goto_1
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->k:Lcom/amap/mapapi/core/GeoPoint;

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

    new-instance v0, Lcom/amap/mapapi/map/ad$a;

    invoke-direct {v0}, Lcom/amap/mapapi/map/ad$a;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v7, v0, Lcom/amap/mapapi/map/ad$a;->a:F

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v8, v0, Lcom/amap/mapapi/map/ad$a;->b:F

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v8, v0, Lcom/amap/mapapi/map/ad$a;->c:F

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iput v7, v0, Lcom/amap/mapapi/map/ad$a;->d:F

    :cond_7
    return-void

    :cond_8
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget-wide v1, p0, Lcom/amap/mapapi/map/ad;->p:D

    iget-wide v3, p0, Lcom/amap/mapapi/map/ad;->o:D

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    sput-boolean v6, Lcom/amap/mapapi/core/e;->a:Z

    goto :goto_1
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    return-void
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 8

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    aget-wide v4, v0, p3

    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amap/mapapi/map/ad;->b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v7

    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->l:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amap/mapapi/map/ad;->b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v1

    invoke-virtual {v7}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v3

    invoke-virtual {v7}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v5

    add-double v0, v5, v1

    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v5

    add-double v2, v5, v3

    sget-object v4, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v5, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v4, v5, :cond_3

    :goto_0
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->b:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->b:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->b:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v0, v4

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->d:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->c:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->c:F

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v4, v4, Lcom/amap/mapapi/map/ad$a;->c:F

    iget-object v5, p0, Lcom/amap/mapapi/map/ad;->m:Lcom/amap/mapapi/map/ad$a;

    iget v5, v5, Lcom/amap/mapapi/map/ad$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v2, v4

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v4, v2, v3}, Lcom/amap/mapapi/core/GeoPoint;->b(D)V

    iget-object v2, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2, v0, v1}, Lcom/amap/mapapi/core/GeoPoint;->a(D)V

    return-void
.end method

.method public a(Lcom/amap/mapapi/map/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/ad;->i:Lcom/amap/mapapi/map/ae;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/ad;->a()V

    return-void
.end method

.method public b(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/MapView;->toScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/graphics/PointF;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;DLcom/amap/mapapi/map/ad$a;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 9

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->n:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView;->fromScreenPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    float-to-double v0, v1

    mul-double/2addr v0, p4

    add-double/2addr v0, v3

    invoke-virtual {p2}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v3

    float-to-double v5, v2

    mul-double/2addr v5, p4

    sub-double v2, v3, v5

    sget-object v4, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v5, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v4, v5, :cond_3

    :goto_0
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->b:F

    iget v5, p6, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->b:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->b:F

    iget v5, p6, Lcom/amap/mapapi/map/ad$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v0, v4

    goto :goto_1

    :cond_1
    :goto_2
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->d:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->c:F

    iget v5, p6, Lcom/amap/mapapi/map/ad$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_2

    :cond_2
    :goto_3
    iget v4, p6, Lcom/amap/mapapi/map/ad$a;->c:F

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

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

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    return-object v0
.end method

.method public b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 14

    const-wide v4, 0x41731bf84570a3d7L

    const-wide v12, 0x412e848000000000L

    const-wide v10, 0x4066800000000000L

    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_0

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

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v0

    mul-double/2addr v0, v10

    div-double/2addr v0, v4

    double-to-float v1, v0

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v2

    mul-double/2addr v2, v10

    div-double/2addr v2, v4

    double-to-float v0, v2

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

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    float-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-int v2, v2

    float-to-double v3, v1

    mul-double/2addr v3, v12

    double-to-int v1, v3

    invoke-direct {v0, v2, v1}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/amap/mapapi/map/at$a;
    .locals 10

    const-wide/high16 v8, 0x4070

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->h:[D

    iget v1, p0, Lcom/amap/mapapi/map/ad;->g:I

    aget-wide v1, v0, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v3}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/amap/mapapi/map/ad;->c:D

    sub-double/2addr v3, v5

    mul-double v5, v1, v8

    div-double/2addr v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/amap/mapapi/map/ad;->b:I

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/amap/mapapi/map/ad;->d:D

    iget-object v0, p0, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v0, v1, v8

    div-double v0, v4, v0

    double-to-int v0, v0

    :cond_0
    :goto_0
    new-instance v1, Lcom/amap/mapapi/map/at$a;

    iget v2, p0, Lcom/amap/mapapi/map/ad;->g:I

    const/4 v4, -0x1

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/amap/mapapi/map/at$a;-><init>(IIII)V

    return-object v1

    :cond_1
    iget v4, p0, Lcom/amap/mapapi/map/ad;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

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

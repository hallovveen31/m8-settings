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
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/amap/mapapi/map/MapController;->a:I

    .line 34
    iput v0, p0, Lcom/amap/mapapi/map/MapController;->b:I

    .line 37
    iput-object p1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    .line 38
    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    .line 39
    new-instance v0, Lcom/amap/mapapi/map/MapController$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/MapController$b;-><init>(Lcom/amap/mapapi/map/MapController;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    .line 40
    new-instance v0, Lcom/amap/mapapi/map/MapController$a;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/MapController$a;-><init>(Lcom/amap/mapapi/map/MapController;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    .line 41
    return-void
.end method

.method private a(F)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 259
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    .line 263
    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-lez v3, :cond_0

    .line 264
    return v2

    .line 267
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    .line 268
    add-int/lit8 v1, v0, 0x1

    move v4, v1

    move v1, v2

    move v2, v0

    move v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    return-object v0
.end method

.method private a(IIZZ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    const/4 v1, 0x0

    .line 372
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    add-int/2addr v0, p5

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/MapView;->b(I)I

    move-result v3

    .line 378
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

    .line 379
    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/MapController;->zoomAnimationAtLevel(IIIZZ)V

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_1
    return v0

    .line 372
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
    .parameter
    .parameter

    .prologue
    .line 211
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v1

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v3

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v5

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/mapapi/core/e;->a(J)D

    move-result-wide v7

    .line 216
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v1, v9

    .line 217
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v3, v9

    .line 218
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v5, v9

    .line 219
    const-wide v9, 0x3f91df46a2529d37L

    mul-double/2addr v7, v9

    .line 220
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 221
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 222
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 223
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 224
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 225
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 226
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 227
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 228
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [D

    move-object/from16 v17, v0

    .line 229
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 230
    const/16 v19, 0x0

    mul-double/2addr v1, v3

    aput-wide v1, v17, v19

    .line 231
    const/4 v1, 0x1

    mul-double v2, v3, v9

    aput-wide v2, v17, v1

    .line 232
    const/4 v1, 0x2

    aput-wide v11, v17, v1

    .line 233
    const/4 v1, 0x0

    mul-double v2, v7, v5

    aput-wide v2, v18, v1

    .line 234
    const/4 v1, 0x1

    mul-double v2, v7, v13

    aput-wide v2, v18, v1

    .line 235
    const/4 v1, 0x2

    aput-wide v15, v18, v1

    .line 236
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

    .line 240
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

    .prologue
    .line 391
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController$b;->a(Lcom/amap/mapapi/map/MapController$b;)Lcom/amap/mapapi/map/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/bh;->g()Z

    move-result v0

    return v0
.end method

.method a(I)Z
    .locals 6
    .parameter

    .prologue
    .line 281
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
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    invoke-virtual {v0, p1, v1, v1}, Lcom/amap/mapapi/map/MapController$a;->a(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public animateTo(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/amap/mapapi/map/MapController$a;->a(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public animateTo(Lcom/amap/mapapi/core/GeoPoint;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/amap/mapapi/map/MapController$a;->a(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method b(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 286
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

    .prologue
    .line 48
    iget v0, p0, Lcom/amap/mapapi/map/MapController;->a:I

    return v0
.end method

.method public getReqLngSpan()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/amap/mapapi/map/MapController;->b:I

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    const/16 v2, -0xa

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return v1

    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 69
    packed-switch p2, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 86
    goto :goto_0

    .line 71
    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    .line 74
    :pswitch_1
    invoke-virtual {p0, v3, v1}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    .line 77
    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    .line 80
    :pswitch_3
    invoke-virtual {p0, v1, v3}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_1

    .line 69
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
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 323
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    if-eqz v0, :cond_1

    .line 324
    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 341
    :cond_2
    sget-boolean v0, Lcom/amap/mapapi/core/c;->n:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 342
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 343
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 345
    iget-object v2, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0
.end method

.method public setCenter(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 6
    .parameter

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 91
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 94
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 96
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    .line 97
    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mapabc/minimap/map/vmap/VMapProjection;->LatLongToPixels(DDI)Lcom/amap/mapapi/map/bc;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget v2, v0, Lcom/amap/mapapi/map/bc;->a:I

    iput v2, v1, Lcom/amap/mapapi/map/MapView;->centerX:I

    .line 99
    iget-object v1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget v0, v0, Lcom/amap/mapapi/map/bc;->b:I

    iput v0, v1, Lcom/amap/mapapi/map/MapView;->centerY:I

    .line 102
    :cond_0
    return-void
.end method

.method public setFitView(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/core/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    .line 172
    .line 177
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 180
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

    .line 181
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/core/GeoPoint;

    .line 182
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLongitudeE6()I

    move-result v6

    .line 183
    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->getLatitudeE6()I

    move-result v0

    .line 184
    if-ge v6, v5, :cond_2

    move v5, v6

    .line 187
    :cond_2
    if-ge v0, v3, :cond_3

    move v3, v0

    .line 190
    :cond_3
    if-le v6, v4, :cond_4

    move v4, v6

    .line 193
    :cond_4
    if-le v0, v2, :cond_5

    move v2, v0

    .line 180
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 198
    :cond_6
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    add-int v1, v3, v2

    div-int/lit8 v1, v1, 0x2

    add-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v0, v1, v6}, Lcom/amap/mapapi/core/GeoPoint;-><init>(II)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->setCenter(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 200
    sub-int v0, v2, v3

    sub-int v1, v4, v5

    invoke-virtual {p0, v0, v1}, Lcom/amap/mapapi/map/MapController;->zoomToSpan(II)V

    goto :goto_0
.end method

.method public setReqLatSpan(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/amap/mapapi/map/MapController;->a:I

    .line 57
    return-void
.end method

.method public setReqLngSpan(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/amap/mapapi/map/MapController;->b:I

    .line 61
    return-void
.end method

.method public setZoom(I)I
    .locals 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/MapView;->b(I)I

    move-result v2

    .line 109
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget v0, v0, Lcom/amap/mapapi/map/ad;->g:I

    .line 111
    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3, v2}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    .line 117
    :goto_0
    iget-object v3, v1, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getZoomButtonsController()Lcom/amap/mapapi/map/ZoomButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ZoomButtonsController;->getOnZoomListener()Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    move-result-object v1

    .line 121
    if-ge v0, v2, :cond_0

    .line 122
    if-eqz v1, :cond_0

    .line 123
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 126
    :cond_0
    if-le v0, v2, :cond_1

    .line 127
    if-eqz v1, :cond_1

    .line 128
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 132
    :cond_1
    return v2

    .line 113
    :cond_2
    iget v0, v1, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    .line 115
    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3, v2}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    goto :goto_0
.end method

.method public stopAnimation(Z)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController$b;->a()V

    .line 319
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->f:Lcom/amap/mapapi/map/MapController$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapController$a;->a()V

    .line 320
    return-void
.end method

.method public stopPanning()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapController;->d:Z

    .line 356
    return-void
.end method

.method public zoomAnimationAtLevel(IIIZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->e:Lcom/amap/mapapi/map/MapController$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/MapController$b;->a(IIIZZ)V

    .line 367
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->a(I)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amap/mapapi/map/MapController;->a(IIZZ)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->b(I)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/mapapi/map/MapController;->a(IIZZ)Z

    move-result v0

    return v0
.end method

.method public zoomToSpan(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f80

    .line 136
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->b()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->a()I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v2

    .line 142
    iget-object v3, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$e;->b()I

    move-result v3

    .line 143
    iget-object v4, p0, Lcom/amap/mapapi/map/MapController;->c:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/ai$e;->a()I

    move-result v4

    .line 145
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 146
    iput p1, p0, Lcom/amap/mapapi/map/MapController;->a:I

    .line 147
    iput p2, p0, Lcom/amap/mapapi/map/MapController;->b:I

    goto :goto_0

    .line 152
    :cond_2
    int-to-float v5, p1

    int-to-float v4, v4

    div-float v4, v5, v4

    .line 154
    int-to-float v5, p2

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 156
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 157
    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    .line 158
    invoke-direct {p0, v3}, Lcom/amap/mapapi/map/MapController;->a(F)I

    move-result v1

    sub-int v1, v2, v1

    .line 159
    if-gt v1, v0, :cond_6

    .line 168
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapController;->setZoom(I)I

    goto :goto_0

    .line 162
    :cond_4
    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_5

    .line 163
    div-float v0, v8, v3

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/MapController;->a(F)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 164
    if-lt v0, v1, :cond_3

    move v0, v1

    .line 165
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

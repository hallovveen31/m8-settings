.class public Lcom/amap/mapapi/map/ai$a;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/amap/mapapi/core/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/mapapi/core/t",
            "<",
            "Lcom/amap/mapapi/map/w;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/amap/mapapi/core/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/mapapi/core/t",
            "<",
            "Lcom/amap/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:Lcom/amap/mapapi/map/f;

.field public e:Z

.field public f:Z

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field final synthetic k:Lcom/amap/mapapi/map/ai;

.field private l:Z

.field private m:Lcom/amap/mapapi/core/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/mapapi/core/h",
            "<",
            "Lcom/amap/mapapi/map/p;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapActivity;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 615
    iput-object p1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ai$a;->l:Z

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    .line 598
    new-instance v0, Lcom/amap/mapapi/core/t;

    invoke-direct {v0}, Lcom/amap/mapapi/core/t;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    .line 599
    new-instance v0, Lcom/amap/mapapi/core/h;

    invoke-direct {v0}, Lcom/amap/mapapi/core/h;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->m:Lcom/amap/mapapi/core/h;

    .line 601
    sget-object v0, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->n:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    .line 612
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ai$a;->e:Z

    .line 613
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ai$a;->f:Z

    .line 639
    iput v1, p0, Lcom/amap/mapapi/map/ai$a;->o:I

    .line 640
    iput v1, p0, Lcom/amap/mapapi/map/ai$a;->p:I

    .line 641
    const-string v0, "GridMapV12"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->g:Ljava/lang/String;

    .line 642
    const-string v0, "SatelliteMap"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->h:Ljava/lang/String;

    .line 643
    const-string v0, "GridTmc"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->i:Ljava/lang/String;

    .line 645
    const-string v0, "SateliteTmc"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->j:Ljava/lang/String;

    .line 1055
    iput-boolean v1, p0, Lcom/amap/mapapi/map/ai$a;->q:Z

    .line 616
    if-nez p2, :cond_0

    .line 637
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/amap/mapapi/map/ai$a;->f()V

    .line 620
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 621
    invoke-virtual {p2}, Lcom/amap/mapapi/map/MapActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 623
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit16 v1, v1, 0x100

    add-int/lit8 v1, v1, 0x2

    .line 625
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit16 v0, v0, 0x100

    add-int/lit8 v0, v0, 0x2

    .line 627
    mul-int v2, v1, v0

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/ai$a;->o:I

    .line 628
    iget v0, p0, Lcom/amap/mapapi/map/ai$a;->o:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/mapapi/map/ai$a;->o:I

    .line 629
    iget v0, p0, Lcom/amap/mapapi/map/ai$a;->o:I

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/ai$a;->p:I

    .line 630
    iget v0, p0, Lcom/amap/mapapi/map/ai$a;->p:I

    if-nez v0, :cond_2

    .line 631
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/mapapi/map/ai$a;->p:I

    .line 636
    :cond_1
    :goto_1
    invoke-direct {p0, p2}, Lcom/amap/mapapi/map/ai$a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 632
    :cond_2
    iget v0, p0, Lcom/amap/mapapi/map/ai$a;->p:I

    if-le v0, v3, :cond_1

    .line 633
    iput v3, p0, Lcom/amap/mapapi/map/ai$a;->p:I

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 648
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Lcom/amap/mapapi/core/t;

    invoke-direct {v0}, Lcom/amap/mapapi/core/t;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    .line 659
    :cond_0
    new-instance v0, Lcom/amap/mapapi/map/w;

    invoke-direct {v0}, Lcom/amap/mapapi/map/w;-><init>()V

    .line 660
    new-instance v1, Lcom/amap/mapapi/map/ai$a$1;

    invoke-direct {v1, p0}, Lcom/amap/mapapi/map/ai$a$1;-><init>(Lcom/amap/mapapi/map/ai$a;)V

    iput-object v1, v0, Lcom/amap/mapapi/map/w;->j:Lcom/amap/mapapi/map/bb;

    .line 674
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    .line 675
    iput-boolean v2, v0, Lcom/amap/mapapi/map/w;->e:Z

    .line 676
    iput-boolean v2, v0, Lcom/amap/mapapi/map/w;->d:Z

    .line 677
    iput-boolean v2, v0, Lcom/amap/mapapi/map/w;->f:Z

    .line 678
    iput-boolean v2, v0, Lcom/amap/mapapi/map/w;->g:Z

    .line 679
    const/16 v1, 0x12

    iput v1, v0, Lcom/amap/mapapi/map/w;->b:I

    .line 680
    const/4 v1, 0x4

    iput v1, v0, Lcom/amap/mapapi/map/w;->c:I

    .line 681
    invoke-virtual {p0, v0, p1}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/w;Landroid/content/Context;)Z

    .line 682
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1250
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v1, :cond_4

    .line 1252
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/mapapi/map/MapView;->isInited:Z

    if-nez v1, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/map/MapView;->paintVectorMap(Landroid/graphics/Canvas;)V

    .line 1256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1258
    iget-object v2, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v2}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->getMapAngle()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1261
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1262
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->size()I

    move-result v2

    move v1, v0

    .line 1264
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1265
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 1266
    iget-object v3, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    const-string v4, "GridTmc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/amap/mapapi/map/w;->f:Z

    if-eqz v3, :cond_2

    .line 1268
    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/w;->a(Landroid/graphics/Canvas;)V

    .line 1264
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1271
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1280
    :cond_4
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->size()I

    move-result v2

    move v1, v0

    .line 1282
    :goto_2
    if-ge v1, v2, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 1284
    if-nez v0, :cond_6

    .line 1282
    :cond_5
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1287
    :cond_6
    iget-boolean v3, v0, Lcom/amap/mapapi/map/w;->f:Z

    if-eqz v3, :cond_5

    .line 1290
    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/w;->a(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method private a(J)Z
    .locals 4
    .parameter

    .prologue
    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/ai$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/amap/mapapi/map/ai$a;->q:Z

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1313
    .line 1318
    invoke-static {}, Lcom/amap/mapapi/core/e;->a()J

    move-result-wide v4

    .line 1345
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v7, v0

    move-object v6, v0

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/Overlay;

    .line 1346
    if-eqz v0, :cond_0

    .line 1349
    instance-of v1, v0, Lcom/amap/mapapi/map/RouteOverlay;

    if-eqz v1, :cond_1

    .line 1350
    check-cast v0, Lcom/amap/mapapi/map/RouteOverlay;

    move-object v7, v0

    .line 1351
    goto :goto_0

    .line 1353
    :cond_1
    instance-of v1, v0, Lcom/amap/mapapi/map/MyLocationOverlay;

    if-eqz v1, :cond_2

    .line 1354
    check-cast v0, Lcom/amap/mapapi/map/MyLocationOverlay;

    :goto_1
    move-object v6, v0

    .line 1356
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/Overlay;->draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z

    move-object v0, v6

    goto :goto_1

    .line 1360
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->n:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    sget-object v1, Lcom/amap/mapapi/map/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    if-ne v0, v1, :cond_4

    .line 1361
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ai$a;->c(Landroid/graphics/Canvas;)V

    .line 1364
    :cond_4
    if-eqz v6, :cond_5

    .line 1365
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/MyLocationOverlay;->draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z

    .line 1367
    :cond_5
    if-eqz v7, :cond_6

    .line 1368
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    move-object v0, v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/RouteOverlay;->draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z

    .line 1371
    :cond_6
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->m:Lcom/amap/mapapi/core/h;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/h;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/p;

    .line 1372
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/p;->draw(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;ZJ)Z

    goto :goto_2

    .line 1375
    :cond_7
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 778
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    .line 798
    :cond_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v3

    move v1, v2

    .line 783
    :goto_0
    if-ge v1, v3, :cond_0

    .line 784
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 785
    if-nez v0, :cond_3

    .line 783
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 788
    :cond_3
    iget-object v4, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/amap/mapapi/map/w;->e:Z

    if-ne v4, v5, :cond_2

    .line 790
    iget-boolean v4, v0, Lcom/amap/mapapi/map/w;->f:Z

    if-ne v4, v5, :cond_2

    .line 791
    iput-boolean v2, v0, Lcom/amap/mapapi/map/w;->f:Z

    goto :goto_1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1540
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v5

    move v2, v3

    .line 1544
    :goto_0
    if-ge v2, v5, :cond_2

    .line 1545
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amap/mapapi/map/w;

    .line 1546
    if-nez v1, :cond_1

    .line 1544
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1549
    :cond_1
    iget-boolean v0, v1, Lcom/amap/mapapi/map/w;->f:Z

    if-eqz v0, :cond_0

    .line 1552
    iget-boolean v0, v1, Lcom/amap/mapapi/map/w;->e:Z

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, v1, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v6

    move v4, v3

    .line 1556
    :goto_1
    if-ge v4, v6, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v7

    iget-object v0, v1, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v4}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    invoke-virtual {p0, p1, v7, v0}, Lcom/amap/mapapi/map/ai$a;->a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/at$a;)V

    .line 1556
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1561
    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 801
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    if-nez v0, :cond_0

    move v0, v1

    .line 815
    :goto_0
    return v0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v4

    move v3, v1

    .line 806
    :goto_1
    if-ge v3, v4, :cond_3

    .line 807
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 808
    if-nez v0, :cond_2

    .line 806
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 811
    :cond_2
    iget-object v0, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 812
    goto :goto_0

    :cond_3
    move v0, v1

    .line 815
    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 895
    .line 896
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v2

    .line 897
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 898
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 899
    if-nez v0, :cond_0

    .line 897
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 902
    :cond_0
    iput v1, v0, Lcom/amap/mapapi/map/w;->k:I

    goto :goto_1

    .line 904
    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 927
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 928
    if-eqz v0, :cond_1

    const-string v1, "OMAP_SS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_0

    const-string v1, "omap_ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_0

    const-string v1, "MT810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_0

    const-string v1, "MT720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_0

    const-string v1, "GT-I9008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_1

    .line 934
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/mapapi/core/c;->o:Z

    .line 937
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/mapapi/map/at$a;)Landroid/graphics/PointF;
    .locals 1
    .parameter

    .prologue
    .line 1487
    if-nez p1, :cond_0

    .line 1488
    const/4 v0, 0x0

    .line 1491
    :goto_0
    return-object v0

    .line 1490
    :cond_0
    iget-object v0, p1, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Lcom/amap/mapapi/map/w;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 907
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 922
    :goto_0
    return-object v0

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v3

    .line 913
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 914
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 915
    if-nez v0, :cond_3

    .line 913
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 918
    :cond_3
    iget-object v4, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 922
    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 945
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v3

    move v1, v2

    .line 948
    :goto_0
    if-ge v1, v3, :cond_1

    .line 949
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/core/t;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/Overlay;

    .line 950
    instance-of v4, v0, Lcom/amap/mapapi/map/MyLocationOverlay;

    if-eqz v4, :cond_0

    .line 951
    check-cast v0, Lcom/amap/mapapi/map/MyLocationOverlay;

    .line 952
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/amap/mapapi/map/MyLocationOverlay;->a()V

    .line 948
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->m:Lcom/amap/mapapi/core/h;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/h;->size()I

    move-result v3

    move v1, v2

    .line 963
    :goto_1
    if-ge v1, v3, :cond_3

    .line 964
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->m:Lcom/amap/mapapi/core/h;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/core/h;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/p;

    .line 965
    if-eqz v0, :cond_2

    .line 966
    invoke-virtual {v0}, Lcom/amap/mapapi/map/p;->b()V

    .line 963
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 969
    :cond_3
    return-void
.end method

.method public a(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1070
    iget-wide v0, p0, Lcom/amap/mapapi/map/ai$a;->c:J

    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/map/ai$a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/ai$a;->b(IIII)V

    .line 1075
    :goto_0
    return-void

    .line 1073
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/ai$a;->q:Z

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/amap/mapapi/map/ai$a;->l:Z

    if-eqz v0, :cond_1

    .line 1200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1201
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1202
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1204
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ai$a;->a(Landroid/graphics/Canvas;)V

    .line 1206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1210
    iget-boolean v0, p0, Lcom/amap/mapapi/map/ai$a;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/mapapi/map/ai$a;->f:Z

    if-nez v0, :cond_0

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/ai$a;->a(Z)V

    .line 1224
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$c;->b(Landroid/graphics/Matrix;)Z

    .line 1225
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$c;->b(F)Z

    .line 1226
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$c;->c()V

    .line 1236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->h()V

    .line 1237
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ai$a;->b(Landroid/graphics/Canvas;)V

    .line 1238
    return-void

    .line 1233
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ai$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/at$a;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4380

    .line 1518
    invoke-virtual {p0, p3}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/at$a;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1520
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1523
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1524
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1525
    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1526
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1527
    return-void
.end method

.method public a(Lcom/amap/mapapi/map/MapView$ReticleDrawMode;)V
    .locals 0
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/amap/mapapi/map/ai$a;->n:Lcom/amap/mapapi/map/MapView$ReticleDrawMode;

    .line 941
    return-void
.end method

.method public a(Lcom/amap/mapapi/map/p;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1153
    if-eqz p2, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->m:Lcom/amap/mapapi/core/h;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/core/h;->a(Ljava/lang/Object;)V

    .line 1158
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->m:Lcom/amap/mapapi/core/h;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/core/h;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/amap/mapapi/map/ai$a;->l:Z

    .line 1140
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1571
    const/4 v0, 0x0

    .line 1572
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/Overlay;

    .line 1573
    iget-object v2, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v2}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/amap/mapapi/map/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    .line 1574
    if-eqz v0, :cond_0

    .line 1578
    :cond_1
    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 1607
    const/4 v0, 0x0

    .line 1608
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/Overlay;

    .line 1609
    iget-object v2, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v2}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/amap/mapapi/map/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    .line 1610
    if-eqz v0, :cond_0

    .line 1614
    :cond_1
    return v0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1022
    .line 1027
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ad;->b()Lcom/amap/mapapi/map/at$a;

    move-result-object v5

    .line 1030
    const/4 v3, 0x0

    .line 1031
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v6

    move v4, v2

    .line 1032
    :goto_0
    if-ge v4, v6, :cond_4

    .line 1033
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v4}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/w;->e:Z

    if-ne v0, v1, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v4}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    iget-object v0, v0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    .line 1038
    :goto_1
    if-nez v0, :cond_1

    .line 1052
    :goto_2
    return v2

    .line 1032
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 1044
    iget v4, v0, Lcom/amap/mapapi/map/at$a;->b:I

    iget v6, v5, Lcom/amap/mapapi/map/at$a;->b:I

    if-ne v4, v6, :cond_2

    iget v4, v0, Lcom/amap/mapapi/map/at$a;->c:I

    iget v6, v5, Lcom/amap/mapapi/map/at$a;->c:I

    if-ne v4, v6, :cond_2

    iget v4, v0, Lcom/amap/mapapi/map/at$a;->d:I

    iget v6, v5, Lcom/amap/mapapi/map/at$a;->d:I

    if-ne v4, v6, :cond_2

    .line 1046
    iget v0, v0, Lcom/amap/mapapi/map/at$a;->g:I

    if-ltz v0, :cond_3

    move v0, v1

    :goto_3
    move v2, v0

    .line 1052
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method a(Lcom/amap/mapapi/map/w;Landroid/content/Context;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 819
    if-nez p1, :cond_1

    .line 867
    :cond_0
    :goto_0
    return v6

    .line 823
    :cond_1
    iget-object v0, p1, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v7, :cond_0

    .line 826
    iget-object v0, p1, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/mapapi/map/ai$a;->c(Ljava/lang/String;)Z

    move-result v0

    .line 827
    if-eq v0, v7, :cond_0

    .line 831
    new-instance v0, Lcom/amap/mapapi/core/t;

    invoke-direct {v0}, Lcom/amap/mapapi/core/t;-><init>()V

    iput-object v0, p1, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    .line 839
    new-instance v0, Lcom/amap/mapapi/map/h;

    iget v1, p0, Lcom/amap/mapapi/map/ai$a;->o:I

    iget v2, p0, Lcom/amap/mapapi/map/ai$a;->p:I

    iget-boolean v3, p1, Lcom/amap/mapapi/map/w;->h:Z

    iget-wide v4, p1, Lcom/amap/mapapi/map/w;->i:J

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/h;-><init>(IIZJ)V

    iput-object v0, p1, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    .line 841
    new-instance v0, Lcom/amap/mapapi/map/j;

    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/mapapi/map/MapView;->e:Z

    invoke-direct {v0, p2, v1, p1}, Lcom/amap/mapapi/map/j;-><init>(Landroid/content/Context;ZLcom/amap/mapapi/map/w;)V

    iput-object v0, p1, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    .line 843
    iget-object v0, p1, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    iget-object v1, p1, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/j;->a(Lcom/amap/mapapi/map/h;)V

    .line 846
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v0

    .line 847
    iget-boolean v1, p1, Lcom/amap/mapapi/map/w;->e:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/core/t;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 863
    :goto_1
    invoke-direct {p0}, Lcom/amap/mapapi/map/ai$a;->e()V

    .line 864
    iget-boolean v1, p1, Lcom/amap/mapapi/map/w;->f:Z

    if-ne v1, v7, :cond_3

    .line 865
    iget-object v1, p1, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v7}, Lcom/amap/mapapi/map/ai$a;->a(Ljava/lang/String;Z)Z

    :cond_3
    move v6, v0

    .line 867
    goto :goto_0

    .line 852
    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_7

    .line 853
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 854
    if-nez v0, :cond_6

    .line 852
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 857
    :cond_6
    iget-boolean v0, v0, Lcom/amap/mapapi/map/w;->e:Z

    if-ne v0, v7, :cond_5

    .line 858
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v1, p1}, Lcom/amap/mapapi/core/t;->add(ILjava/lang/Object;)V

    move v0, v6

    .line 859
    goto :goto_1

    :cond_7
    move v0, v6

    goto :goto_1
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 685
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 716
    :goto_0
    return v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v4

    move v3, v1

    .line 690
    :goto_1
    if-ge v3, v4, :cond_5

    .line 691
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 692
    if-nez v0, :cond_2

    .line 690
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 695
    :cond_2
    iget-object v5, v0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_1

    .line 696
    iput-boolean p2, v0, Lcom/amap/mapapi/map/w;->f:Z

    .line 697
    iget-boolean v5, v0, Lcom/amap/mapapi/map/w;->e:Z

    if-nez v5, :cond_3

    move v0, v2

    .line 699
    goto :goto_0

    .line 701
    :cond_3
    if-ne p2, v2, :cond_1

    .line 702
    iget v3, v0, Lcom/amap/mapapi/map/w;->b:I

    iget v4, v0, Lcom/amap/mapapi/map/w;->c:I

    if-le v3, v4, :cond_4

    .line 703
    iget-object v3, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    iget v4, v0, Lcom/amap/mapapi/map/w;->b:I

    invoke-virtual {v3, v4}, Lcom/amap/mapapi/map/ai$d;->b(I)V

    .line 705
    iget-object v3, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    iget v0, v0, Lcom/amap/mapapi/map/w;->c:I

    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/ai$d;->c(I)V

    .line 708
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/ai$a;->b(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v1, v1}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    move v0, v2

    .line 710
    goto :goto_0

    :cond_5
    move v0, v1

    .line 716
    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 973
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v3

    move v1, v2

    .line 975
    :goto_0
    if-ge v1, v3, :cond_1

    .line 976
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/w;

    .line 977
    if-nez v0, :cond_0

    .line 975
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {v0}, Lcom/amap/mapapi/map/w;->a()V

    .line 981
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/core/t;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/mapapi/map/ai$a;->a:Lcom/amap/mapapi/core/t;

    .line 992
    return-void
.end method

.method public b(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/MapView;->postInvalidate(IIII)V

    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/map/ai$a;->c:J

    .line 1090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/ai$a;->q:Z

    .line 1091
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1589
    const/4 v0, 0x0

    .line 1590
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/Overlay;

    .line 1591
    iget-object v2, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v2}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/amap/mapapi/map/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    .line 1592
    if-eqz v0, :cond_0

    .line 1596
    :cond_1
    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 1624
    const/4 v0, 0x0

    .line 1625
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/t;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/Overlay;

    .line 1626
    if-eqz v0, :cond_1

    .line 1627
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/mapapi/map/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    .line 1629
    :goto_1
    if-eqz v0, :cond_0

    .line 1637
    :goto_2
    return v0

    :cond_0
    move v1, v0

    .line 1630
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    return-object v0
.end method

.method protected c(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    .line 1649
    const/4 v2, 0x0

    .line 1650
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v3

    .line 1652
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->b:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/t;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/Overlay;

    .line 1654
    if-eqz v0, :cond_2

    .line 1655
    instance-of v4, v0, Lcom/amap/mapapi/map/ItemizedOverlay;

    if-eqz v4, :cond_1

    .line 1656
    check-cast v0, Lcom/amap/mapapi/map/ItemizedOverlay;

    .line 1659
    iget-object v4, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v4}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/amap/mapapi/map/ItemizedOverlay;->onTap(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1671
    :cond_0
    return v2

    .line 1664
    :cond_1
    iget-object v4, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v4}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/amap/mapapi/map/Overlay;->onTap(Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1652
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$a;->k:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->postInvalidate()V

    goto :goto_0
.end method

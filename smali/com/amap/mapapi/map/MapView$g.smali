.class public Lcom/amap/mapapi/map/MapView$g;
.super Ljava/lang/Object;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/drawable/StateListDrawable;

.field h:Landroid/graphics/drawable/StateListDrawable;

.field final synthetic i:Lcom/amap/mapapi/map/MapView;

.field private j:Lcom/amap/mapapi/map/MapView$f;

.field private k:Lcom/amap/mapapi/map/MapView$f;

.field private l:Lcom/amap/mapapi/map/q;

.field private m:Z

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1379
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView$g;->m:Z

    .line 1328
    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView$g;->n:Z

    .line 1329
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->o:Landroid/os/Handler;

    .line 1332
    new-instance v0, Lcom/amap/mapapi/map/ah;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ah;-><init>(Lcom/amap/mapapi/map/MapView$g;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->p:Ljava/lang/Runnable;

    .line 1444
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->a:Landroid/graphics/Bitmap;

    .line 1445
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->b:Landroid/graphics/Bitmap;

    .line 1446
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->c:Landroid/graphics/Bitmap;

    .line 1447
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->d:Landroid/graphics/Bitmap;

    .line 1448
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->e:Landroid/graphics/Bitmap;

    .line 1449
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->f:Landroid/graphics/Bitmap;

    .line 1450
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 1451
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->h:Landroid/graphics/drawable/StateListDrawable;

    .line 1380
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView$g;->h()V

    .line 1383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapView$g;->b(Z)V

    .line 1384
    return-void
.end method

.method private a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    const/4 v1, -0x2

    .line 1542
    new-instance v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    div-int/lit8 v2, p1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, p2, -0x8

    const/16 v5, 0x53

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IIIII)V

    .line 1547
    new-instance v2, Lcom/amap/mapapi/map/MapView$LayoutParams;

    div-int/lit8 v3, p1, 0x2

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, p2, -0x8

    const/16 v7, 0x55

    move v3, v1

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/amap/mapapi/map/MapView$LayoutParams;-><init>(IIIII)V

    .line 1551
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v1, v3}, Lcom/amap/mapapi/map/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v8, v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v1, v3, v0}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1555
    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v8, v0, :cond_1

    .line 1556
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1559
    :goto_1
    return-void

    .line 1554
    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v1, v3, v0}, Lcom/amap/mapapi/map/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView$g;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1323
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/MapView$g;->a(II)V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1387
    new-instance v0, Lcom/amap/mapapi/map/MapView$f;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    const/16 v2, 0x1001

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/map/MapView$f;-><init>(Lcom/amap/mapapi/map/MapView;I)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    .line 1388
    new-instance v0, Lcom/amap/mapapi/map/MapView$f;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    const/16 v2, 0x1002

    invoke-direct {v0, v1, v2}, Lcom/amap/mapapi/map/MapView$f;-><init>(Lcom/amap/mapapi/map/MapView;I)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    .line 1389
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->generateDefaultLayoutParams()Lcom/amap/mapapi/map/MapView$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1390
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->generateDefaultLayoutParams()Lcom/amap/mapapi/map/MapView$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    new-instance v0, Lcom/amap/mapapi/map/q;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/q;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->l:Lcom/amap/mapapi/map/q;

    .line 1392
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->l:Lcom/amap/mapapi/map/q;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/p;Z)V

    .line 1394
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView$g;->i()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 1395
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView$g;->j()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->h:Landroid/graphics/drawable/StateListDrawable;

    .line 1396
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->h:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->g:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1398
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$g;->d()V

    .line 1399
    return-void
.end method

.method private i()Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1454
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1455
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1456
    :cond_0
    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->h:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->a:Landroid/graphics/Bitmap;

    .line 1460
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1461
    :cond_2
    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->j:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->b:Landroid/graphics/Bitmap;

    .line 1465
    :cond_3
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1467
    :cond_4
    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->l:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->c:Landroid/graphics/Bitmap;

    .line 1472
    :cond_5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$g;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1473
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$g;->c:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1474
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/amap/mapapi/map/MapView$g;->b:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1475
    invoke-static {}, Lcom/amap/mapapi/map/MapView;->g()[I

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1476
    invoke-static {}, Lcom/amap/mapapi/map/MapView;->h()[I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1477
    invoke-static {}, Lcom/amap/mapapi/map/MapView;->i()[I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1478
    return-object v0
.end method

.method private j()Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1482
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1483
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1484
    :cond_0
    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->i:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->d:Landroid/graphics/Bitmap;

    .line 1488
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1490
    :cond_2
    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->k:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->e:Landroid/graphics/Bitmap;

    .line 1494
    :cond_3
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1496
    :cond_4
    sget-object v1, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v2, Lcom/amap/mapapi/core/c$a;->m:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->f:Landroid/graphics/Bitmap;

    .line 1501
    :cond_5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$g;->d:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1502
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapView$g;->f:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1503
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/amap/mapapi/map/MapView$g;->e:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1504
    invoke-static {}, Lcom/amap/mapapi/map/MapView;->j()[I

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1505
    invoke-static {}, Lcom/amap/mapapi/map/MapView;->k()[I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1506
    invoke-static {}, Lcom/amap/mapapi/map/MapView;->l()[I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1507
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1376
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/mapapi/map/MapView$g;->a(Z)V

    .line 1377
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView$g;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    if-eqz p1, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1357
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1360
    :cond_2
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$g;->d()V

    .line 1363
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$f;->a(Z)V

    .line 1364
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$f;->a(Z)V

    .line 1366
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ZoomButtonsController;->getOnZoomListener()Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView$g;->n:Z

    if-eq v0, p1, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->d:Lcom/amap/mapapi/map/ZoomButtonsController;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ZoomButtonsController;->getOnZoomListener()Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    .line 1371
    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapView$g;->n:Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapView$g;->m:Z

    .line 1403
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/MapView$g;->a(Z)V

    .line 1404
    iput-boolean p1, p0, Lcom/amap/mapapi/map/MapView$g;->m:Z

    .line 1405
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->l:Lcom/amap/mapapi/map/q;

    invoke-virtual {v0, v1, p1}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/p;Z)V

    .line 1406
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$f;->isShown()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1418
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1419
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->a:Landroid/graphics/Bitmap;

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1422
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->b:Landroid/graphics/Bitmap;

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1425
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->c:Landroid/graphics/Bitmap;

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1428
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->d:Landroid/graphics/Bitmap;

    .line 1430
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1431
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->e:Landroid/graphics/Bitmap;

    .line 1433
    :cond_4
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 1434
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->f:Landroid/graphics/Bitmap;

    .line 1436
    :cond_5
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->g:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_6

    .line 1437
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 1439
    :cond_6
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->h:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_7

    .line 1440
    iput-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->h:Landroid/graphics/drawable/StateListDrawable;

    .line 1442
    :cond_7
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$f;->b(Z)V

    .line 1414
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$f;->b(Z)V

    .line 1415
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1518
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/MapView$f;->setPressed(Z)V

    .line 1525
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/MapView$f;->setEnabled(Z)V

    .line 1529
    :goto_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1534
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/MapView$f;->setPressed(Z)V

    .line 1535
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/map/MapView$f;->setEnabled(Z)V

    .line 1539
    :goto_1
    return-void

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/MapView$f;->setEnabled(Z)V

    goto :goto_0

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/map/MapView$f;->setEnabled(Z)V

    goto :goto_1
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$f;->bringToFront()V

    .line 1566
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$f;->bringToFront()V

    .line 1567
    return-void
.end method

.method public f()Lcom/amap/mapapi/map/MapView$f;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->k:Lcom/amap/mapapi/map/MapView$f;

    return-object v0
.end method

.method public g()Lcom/amap/mapapi/map/MapView$f;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$g;->j:Lcom/amap/mapapi/map/MapView$f;

    return-object v0
.end method

.class Lcom/amap/mapapi/map/MapController$a;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lcom/amap/mapapi/map/ba;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapController;

.field private b:Lcom/amap/mapapi/map/az;

.field private c:Landroid/os/Message;

.field private d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/MapController;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 426
    iput-object p1, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->b:Lcom/amap/mapapi/map/az;

    .line 428
    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->c:Landroid/os/Message;

    .line 429
    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/map/az;
    .locals 7
    .parameter

    .prologue
    .line 442
    new-instance v0, Lcom/amap/mapapi/map/az;

    const/16 v1, 0x1f4

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v3}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, v3, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v4, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v4}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v5

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/map/az;-><init>(IILcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;ILcom/amap/mapapi/map/ba;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->b:Lcom/amap/mapapi/map/az;

    .line 450
    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->c:Landroid/os/Message;

    .line 451
    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->d:Ljava/lang/Runnable;

    .line 452
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->b:Lcom/amap/mapapi/map/az;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->b:Lcom/amap/mapapi/map/az;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/az;->d()V

    .line 458
    :cond_0
    return-void
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 4
    .parameter

    .prologue
    const-wide/high16 v2, -0x8000

    .line 462
    if-nez p1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ad;->b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/MapController;->setCenter(Lcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapController;->setCenter(Lcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/mapapi/map/ai$b;->a:Z

    .line 433
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {p1}, Lcom/amap/mapapi/core/GeoPoint;->e()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/mapapi/map/ad;->k:Lcom/amap/mapapi/core/GeoPoint;

    .line 434
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapController$a;->a()V

    .line 435
    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/MapController$a;->b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/map/az;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->b:Lcom/amap/mapapi/map/az;

    .line 436
    iput-object p2, p0, Lcom/amap/mapapi/map/MapController$a;->c:Landroid/os/Message;

    .line 437
    iput-object p3, p0, Lcom/amap/mapapi/map/MapController$a;->d:Ljava/lang/Runnable;

    .line 438
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->b:Lcom/amap/mapapi/map/az;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/az;->c()V

    .line 439
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->c:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->c:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/amap/mapapi/map/MapController$a;->c:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapController$a;->c()V

    .line 485
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$a;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/mapapi/map/ai$b;->a:Z

    .line 488
    :cond_2
    return-void
.end method

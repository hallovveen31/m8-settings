.class public Lcom/amap/mapapi/route/Route$a;
.super Lcom/amap/mapapi/route/Route$d;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/route/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/route/Route;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/route/Route;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$d;-><init>(Lcom/amap/mapapi/route/Route;)V

    return-void
.end method

.method private h(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    const-string v0, "\u6b65\u884c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u53bb\u5f80"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 528
    const-string v0, "\u76ee\u7684\u5730"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\u5927\u7ea6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v2, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/mapapi/route/Segment;->getLength()I

    move-result v2

    invoke-static {v2}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 530
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/BusSegment;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8f66\u7ad9"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private i(I)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 541
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/BusSegment;

    .line 542
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    const-string v2, "%s ( %s -- %s ) - %s%s\n"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getFirstStationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLastStationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLastStationName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "\u65b9\u5411"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u8f66 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getOnStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f66 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getOffStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const-string v2, "%s%d%s (%s)"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "\u516c\u4ea4"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getStopNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "\u7ad9"

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5927\u7ea6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j(I)Landroid/text/Spanned;
    .locals 4
    .parameter

    .prologue
    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    const-string v0, "\u6b65\u884c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u53bb\u5f80"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 562
    const-string v0, "\u76ee\u7684\u5730"

    const-string v2, "#808080"

    invoke-static {v0, v2}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :goto_0
    invoke-static {}, Lcom/amap/mapapi/core/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5927\u7ea6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v2, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/mapapi/route/Segment;->getLength()I

    move-result v2

    invoke-static {v2}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/BusSegment;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8f66\u7ad9"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#808080"

    invoke-static {v0, v2}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private k(I)Landroid/text/Spanned;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 578
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/BusSegment;

    .line 579
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#000000"

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-static {v4}, Lcom/amap/mapapi/core/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLastStationName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#000000"

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    const-string v2, "\u65b9\u5411"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-static {}, Lcom/amap/mapapi/core/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    const-string v2, "\u4e0a\u8f66 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getOnStationName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#000000"

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    invoke-static {v4}, Lcom/amap/mapapi/core/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-static {}, Lcom/amap/mapapi/core/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    const-string v2, "\u4e0b\u8f66 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getOffStationName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#000000"

    invoke-static {v2, v3}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-static {}, Lcom/amap/mapapi/core/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    const-string v2, "%s%d%s , "

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "\u516c\u4ea4"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getStopNumber()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "\u7ad9"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5927\u7ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLength()I

    move-result v0

    invoke-static {v0}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->b(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Paint;
    .locals 2
    .parameter

    .prologue
    .line 457
    sget-object v0, Lcom/amap/mapapi/core/r;->k:Landroid/graphics/Paint;

    .line 458
    iget-object v1, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v1

    instance-of v1, v1, Lcom/amap/mapapi/route/BusSegment;

    if-eqz v1, :cond_0

    .line 459
    sget-object v0, Lcom/amap/mapapi/core/r;->l:Landroid/graphics/Paint;

    .line 461
    :cond_0
    return-object v0
.end method

.method public a(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;Lcom/amap/mapapi/map/RouteMessageHandler;Lcom/amap/mapapi/map/RouteOverlay;I)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x3

    .line 635
    .line 638
    invoke-virtual {p0, p5}, Lcom/amap/mapapi/route/Route$a;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 640
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    if-ne p5, v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 677
    :goto_0
    return-object v0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p5}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    .line 645
    instance-of v3, v0, Lcom/amap/mapapi/route/BusSegment;

    if-eqz v3, :cond_4

    .line 646
    check-cast v0, Lcom/amap/mapapi/route/BusSegment;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v0

    .line 649
    :goto_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 650
    goto :goto_0

    .line 653
    :cond_2
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 654
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 657
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 658
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 660
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    if-eqz v0, :cond_3

    .line 665
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 666
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    const/high16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    invoke-virtual {v1, v4, v7, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 669
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    :cond_3
    new-instance v0, Lcom/amap/mapapi/route/b;

    const/4 v5, 0x4

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/route/b;-><init>(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteMessageHandler;Lcom/amap/mapapi/map/RouteOverlay;II)V

    invoke-virtual {v0, v6}, Lcom/amap/mapapi/route/b;->a(Landroid/view/View;)V

    move-object v0, v6

    .line 677
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v6

    move v2, v3

    move v4, v1

    .line 470
    :goto_0
    if-ge v2, v6, :cond_1

    .line 471
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, v2}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/BusSegment;

    .line 472
    if-eq v2, v3, :cond_0

    .line 473
    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_0
    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLineName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0}, Lcom/amap/mapapi/route/BusSegment;->getLength()I

    move-result v0

    add-int/2addr v4, v0

    .line 470
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 479
    :cond_1
    if-eqz v4, :cond_2

    .line 480
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move v0, v1

    move v2, v1

    .line 483
    :goto_1
    if-ge v0, v6, :cond_3

    .line 484
    iget-object v7, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v7, v0}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v7

    .line 485
    invoke-virtual {v7}, Lcom/amap/mapapi/route/Segment;->getLength()I

    move-result v7

    add-int/2addr v2, v7

    .line 483
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 488
    :cond_3
    const-string v0, "%s%s  %s%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "\u4e58\u8f66"

    aput-object v7, v6, v1

    invoke-static {v4}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x2

    const-string v3, "\u6b65\u884c"

    aput-object v3, v6, v1

    const/4 v1, 0x3

    invoke-static {v2}, Lcom/amap/mapapi/route/Route;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 497
    invoke-super {p0, p1}, Lcom/amap/mapapi/route/Route$d;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-object v0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/mapapi/route/BusSegment;

    if-eqz v0, :cond_1

    .line 502
    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$a;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$a;->h(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)Landroid/text/Spanned;
    .locals 1
    .parameter

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/amap/mapapi/route/Route$d;->c(I)Landroid/text/Spanned;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-object v0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/mapapi/route/BusSegment;

    if-eqz v0, :cond_1

    .line 517
    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$a;->k(I)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/mapapi/route/Route$a;->j(I)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public d(I)I
    .locals 1
    .parameter

    .prologue
    .line 608
    :cond_0
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    .line 610
    instance-of v0, v0, Lcom/amap/mapapi/route/BusSegment;

    if-eqz v0, :cond_0

    .line 615
    :cond_1
    return p1
.end method

.method public e(I)I
    .locals 2
    .parameter

    .prologue
    .line 619
    iget-object v0, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v0}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 620
    add-int/lit8 v0, p1, -0x1

    .line 630
    :cond_0
    :goto_0
    return v0

    :cond_1
    move p1, v0

    .line 623
    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-lez v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v1

    .line 625
    instance-of v1, v1, Lcom/amap/mapapi/route/BusSegment;

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method protected f(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    iget-object v1, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 684
    sget-object v0, Lcom/amap/mapapi/core/r;->c:Landroid/graphics/drawable/Drawable;

    .line 693
    :cond_0
    :goto_0
    return-object v0

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1, p1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v1

    instance-of v1, v1, Lcom/amap/mapapi/route/BusSegment;

    if-eqz v1, :cond_2

    .line 687
    sget-object v0, Lcom/amap/mapapi/core/r;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 688
    :cond_2
    if-nez p1, :cond_3

    .line 689
    sget-object v0, Lcom/amap/mapapi/core/r;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 690
    :cond_3
    iget-object v1, p0, Lcom/amap/mapapi/route/Route$a;->a:Lcom/amap/mapapi/route/Route;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 691
    sget-object v0, Lcom/amap/mapapi/core/r;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

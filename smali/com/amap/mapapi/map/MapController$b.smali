.class Lcom/amap/mapapi/map/MapController$b;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapController;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/amap/mapapi/map/bh;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/MapController;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapController$b;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapController$b;)Lcom/amap/mapapi/map/bh;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    return-object v0
.end method

.method private a(IIIZ)V
    .locals 4

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/mapapi/map/bh;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/mapapi/map/bh;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    iput-boolean p4, v0, Lcom/amap/mapapi/map/bh;->j:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    iput p1, v0, Lcom/amap/mapapi/map/bh;->i:I

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    const/4 v1, 0x0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/mapapi/map/bh;->a(IZFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapController$b;->c:Z

    return-void
.end method

.method private b(IIIZ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/mapapi/map/bh;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/mapapi/map/bh;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    iput p1, v0, Lcom/amap/mapapi/map/bh;->i:I

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    iput-boolean p4, v0, Lcom/amap/mapapi/map/bh;->j:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/bh;->j:Z

    if-ne v0, v4, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/amap/mapapi/map/Projection;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v3}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v3, v1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/Point;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->d:Lcom/amap/mapapi/map/bh;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/amap/mapapi/map/bh;->a(IZFF)V

    iput-boolean v4, p0, Lcom/amap/mapapi/map/MapController$b;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public a(IIIZZ)V
    .locals 0

    if-nez p4, :cond_0

    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/mapapi/map/MapController$b;->a(IIIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/mapapi/map/MapController$b;->b(IIIZ)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->g()Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/MapController$b;->c:Z

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getZoomMgr()Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$g;->a(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->a:Lcom/amap/mapapi/map/MapController;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapController;->a(Lcom/amap/mapapi/map/MapController;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapController$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

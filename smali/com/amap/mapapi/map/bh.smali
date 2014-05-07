.class Lcom/amap/mapapi/map/bh;
.super Lcom/amap/mapapi/map/a;
.source "ZoomCtlAnim.java"


# static fields
.field static h:F


# instance fields
.field public e:Lcom/amap/mapapi/map/MapView;

.field public f:F

.field public g:F

.field public i:I

.field public j:Z

.field private k:Landroid/view/animation/Animation$AnimationListener;

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/amap/mapapi/map/bh;->h:F

    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/map/MapView;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xa0

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/map/a;-><init>(II)V

    iput-boolean v2, p0, Lcom/amap/mapapi/map/bh;->p:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/bh;->i:I

    iput-boolean v2, p0, Lcom/amap/mapapi/map/bh;->j:Z

    iput-object p1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    iput-object p2, p0, Lcom/amap/mapapi/map/bh;->k:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/mapapi/map/bh;->o:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/amap/mapapi/map/bh;->h:F

    iget v1, p0, Lcom/amap/mapapi/map/bh;->n:F

    add-float/2addr v0, v1

    sput v0, Lcom/amap/mapapi/map/bh;->h:F

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget v1, Lcom/amap/mapapi/map/bh;->h:F

    sget v2, Lcom/amap/mapapi/map/bh;->h:F

    iget v3, p0, Lcom/amap/mapapi/map/bh;->f:F

    iget v4, p0, Lcom/amap/mapapi/map/bh;->g:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v1

    sget v2, Lcom/amap/mapapi/map/bh;->h:F

    invoke-virtual {v1, v2}, Lcom/amap/mapapi/map/MapView$c;->b(F)Z

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/MapView$c;->b(Landroid/graphics/Matrix;)Z

    return-void

    :cond_0
    sget v0, Lcom/amap/mapapi/map/bh;->h:F

    iget v1, p0, Lcom/amap/mapapi/map/bh;->n:F

    sub-float/2addr v0, v1

    sput v0, Lcom/amap/mapapi/map/bh;->h:F

    goto :goto_0
.end method

.method public a(FIZFF)V
    .locals 3

    const/high16 v2, 0x3f00

    iput-boolean p3, p0, Lcom/amap/mapapi/map/bh;->o:Z

    iput p4, p0, Lcom/amap/mapapi/map/bh;->f:F

    iput p5, p0, Lcom/amap/mapapi/map/bh;->g:F

    iput p1, p0, Lcom/amap/mapapi/map/bh;->l:F

    iget v0, p0, Lcom/amap/mapapi/map/bh;->l:F

    sput v0, Lcom/amap/mapapi/map/bh;->h:F

    iget-boolean v0, p0, Lcom/amap/mapapi/map/bh;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/bh;->l:F

    iget v1, p0, Lcom/amap/mapapi/map/a;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/mapapi/map/a;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/bh;->n:F

    iget v0, p0, Lcom/amap/mapapi/map/bh;->l:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/bh;->m:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/amap/mapapi/map/bh;->l:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/amap/mapapi/map/a;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/mapapi/map/a;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/bh;->n:F

    iget v0, p0, Lcom/amap/mapapi/map/bh;->l:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/amap/mapapi/map/bh;->m:F

    goto :goto_0
.end method

.method public a(IZFF)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->c:[I

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v1, v1, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v1, v1, v6

    aput v1, v0, v7

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->c:[I

    aput p1, v0, v6

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    iget-object v1, v1, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v1, v1, v6

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getZoomMgr()Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->d()V

    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    iput v0, p0, Lcom/amap/mapapi/map/a;->c:I

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->b()Lcom/amap/mapapi/map/MapView$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$c;->b()F

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/bh;->a(FIZFF)V

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, v6}, Lcom/amap/mapapi/map/ai$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-boolean v6, v0, Lcom/amap/mapapi/map/ai$a;->e:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->k:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-super {p0}, Lcom/amap/mapapi/map/a;->c()V

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/amap/mapapi/map/bh;->p:Z

    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->d()V

    iget v1, p0, Lcom/amap/mapapi/map/bh;->m:F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/map/bh;->a(FIZFF)V

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, v6}, Lcom/amap/mapapi/map/ai$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-boolean v6, v0, Lcom/amap/mapapi/map/ai$a;->e:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->k:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-super {p0}, Lcom/amap/mapapi/map/a;->c()V

    iput-boolean v7, p0, Lcom/amap/mapapi/map/bh;->p:Z

    goto :goto_0
.end method

.method protected b()V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/amap/mapapi/map/bh;->p:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-boolean v4, v0, Lcom/amap/mapapi/map/ai$a;->e:Z

    iget-boolean v0, p0, Lcom/amap/mapapi/map/bh;->j:Z

    if-ne v0, v6, :cond_1

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/mapapi/map/bh;->f:F

    float-to-int v1, v1

    iget v2, p0, Lcom/amap/mapapi/map/bh;->g:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v1

    iget v2, p0, Lcom/amap/mapapi/map/bh;->f:F

    float-to-int v2, v2

    iget v3, p0, Lcom/amap/mapapi/map/bh;->g:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/amap/mapapi/map/Projection;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v3, v1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getController()Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    iget v1, p0, Lcom/amap/mapapi/map/bh;->i:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapController;->setZoom(I)I

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->k:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/amap/mapapi/map/bh;->j:Z

    if-ne v0, v6, :cond_2

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->getProjection()Lcom/amap/mapapi/map/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/amap/mapapi/map/Projection;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v3, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v3, v1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    iget-object v1, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/map/ad;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->a()Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/bh;->e:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0, v4}, Lcom/amap/mapapi/map/MapView;->a(I)V

    sput v5, Lcom/amap/mapapi/map/bh;->h:F

    sput v5, Lcom/amap/mapapi/map/aj;->j:F

    goto/16 :goto_0
.end method

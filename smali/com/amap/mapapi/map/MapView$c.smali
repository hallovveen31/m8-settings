.class public Lcom/amap/mapapi/map/MapView$c;
.super Landroid/widget/ImageView;
.source "MapView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/amap/mapapi/map/aj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapView;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/view/GestureDetector;

.field private d:Lcom/amap/mapapi/map/aj;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/GestureDetector$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/aj$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/Scroller;

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Matrix;

.field private l:F

.field private m:Z

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:J

.field private s:I

.field private t:I

.field private final u:J


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView$c;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->g:Ljava/util/ArrayList;

    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->k:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->l:F

    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/MapView$c;->r:J

    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/amap/mapapi/map/MapView$c;->u:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->c:Landroid/view/GestureDetector;

    invoke-static {p2, p0}, Lcom/amap/mapapi/map/aj;->a(Landroid/content/Context;Lcom/amap/mapapi/map/aj$b;)Lcom/amap/mapapi/map/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->h:Landroid/widget/Scroller;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/amap/mapapi/map/MapView$c;->p:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/amap/mapapi/map/MapView$c;->q:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView$c;I)I
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    return p1
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->h:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v2

    :goto_0
    iget-object v6, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v6}, Lcom/amap/mapapi/map/MapView;->getZoomButtonsController()Lcom/amap/mapapi/map/ZoomButtonsController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/mapapi/map/ZoomButtonsController;->getOnZoomListener()Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    move-result-object v6

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v7}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v7

    iget-object v7, v7, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v7}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v7

    add-int/2addr v0, v7

    :goto_1
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v7, v0}, Lcom/amap/mapapi/map/MapView;->b(I)I

    move-result v0

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v7}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v7

    iget-object v7, v7, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v7}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v7

    if-eq v0, v7, :cond_1

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    iget-object v8, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v8, v8, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v8, v8, v2

    aput v8, v7, v3

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    aput v0, v7, v2

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v3, v7, v3

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v2, v7, v2

    if-eq v3, v2, :cond_1

    if-eqz v6, :cond_0

    invoke-interface {v6, v1}, Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v1, v4, v5}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    :cond_1
    return-void

    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v3

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v7}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v7

    iget-object v7, v7, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v7}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v7

    sub-int v0, v7, v0

    goto :goto_1
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    iput p2, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView$c;->e()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapView$c;)I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    return v0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapView$c;I)I
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    return p1
.end method

.method static synthetic c(Lcom/amap/mapapi/map/MapView$c;)I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    return v0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/mapapi/map/aj;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->l:F

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/mapapi/map/MapView$c;->r:J

    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapController;->stopAnimation(Z)V

    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    return v0
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-boolean v2, v0, Lcom/amap/mapapi/map/ai$a;->f:Z

    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    iget v1, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/mapapi/map/MapView$c;->a(FLandroid/graphics/PointF;FF)V

    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-boolean v1, v0, Lcom/amap/mapapi/map/ai$a;->f:Z

    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    return v1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/high16 v4, 0x41c8

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->c(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->a()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->l:F

    return v0
.end method

.method public b(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/MapView$c;->a(F)V

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->c(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->a()V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/aj;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/mapapi/map/MapView$c;->r:J

    return-wide v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->e(Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/MapController;->zoomInFixing(II)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/ai$d;->a(II)V

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$c;->k:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    iget v3, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/mapapi/map/ai$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/aj;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    iget-wide v2, v2, Lcom/amap/mapapi/map/aj;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->h:Landroid/widget/Scroller;

    iget v1, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    iget v2, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    neg-float v3, p3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    neg-float v4, p4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/amap/mapapi/map/MapView$c;->p:I

    neg-int v5, v5

    iget v6, p0, Lcom/amap/mapapi/map/MapView$c;->p:I

    iget v7, p0, Lcom/amap/mapapi/map/MapView$c;->q:I

    neg-int v7, v7

    iget v8, p0, Lcom/amap/mapapi/map/MapView$c;->q:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/aj;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    iget-wide v2, v2, Lcom/amap/mapapi/map/aj;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/map/MapView$c;->a(II)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/mapapi/core/e;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$c;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ai$a;->c(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

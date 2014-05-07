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
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1614
    iput-object p1, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    .line 1615
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1587
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView$c;->e:Z

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->f:Ljava/util/ArrayList;

    .line 1590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->g:Ljava/util/ArrayList;

    .line 1593
    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    .line 1594
    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    .line 1596
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->k:Landroid/graphics/Matrix;

    .line 1597
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->l:F

    .line 1598
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    .line 1603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/MapView$c;->r:J

    .line 1605
    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    .line 1606
    iput v2, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    .line 1611
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/amap/mapapi/map/MapView$c;->u:J

    .line 1616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    .line 1617
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->c:Landroid/view/GestureDetector;

    .line 1618
    invoke-static {p2, p0}, Lcom/amap/mapapi/map/aj;->a(Landroid/content/Context;Lcom/amap/mapapi/map/aj$b;)Lcom/amap/mapapi/map/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    .line 1620
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->h:Landroid/widget/Scroller;

    .line 1621
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1622
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1624
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/amap/mapapi/map/MapView$c;->p:I

    .line 1625
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/amap/mapapi/map/MapView$c;->q:I

    .line 1626
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    .line 1628
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    .line 1631
    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView$c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1582
    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    return p1
.end method

.method static synthetic a(Lcom/amap/mapapi/map/MapView$c;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->h:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1930
    .line 1931
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->c()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 1932
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->d()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    .line 1934
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1936
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v2

    .line 1944
    :goto_0
    iget-object v6, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v6}, Lcom/amap/mapapi/map/MapView;->getZoomButtonsController()Lcom/amap/mapapi/map/ZoomButtonsController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/mapapi/map/ZoomButtonsController;->getOnZoomListener()Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    move-result-object v6

    .line 1946
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v7}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v7

    iget-object v7, v7, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v7}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v7

    add-int/2addr v0, v7

    .line 1950
    :goto_1
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v7, v0}, Lcom/amap/mapapi/map/MapView;->b(I)I

    move-result v0

    .line 1951
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v7}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v7

    iget-object v7, v7, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v7}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v7

    if-eq v0, v7, :cond_1

    .line 1952
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    iget-object v8, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v8, v8, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v8, v8, v2

    aput v8, v7, v3

    .line 1953
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    aput v0, v7, v2

    .line 1954
    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v3, v7, v3

    iget-object v7, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    iget-object v7, v7, Lcom/amap/mapapi/map/MapView;->c:[I

    aget v2, v7, v2

    if-eq v3, v2, :cond_1

    .line 1955
    if-eqz v6, :cond_0

    .line 1956
    invoke-interface {v6, v1}, Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 1958
    :cond_0
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    invoke-virtual {v1, v4, v5}, Lcom/amap/mapapi/map/ai$e;->fromPixels(II)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v1

    .line 1960
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v2, v0}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    .line 1961
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 1964
    :cond_1
    return-void

    .line 1937
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 1939
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, v3

    goto/16 :goto_0

    .line 1946
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
    .parameter
    .parameter

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 1728
    :goto_0
    return-void

    .line 1725
    :cond_0
    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    .line 1726
    iput p2, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    .line 1727
    invoke-direct {p0}, Lcom/amap/mapapi/map/MapView$c;->e()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapView$c;)I
    .locals 1
    .parameter

    .prologue
    .line 1582
    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->i:I

    return v0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/MapView$c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1582
    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    return p1
.end method

.method static synthetic c(Lcom/amap/mapapi/map/MapView$c;)I
    .locals 1
    .parameter

    .prologue
    .line 1582
    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->j:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 1719
    :goto_0
    return-void

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    sub-int/2addr v0, v1

    .line 1715
    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    sub-int/2addr v1, v2

    .line 1716
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/mapapi/map/MapView$c;->s:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1717
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/mapapi/map/MapView$c;->t:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1718
    iget-object v2, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v2}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amap/mapapi/map/MapController;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/mapapi/map/aj;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    return-object v0
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 1673
    iput p1, p0, Lcom/amap/mapapi/map/MapView$c;->l:F

    .line 1674
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1921
    iput-wide p1, p0, Lcom/amap/mapapi/map/MapView$c;->r:J

    .line 1922
    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    return-void
.end method

.method public a(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->d(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapController;->stopAnimation(Z)V

    .line 1840
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    if-eqz v0, :cond_0

    .line 1841
    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    .line 1842
    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    .line 1844
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$c;->invalidate()V

    .line 1845
    iget-boolean v0, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    return v0
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1871
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-boolean v2, v0, Lcom/amap/mapapi/map/ai$a;->f:Z

    .line 1872
    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    iget v1, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amap/mapapi/map/MapView$c;->a(FLandroid/graphics/PointF;FF)V

    .line 1873
    iput-boolean v2, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    .line 1878
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/amap/mapapi/map/MapView$c;->postInvalidateDelayed(J)V

    .line 1879
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 1
    .parameter

    .prologue
    .line 1856
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1885
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$a;->a(Z)V

    .line 1886
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-boolean v1, v0, Lcom/amap/mapapi/map/ai$a;->f:Z

    .line 1887
    iput-boolean v1, p0, Lcom/amap/mapapi/map/MapView$c;->m:Z

    .line 1890
    return v1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x41c8

    .line 1686
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->c(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->a()V

    .line 1687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1690
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    .line 1691
    packed-switch v0, :pswitch_data_0

    .line 1706
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1693
    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    goto :goto_0

    .line 1700
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

    .line 1691
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

    .prologue
    .line 1677
    iget v0, p0, Lcom/amap/mapapi/map/MapView$c;->l:F

    return v0
.end method

.method public b(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1822
    return-void
.end method

.method public b(F)Z
    .locals 1
    .parameter

    .prologue
    .line 1850
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/map/MapView$c;->a(F)V

    .line 1851
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 1
    .parameter

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1863
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$c;->postInvalidate()V

    .line 1864
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1731
    .line 1732
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->c(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->a()V

    .line 1733
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->d:Lcom/amap/mapapi/map/aj;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/aj;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1734
    if-nez v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1737
    :cond_0
    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1681
    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    .line 1682
    iput v0, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    .line 1683
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 1925
    iget-wide v0, p0, Lcom/amap/mapapi/map/MapView$c;->r:J

    return-wide v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->e(Lcom/amap/mapapi/map/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
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

    .line 1898
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1903
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 1744
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->b:Landroid/graphics/Point;

    .line 1748
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1746
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
    .parameter

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$c;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$c;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/ai$d;->a(II)V

    .line 1655
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/MapView$c;->k:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/amap/mapapi/map/MapView$c;->n:F

    iget v3, p0, Lcom/amap/mapapi/map/MapView$c;->o:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/mapapi/map/ai$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    .line 1666
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 1764
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

    .line 1776
    :cond_0
    :goto_0
    return v9

    .line 1767
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
    .parameter

    .prologue
    .line 1782
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1788
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

    .line 1795
    :cond_0
    :goto_0
    return v4

    .line 1791
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1792
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1793
    invoke-direct {p0, v0, v1}, Lcom/amap/mapapi/map/MapView$c;->a(II)V

    .line 1794
    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$c;->postInvalidate()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1803
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 1911
    .line 1912
    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    if-eqz v0, :cond_0

    .line 1913
    invoke-static {}, Lcom/amap/mapapi/core/e;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/MapView$c;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1914
    sget-object v0, Lcom/amap/mapapi/map/t;->a:Lcom/amap/mapapi/map/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/t;->c()V

    .line 1917
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/amap/mapapi/map/MapView$c;->a:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ai$a;->c(Landroid/view/MotionEvent;)Z

    .line 1810
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

    .line 1811
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1813
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

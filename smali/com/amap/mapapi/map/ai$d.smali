.class public Lcom/amap/mapapi/map/ai$d;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/amap/mapapi/map/ai;

.field private c:Lcom/amap/mapapi/map/MapView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/map/bf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/ai$d;->a:Z

    .line 1692
    iput-object p2, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    .line 1693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$d;->d:Ljava/util/ArrayList;

    .line 1694
    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;
    .locals 1
    .parameter

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    return-object v0
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2028
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2029
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2030
    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 2032
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 2035
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 2036
    if-ne p2, v1, :cond_5

    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 2042
    :cond_1
    :goto_0
    if-ne p3, v1, :cond_6

    .line 2043
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 2049
    :cond_2
    :goto_1
    and-int/lit8 v0, p6, 0x7

    .line 2050
    and-int/lit8 v1, p6, 0x70

    .line 2052
    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 2053
    sub-int/2addr p4, p2

    .line 2058
    :cond_3
    :goto_2
    const/16 v0, 0x50

    if-ne v1, v0, :cond_8

    .line 2059
    sub-int/2addr p5, p3

    .line 2063
    :cond_4
    :goto_3
    add-int v0, p4, p2

    add-int v1, p5, p3

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2064
    return-void

    .line 2038
    :cond_5
    if-ne p2, v2, :cond_1

    .line 2039
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    .line 2044
    :cond_6
    if-ne p3, v2, :cond_2

    .line 2045
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getMeasuredHeight()I

    move-result p3

    goto :goto_1

    .line 2054
    :cond_7
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2055
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    goto :goto_2

    .line 2060
    :cond_8
    const/16 v0, 0x10

    if-ne v1, v0, :cond_4

    .line 2061
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p5, v0

    goto :goto_3
.end method

.method private a(Landroid/view/View;Lcom/amap/mapapi/map/MapView$LayoutParams;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1949
    iget-object v0, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->point:Lcom/amap/mapapi/core/GeoPoint;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    iget-object v1, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->point:Lcom/amap/mapapi/core/GeoPoint;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/ai$e;->toPixels(Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 1952
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1953
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1955
    iget v2, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->width:I

    iget v3, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->height:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/map/ai$d;->a(Landroid/view/View;IIIII)V

    .line 1958
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;Lcom/amap/mapapi/map/MapView$LayoutParams;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2023
    iget v2, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->width:I

    iget v3, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->height:I

    iget v4, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->x:I

    iget v5, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->y:I

    iget v6, p2, Lcom/amap/mapapi/map/MapView$LayoutParams;->alignment:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/mapapi/map/ai$d;->a(Landroid/view/View;IIIII)V

    .line 2025
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget v0, v0, Lcom/amap/mapapi/map/ad;->f:I

    return v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1705
    .line 1707
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-nez v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget v0, v0, Lcom/amap/mapapi/map/ad;->g:I

    .line 1709
    if-eq p1, v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iput p1, v0, Lcom/amap/mapapi/map/ad;->g:I

    .line 1718
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 1719
    return-void

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    iget v0, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    .line 1714
    if-eq p1, v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    iput p1, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1725
    sget v0, Lcom/amap/mapapi/core/c;->i:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/amap/mapapi/core/c;->j:I

    if-eq p2, v0, :cond_1

    .line 1727
    :cond_0
    sput p1, Lcom/amap/mapapi/core/c;->i:I

    .line 1728
    sput p2, Lcom/amap/mapapi/core/c;->j:I

    .line 1735
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 1737
    :cond_1
    return-void
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1747
    if-nez p1, :cond_0

    .line 1769
    :goto_0
    return-void

    .line 1757
    :cond_0
    sget-boolean v0, Lcom/amap/mapapi/core/c;->n:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1759
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 1761
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iput-object v0, v1, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    .line 1763
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    goto :goto_0
.end method

.method public a(Lcom/amap/mapapi/map/bf;)V
    .locals 1
    .parameter

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1875
    return-void
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/bf;

    .line 1902
    invoke-interface {v0, p1, p2}, Lcom/amap/mapapi/map/bf;->a(ZZ)V

    goto :goto_0

    .line 1905
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget v0, v0, Lcom/amap/mapapi/map/ad;->e:I

    return v0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 1795
    if-gtz p1, :cond_0

    .line 1808
    :goto_0
    return-void

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    sput p1, Lcom/amap/mapapi/core/c;->c:I

    iput p1, v0, Lcom/amap/mapapi/map/ad;->f:I

    goto :goto_0

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    sput p1, Lcom/amap/mapapi/core/c;->a:I

    iput p1, v0, Lcom/amap/mapapi/map/ad;->f:I

    goto :goto_0
.end method

.method public b(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1772
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$d;->f()Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 1773
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/core/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1775
    sget-boolean v0, Lcom/amap/mapapi/core/c;->n:Z

    if-ne v0, v2, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/ad;->a(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 1778
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iput-object v0, v1, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    .line 1780
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 1782
    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1838
    sget v0, Lcom/amap/mapapi/core/c;->i:I

    return v0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 1821
    if-gtz p1, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    sput p1, Lcom/amap/mapapi/core/c;->d:I

    iput p1, v0, Lcom/amap/mapapi/map/ad;->e:I

    goto :goto_0

    .line 1832
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    sput p1, Lcom/amap/mapapi/core/c;->b:I

    iput p1, v0, Lcom/amap/mapapi/map/ad;->e:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1842
    sget v0, Lcom/amap/mapapi/core/c;->j:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-nez v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget v0, v0, Lcom/amap/mapapi/map/ad;->g:I

    .line 1849
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    iget v0, v0, Lcom/amap/mapapi/map/MapView;->mapLevel:I

    goto :goto_0
.end method

.method public f()Lcom/amap/mapapi/core/GeoPoint;
    .locals 2

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v1, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v1, v1, Lcom/amap/mapapi/map/ad;->j:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ad;->b(Lcom/amap/mapapi/core/GeoPoint;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    .line 1861
    iget-object v1, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v1, v1, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    iget-boolean v1, v1, Lcom/amap/mapapi/map/ai$b;->a:Z

    if-eqz v1, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-object v0, v0, Lcom/amap/mapapi/map/ad;->k:Lcom/amap/mapapi/core/GeoPoint;

    .line 1865
    :cond_0
    return-object v0
.end method

.method public g()Lcom/amap/mapapi/map/MapView;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    return-object v0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getChildCount()I

    move-result v2

    .line 1920
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 1921
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1922
    if-nez v3, :cond_1

    .line 1920
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1925
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    if-eqz v0, :cond_0

    .line 1926
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/MapView$LayoutParams;

    .line 1929
    iget v4, v0, Lcom/amap/mapapi/map/MapView$LayoutParams;->mode:I

    if-nez v4, :cond_2

    .line 1930
    invoke-direct {p0, v3, v0}, Lcom/amap/mapapi/map/ai$d;->a(Landroid/view/View;Lcom/amap/mapapi/map/MapView$LayoutParams;)V

    goto :goto_1

    .line 1932
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/amap/mapapi/map/ai$d;->b(Landroid/view/View;Lcom/amap/mapapi/map/MapView$LayoutParams;)V

    goto :goto_1

    .line 1937
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$d;->b:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai$d;->c:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->c()V

    .line 1938
    return-void
.end method

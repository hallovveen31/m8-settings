.class Lcom/amap/mapapi/map/az;
.super Lcom/amap/mapapi/map/a;
.source "TransAnim.java"


# instance fields
.field private e:Lcom/amap/mapapi/core/GeoPoint;

.field private f:Lcom/amap/mapapi/core/GeoPoint;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/amap/mapapi/map/ba;


# direct methods
.method public constructor <init>(IILcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/core/GeoPoint;ILcom/amap/mapapi/map/ba;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/a;-><init>(II)V

    .line 32
    iput-object p3, p0, Lcom/amap/mapapi/map/az;->e:Lcom/amap/mapapi/core/GeoPoint;

    .line 33
    iput-object p4, p0, Lcom/amap/mapapi/map/az;->f:Lcom/amap/mapapi/core/GeoPoint;

    .line 39
    iget-object v0, p0, Lcom/amap/mapapi/map/az;->e:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/mapapi/map/az;->g:I

    .line 40
    iget-object v0, p0, Lcom/amap/mapapi/map/az;->e:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/mapapi/map/az;->h:I

    .line 41
    iput-object p6, p0, Lcom/amap/mapapi/map/az;->o:Lcom/amap/mapapi/map/ba;

    .line 47
    invoke-virtual {p4}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/mapapi/map/az;->e:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/mapapi/map/az;->k:I

    .line 49
    invoke-virtual {p4}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/mapapi/map/az;->e:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v2}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/mapapi/map/az;->l:I

    .line 51
    const/4 v0, 0x7

    iput v0, p0, Lcom/amap/mapapi/map/az;->m:I

    .line 52
    invoke-direct {p0, p5}, Lcom/amap/mapapi/map/az;->a(I)V

    .line 53
    return-void
.end method

.method private a(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 102
    if-le p2, p1, :cond_0

    .line 103
    add-int v0, p1, p3

    .line 104
    if-lt v0, p2, :cond_1

    .line 106
    iput v1, p0, Lcom/amap/mapapi/map/az;->n:I

    .line 115
    :goto_0
    return p2

    .line 109
    :cond_0
    sub-int v0, p1, p3

    .line 110
    if-gt v0, p2, :cond_1

    .line 112
    iput v1, p0, Lcom/amap/mapapi/map/az;->n:I

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/amap/mapapi/map/az;->k:I

    iget v1, p0, Lcom/amap/mapapi/map/az;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/az;->i:I

    .line 58
    iget v0, p0, Lcom/amap/mapapi/map/az;->l:I

    iget v1, p0, Lcom/amap/mapapi/map/az;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/az;->j:I

    .line 60
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v0, p0, Lcom/amap/mapapi/map/az;->f:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/GeoPoint;->c()D

    move-result-wide v0

    double-to-int v0, v0

    .line 75
    iget-object v1, p0, Lcom/amap/mapapi/map/az;->f:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/GeoPoint;->d()D

    move-result-wide v1

    double-to-int v1, v1

    .line 76
    iget v2, p0, Lcom/amap/mapapi/map/az;->g:I

    if-lt v2, v0, :cond_0

    iget v2, p0, Lcom/amap/mapapi/map/az;->h:I

    if-lt v2, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/amap/mapapi/map/az;->e()V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/az;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iput v0, p0, Lcom/amap/mapapi/map/az;->g:I

    .line 81
    iput v1, p0, Lcom/amap/mapapi/map/az;->h:I

    .line 83
    iget-object v6, p0, Lcom/amap/mapapi/map/az;->o:Lcom/amap/mapapi/map/ba;

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget v1, p0, Lcom/amap/mapapi/map/az;->h:I

    int-to-double v1, v1

    iget v3, p0, Lcom/amap/mapapi/map/az;->g:I

    int-to-double v3, v3

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    invoke-interface {v6, v0}, Lcom/amap/mapapi/map/ba;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v2, p0, Lcom/amap/mapapi/map/az;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amap/mapapi/map/az;->n:I

    .line 86
    iget v2, p0, Lcom/amap/mapapi/map/az;->i:I

    iget v3, p0, Lcom/amap/mapapi/map/az;->n:I

    iget v4, p0, Lcom/amap/mapapi/map/az;->n:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amap/mapapi/map/az;->i:I

    .line 87
    iget v2, p0, Lcom/amap/mapapi/map/az;->j:I

    iget v3, p0, Lcom/amap/mapapi/map/az;->n:I

    iget v4, p0, Lcom/amap/mapapi/map/az;->n:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amap/mapapi/map/az;->j:I

    .line 88
    iget v2, p0, Lcom/amap/mapapi/map/az;->g:I

    iget v3, p0, Lcom/amap/mapapi/map/az;->i:I

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/mapapi/map/az;->a(III)I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/az;->g:I

    .line 89
    iget v0, p0, Lcom/amap/mapapi/map/az;->h:I

    iget v2, p0, Lcom/amap/mapapi/map/az;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/mapapi/map/az;->a(III)I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/map/az;->h:I

    .line 91
    iget-object v6, p0, Lcom/amap/mapapi/map/az;->o:Lcom/amap/mapapi/map/ba;

    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    iget v1, p0, Lcom/amap/mapapi/map/az;->h:I

    int-to-double v1, v1

    iget v3, p0, Lcom/amap/mapapi/map/az;->g:I

    int-to-double v3, v3

    invoke-direct/range {v0 .. v5}, Lcom/amap/mapapi/core/GeoPoint;-><init>(DDZ)V

    invoke-interface {v6, v0}, Lcom/amap/mapapi/map/ba;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amap/mapapi/map/az;->o:Lcom/amap/mapapi/map/ba;

    invoke-interface {v0}, Lcom/amap/mapapi/map/ba;->b()V

    .line 64
    return-void
.end method

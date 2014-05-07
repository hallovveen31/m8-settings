.class public Lcom/amap/mapapi/map/w;
.super Lcom/amap/mapapi/map/x;
.source "LayerPropertys.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/amap/mapapi/map/bb;

.field public k:I

.field public l:Ljava/lang/String;

.field m:Lcom/amap/mapapi/map/h;

.field n:Lcom/amap/mapapi/map/j;

.field o:Lcom/amap/mapapi/core/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/mapapi/core/t",
            "<",
            "Lcom/amap/mapapi/map/at$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/amap/mapapi/map/x;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    .line 33
    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/mapapi/map/w;->b:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/mapapi/map/w;->c:I

    .line 43
    iput-boolean v3, p0, Lcom/amap/mapapi/map/w;->d:Z

    .line 48
    iput-boolean v3, p0, Lcom/amap/mapapi/map/w;->e:Z

    .line 53
    iput-boolean v1, p0, Lcom/amap/mapapi/map/w;->f:Z

    .line 58
    iput-boolean v1, p0, Lcom/amap/mapapi/map/w;->g:Z

    .line 63
    iput-boolean v1, p0, Lcom/amap/mapapi/map/w;->h:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/w;->i:J

    .line 73
    iput-object v2, p0, Lcom/amap/mapapi/map/w;->j:Lcom/amap/mapapi/map/bb;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/w;->k:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/map/w;->l:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    .line 93
    iput-object v2, p0, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    .line 98
    iput-object v2, p0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/j;->a(Lcom/amap/mapapi/map/h;)V

    .line 153
    iget-object v0, p0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/h;->c()V

    .line 154
    iget-object v0, p0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->clear()V

    .line 159
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/at$a;

    .line 133
    iget v1, v0, Lcom/amap/mapapi/map/at$a;->g:I

    if-gez v1, :cond_3

    .line 134
    iget-boolean v1, p0, Lcom/amap/mapapi/map/w;->e:Z

    if-eqz v1, :cond_2

    .line 137
    invoke-static {}, Lcom/amap/mapapi/map/at;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    :goto_1
    iget-object v0, v0, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    .line 144
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 145
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    iget v3, v0, Lcom/amap/mapapi/map/at$a;->g:I

    invoke-virtual {v1, v3}, Lcom/amap/mapapi/map/h;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 102
    if-ne p0, p1, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    instance-of v0, p1, Lcom/amap/mapapi/map/w;

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    check-cast p1, Lcom/amap/mapapi/map/w;

    .line 110
    iget-object v0, p0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/amap/mapapi/map/w;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    return-object v0
.end method

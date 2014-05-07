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

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amap/mapapi/map/x;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/mapapi/map/w;->b:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/mapapi/map/w;->c:I

    iput-boolean v3, p0, Lcom/amap/mapapi/map/w;->d:Z

    iput-boolean v3, p0, Lcom/amap/mapapi/map/w;->e:Z

    iput-boolean v1, p0, Lcom/amap/mapapi/map/w;->f:Z

    iput-boolean v1, p0, Lcom/amap/mapapi/map/w;->g:Z

    iput-boolean v1, p0, Lcom/amap/mapapi/map/w;->h:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/w;->i:J

    iput-object v2, p0, Lcom/amap/mapapi/map/w;->j:Lcom/amap/mapapi/map/bb;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/mapapi/map/w;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/map/w;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    iput-object v2, p0, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    iput-object v2, p0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/w;->n:Lcom/amap/mapapi/map/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/j;->a(Lcom/amap/mapapi/map/h;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/h;->c()V

    iget-object v0, p0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/t;->clear()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/amap/mapapi/map/w;->o:Lcom/amap/mapapi/core/t;

    if-nez v0, :cond_1

    :cond_0
    return-void

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

    iget v1, v0, Lcom/amap/mapapi/map/at$a;->g:I

    if-gez v1, :cond_3

    iget-boolean v1, p0, Lcom/amap/mapapi/map/w;->e:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/amap/mapapi/map/at;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iget-object v0, v0, Lcom/amap/mapapi/map/at$a;->f:Landroid/graphics/PointF;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/amap/mapapi/map/w;->m:Lcom/amap/mapapi/map/h;

    iget v3, v0, Lcom/amap/mapapi/map/at$a;->g:I

    invoke-virtual {v1, v3}, Lcom/amap/mapapi/map/h;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/amap/mapapi/map/w;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/amap/mapapi/map/w;

    iget-object v0, p0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/map/w;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/w;->a:Ljava/lang/String;

    return-object v0
.end method

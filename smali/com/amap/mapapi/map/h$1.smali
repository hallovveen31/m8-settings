.class Lcom/amap/mapapi/map/h$1;
.super Ljava/lang/Object;
.source "BitmapManager.java"

# interfaces
.implements Lcom/amap/mapapi/map/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/mapapi/map/h;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/amap/mapapi/map/h;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iput-object p2, p0, Lcom/amap/mapapi/map/h$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->f:Landroid/graphics/Path;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/amap/mapapi/map/h;->f:Landroid/graphics/Path;

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_7

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/ay;

    iget-object v2, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v2, v2, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x4040

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ay;->b()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v2, v2, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    const/high16 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/amap/mapapi/map/ay;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v4, v1

    move v2, v5

    :goto_2
    if-ge v4, v8, :cond_6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v2, v2, Lcom/amap/mapapi/map/h;->f:Landroid/graphics/Path;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v9, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v1

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v2, v2, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    const/16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v2, v2, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    const v4, -0xff0100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v9, v9, Lcom/amap/mapapi/map/h;->f:Landroid/graphics/Path;

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v2, v2, Lcom/amap/mapapi/map/h;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/h$1;->b:Lcom/amap/mapapi/map/h;

    iget-object v0, v0, Lcom/amap/mapapi/map/h;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

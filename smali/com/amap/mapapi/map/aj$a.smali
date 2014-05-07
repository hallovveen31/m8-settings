.class Lcom/amap/mapapi/map/aj$a;
.super Lcom/amap/mapapi/map/aj;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field p:F

.field q:F

.field r:F

.field s:F

.field t:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/mapapi/map/aj;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/mapapi/map/aj$a;->t:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/mapapi/map/aj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/mapapi/map/aj$a;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 8

    const/high16 v7, 0x4000

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/mapapi/map/aj;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {}, Lcom/amap/mapapi/map/aj;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/mapapi/map/aj;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {}, Lcom/amap/mapapi/map/aj;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    add-float v2, v3, v0

    :goto_1
    div-float v0, v1, v7

    div-float v1, v2, v7

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private c(Landroid/view/MotionEvent;)F
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/mapapi/map/aj;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {}, Lcom/amap/mapapi/map/aj;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    sub-float v0, v1, v0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/mapapi/map/aj;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {}, Lcom/amap/mapapi/map/aj;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    sub-float v2, v3, v0

    :goto_1
    mul-float v0, v1, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v5, 0x4120

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/amap/mapapi/map/aj;->b(Landroid/view/MotionEvent;)V

    invoke-static {}, Lcom/amap/mapapi/map/aj;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v0, v2

    :cond_2
    :goto_1
    move v2, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/amap/mapapi/map/aj$a;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/amap/mapapi/map/aj$a;->q:F

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->e:Landroid/graphics/PointF;

    iget v3, p0, Lcom/amap/mapapi/map/aj$a;->p:F

    iget v4, p0, Lcom/amap/mapapi/map/aj$a;->q:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iput v0, p0, Lcom/amap/mapapi/map/aj;->b:I

    move v0, v2

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    iget v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    if-ne v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/aj;->m:Z

    const/high16 v1, 0x3f80

    sput v1, Lcom/amap/mapapi/map/aj$a;->j:F

    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/aj$a;->c(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    iget v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/amap/mapapi/map/aj$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iput v4, p0, Lcom/amap/mapapi/map/aj;->b:I

    iput-boolean v0, p0, Lcom/amap/mapapi/map/aj;->k:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->e:Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Lcom/amap/mapapi/map/aj$b;->a(Landroid/graphics/PointF;)Z

    move-result v0

    or-int/2addr v0, v2

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/amap/mapapi/map/aj$a;->r:F

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/amap/mapapi/map/aj$a;->s:F

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/map/aj;->o:J

    iput-boolean v2, p0, Lcom/amap/mapapi/map/aj;->k:Z

    iput v2, p0, Lcom/amap/mapapi/map/aj;->b:I

    move v0, v2

    goto :goto_1

    :pswitch_4
    iget v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    iget v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    if-ne v1, v0, :cond_3

    iput-boolean v0, p0, Lcom/amap/mapapi/map/aj;->m:Z

    iput v4, p0, Lcom/amap/mapapi/map/aj;->b:I

    :cond_3
    iget v0, p0, Lcom/amap/mapapi/map/aj;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/amap/mapapi/map/aj$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/amap/mapapi/map/aj;->l:Z

    iput-boolean v2, p0, Lcom/amap/mapapi/map/aj;->m:Z

    iget-boolean v0, p0, Lcom/amap/mapapi/map/aj;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget v1, p0, Lcom/amap/mapapi/map/aj;->i:F

    iget-object v3, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v3}, Lcom/amap/mapapi/map/aj$b;->a(FLandroid/graphics/PointF;)Z

    move-result v0

    or-int/2addr v0, v2

    iput v2, p0, Lcom/amap/mapapi/map/aj;->b:I

    goto/16 :goto_1

    :pswitch_5
    iget v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    iget v1, p0, Lcom/amap/mapapi/map/aj;->n:I

    if-ne v1, v0, :cond_4

    iput-boolean v0, p0, Lcom/amap/mapapi/map/aj;->m:Z

    iput v4, p0, Lcom/amap/mapapi/map/aj;->b:I

    :cond_4
    iget v0, p0, Lcom/amap/mapapi/map/aj;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/amap/mapapi/map/aj$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/amap/mapapi/map/aj;->l:Z

    iput-boolean v2, p0, Lcom/amap/mapapi/map/aj;->m:Z

    iget-boolean v0, p0, Lcom/amap/mapapi/map/aj;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget v1, p0, Lcom/amap/mapapi/map/aj;->i:F

    iget-object v3, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v3}, Lcom/amap/mapapi/map/aj$b;->a(FLandroid/graphics/PointF;)Z

    move-result v0

    or-int/2addr v0, v2

    iput v2, p0, Lcom/amap/mapapi/map/aj;->b:I

    goto/16 :goto_1

    :pswitch_6
    iget v1, p0, Lcom/amap/mapapi/map/aj;->b:I

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/amap/mapapi/map/aj;->d:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/amap/mapapi/map/aj;->e:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/amap/mapapi/map/aj;->e:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget v5, p0, Lcom/amap/mapapi/map/aj$a;->p:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/amap/mapapi/map/aj$a;->q:F

    sub-float v6, v3, v6

    invoke-interface {v4, v5, v6}, Lcom/amap/mapapi/map/aj$b;->a(FF)Z

    move-result v4

    or-int/2addr v2, v4

    iput v1, p0, Lcom/amap/mapapi/map/aj$a;->p:F

    iput v3, p0, Lcom/amap/mapapi/map/aj$a;->q:F

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget-object v3, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    invoke-interface {v1, v3}, Lcom/amap/mapapi/map/aj$b;->a(Landroid/graphics/Matrix;)Z

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/mapapi/map/aj$a;->t:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    :goto_2
    move v0, v1

    goto/16 :goto_1

    :cond_5
    iget v1, p0, Lcom/amap/mapapi/map/aj;->b:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/mapapi/map/aj$a;->c(Landroid/view/MotionEvent;)F

    move-result v3

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/mapapi/map/aj;->i:F

    cmpl-float v1, v3, v5

    if-lez v1, :cond_1

    iget v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x40a0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/amap/mapapi/map/aj;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_7

    iget v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    div-float v1, v3, v1

    :goto_3
    iput v1, p0, Lcom/amap/mapapi/map/aj;->i:F

    iget v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    div-float v1, v3, v1

    sput v1, Lcom/amap/mapapi/map/aj$a;->j:F

    iget v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_6

    iget v1, p0, Lcom/amap/mapapi/map/aj;->i:F

    neg-float v1, v1

    iput v1, p0, Lcom/amap/mapapi/map/aj;->i:F

    :cond_6
    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/amap/mapapi/map/aj$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget-object v4, p0, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/amap/mapapi/map/aj$a;->r:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/amap/mapapi/map/aj$a;->s:F

    sub-float/2addr v5, v6

    invoke-interface {v1, v4, v5}, Lcom/amap/mapapi/map/aj$b;->a(FF)Z

    move-result v1

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, p0, Lcom/amap/mapapi/map/aj$a;->r:F

    iget-object v2, p0, Lcom/amap/mapapi/map/aj;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/amap/mapapi/map/aj$a;->s:F

    iget-object v2, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/amap/mapapi/map/aj;->h:F

    div-float v4, v3, v4

    iget v5, p0, Lcom/amap/mapapi/map/aj;->h:F

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/amap/mapapi/map/aj;->f:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget v3, p0, Lcom/amap/mapapi/map/aj;->i:F

    invoke-interface {v2, v3}, Lcom/amap/mapapi/map/aj$b;->b(F)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/mapapi/map/aj;->a:Lcom/amap/mapapi/map/aj$b;

    iget-object v3, p0, Lcom/amap/mapapi/map/aj;->c:Landroid/graphics/Matrix;

    invoke-interface {v2, v3}, Lcom/amap/mapapi/map/aj$b;->b(Landroid/graphics/Matrix;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v0, p0, Lcom/amap/mapapi/map/aj;->l:Z

    goto/16 :goto_2

    :cond_7
    iget v1, p0, Lcom/amap/mapapi/map/aj;->h:F

    div-float/2addr v1, v3

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

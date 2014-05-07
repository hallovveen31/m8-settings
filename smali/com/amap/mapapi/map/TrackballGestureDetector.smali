.class public Lcom/amap/mapapi/map/TrackballGestureDetector;
.super Ljava/lang/Object;
.source "TrackballGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/TrackballGestureDetector$OnTrackballListener;
    }
.end annotation


# static fields
.field private static n:Lcom/amap/mapapi/map/TrackballGestureDetector;


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->m:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->l:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->m:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/amap/mapapi/map/TrackballGestureDetector;
    .locals 1

    sget-object v0, Lcom/amap/mapapi/map/TrackballGestureDetector;->n:Lcom/amap/mapapi/map/TrackballGestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/mapapi/map/TrackballGestureDetector;

    invoke-direct {v0}, Lcom/amap/mapapi/map/TrackballGestureDetector;-><init>()V

    sput-object v0, Lcom/amap/mapapi/map/TrackballGestureDetector;->n:Lcom/amap/mapapi/map/TrackballGestureDetector;

    :cond_0
    sget-object v0, Lcom/amap/mapapi/map/TrackballGestureDetector;->n:Lcom/amap/mapapi/map/TrackballGestureDetector;

    return-object v0
.end method


# virtual methods
.method public analyze(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput-boolean v3, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->f:Z

    iput-boolean v3, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->g:Z

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v2, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->h:F

    iput v1, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->i:F

    iput v2, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->b:F

    iput v1, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->d:J

    iput-boolean v4, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->a:Z

    iput-boolean v3, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->e:Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/amap/mapapi/map/TrackballGestureDetector;->a()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->e:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->h:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->j:F

    iget v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->i:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->k:F

    iput v2, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->h:F

    iput v1, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->i:F

    iget v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->c:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->b:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput-boolean v3, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->a:Z

    iput-boolean v4, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->f:Z

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-boolean v4, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->g:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentDownX()F
    .locals 1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/TrackballGestureDetector;->isTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->b:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentDownY()F
    .locals 1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/TrackballGestureDetector;->isTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->c:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->f:Z

    return v0
.end method

.method public isTap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->g:Z

    return v0
.end method

.method public registerLongPressCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public scrollX()F
    .locals 1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/TrackballGestureDetector;->isScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->j:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollY()F
    .locals 1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/TrackballGestureDetector;->isScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/TrackballGestureDetector;->k:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

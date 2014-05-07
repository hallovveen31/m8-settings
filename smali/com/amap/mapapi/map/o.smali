.class Lcom/amap/mapapi/map/o;
.super Lcom/amap/mapapi/map/ak;
.source "RouteOverlayDraw.java"


# instance fields
.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Lcom/amap/mapapi/map/RouteMessageHandler;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/RouteMessageHandler;Z)V
    .locals 5

    const-wide/high16 v3, 0x3ff8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/mapapi/map/ak;-><init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    iput-boolean v0, p0, Lcom/amap/mapapi/map/o;->j:Z

    iput-object p4, p0, Lcom/amap/mapapi/map/o;->d:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/amap/mapapi/map/o;->e:Lcom/amap/mapapi/map/RouteMessageHandler;

    iput-boolean v0, p0, Lcom/amap/mapapi/map/o;->f:Z

    iput-boolean v0, p0, Lcom/amap/mapapi/map/o;->g:Z

    iget-object v0, p0, Lcom/amap/mapapi/map/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/amap/mapapi/map/o;->h:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/mapapi/map/o;->i:I

    iput-boolean p6, p0, Lcom/amap/mapapi/map/o;->j:Z

    return-void
.end method

.method private a(Lcom/amap/mapapi/map/MapView;II)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/mapapi/map/ak;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {p0, p1, v1}, Lcom/amap/mapapi/map/ap;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/map/o;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Lcom/amap/mapapi/map/o;->j:Z

    if-ne v3, v0, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ge v4, v3, :cond_0

    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p3

    if-lez v3, :cond_0

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p3

    if-ge v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    sub-int v0, p2, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;)Z
    .locals 4

    iget-object v0, p0, Lcom/amap/mapapi/map/ak;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {p0, p1, v0}, Lcom/amap/mapapi/map/ap;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/mapapi/map/o;->h:I

    iget v2, p0, Lcom/amap/mapapi/map/o;->i:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/amap/mapapi/map/MapView;Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/mapapi/map/o;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/map/ak;->b:Lcom/amap/mapapi/core/GeoPoint;

    invoke-virtual {p0, p2, v0}, Lcom/amap/mapapi/map/ap;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/core/GeoPoint;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/map/o;->d:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1, v2, v0}, Lcom/amap/mapapi/map/Overlay;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0
.end method

.method public a(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/ak;->b:Lcom/amap/mapapi/core/GeoPoint;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/amap/mapapi/map/MapView;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, v3, v4}, Lcom/amap/mapapi/map/o;->a(Lcom/amap/mapapi/map/MapView;II)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/o;->f:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/amap/mapapi/map/o;->g:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/amap/mapapi/map/o;->b(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/map/o;->e:Lcom/amap/mapapi/map/RouteMessageHandler;

    iget-object v3, p0, Lcom/amap/mapapi/map/ap;->c:Lcom/amap/mapapi/map/RouteOverlay;

    iget v4, p0, Lcom/amap/mapapi/map/ak;->a:I

    invoke-virtual {p0, p2, v2}, Lcom/amap/mapapi/map/ap;->a(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    invoke-interface {v1, p2, v3, v4, v2}, Lcom/amap/mapapi/map/RouteMessageHandler;->onDrag(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/amap/mapapi/map/o;->f:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p2, v2}, Lcom/amap/mapapi/map/o;->b(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/o;->g:Z

    iget-object v1, p0, Lcom/amap/mapapi/map/o;->e:Lcom/amap/mapapi/map/RouteMessageHandler;

    iget-object v3, p0, Lcom/amap/mapapi/map/ap;->c:Lcom/amap/mapapi/map/RouteOverlay;

    iget v4, p0, Lcom/amap/mapapi/map/ak;->a:I

    invoke-virtual {p0, p2, v2}, Lcom/amap/mapapi/map/ap;->a(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    invoke-interface {v1, p2, v3, v4, v2}, Lcom/amap/mapapi/map/RouteMessageHandler;->onDragBegin(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v0, :cond_6

    iget-boolean v3, p0, Lcom/amap/mapapi/map/o;->f:Z

    if-eqz v3, :cond_6

    iput-boolean v1, p0, Lcom/amap/mapapi/map/o;->f:Z

    iget-boolean v3, p0, Lcom/amap/mapapi/map/o;->g:Z

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/amap/mapapi/map/o;->g:Z

    iget-object v1, p0, Lcom/amap/mapapi/map/o;->e:Lcom/amap/mapapi/map/RouteMessageHandler;

    iget-object v3, p0, Lcom/amap/mapapi/map/ap;->c:Lcom/amap/mapapi/map/RouteOverlay;

    iget v4, p0, Lcom/amap/mapapi/map/ak;->a:I

    invoke-virtual {p0, p2, v2}, Lcom/amap/mapapi/map/ap;->a(Lcom/amap/mapapi/map/MapView;Landroid/graphics/Point;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v2

    invoke-interface {v1, p2, v3, v4, v2}, Lcom/amap/mapapi/map/RouteMessageHandler;->onDragEnd(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/amap/mapapi/map/o;->e:Lcom/amap/mapapi/map/RouteMessageHandler;

    iget-object v2, p0, Lcom/amap/mapapi/map/ap;->c:Lcom/amap/mapapi/map/RouteOverlay;

    iget v3, p0, Lcom/amap/mapapi/map/ak;->a:I

    const/4 v4, 0x4

    invoke-interface {v1, p2, v2, v3, v4}, Lcom/amap/mapapi/map/RouteMessageHandler;->onRouteEvent(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;II)Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

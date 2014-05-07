.class public Lcom/amap/mapapi/map/ao;
.super Lcom/amap/mapapi/map/t;
.source "RouteInfo.java"

# interfaces
.implements Lcom/amap/mapapi/map/MapView$b;


# instance fields
.field private i:Lcom/amap/mapapi/map/RouteOverlay;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;Lcom/amap/mapapi/map/RouteOverlay;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/amap/mapapi/map/t;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;)V

    .line 23
    iput-object p6, p0, Lcom/amap/mapapi/map/ao;->i:Lcom/amap/mapapi/map/RouteOverlay;

    .line 24
    iput p7, p0, Lcom/amap/mapapi/map/ao;->j:I

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Lcom/amap/mapapi/map/RouteOverlay;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/amap/mapapi/map/ao;-><init>(Lcom/amap/mapapi/map/MapView;Landroid/view/View;Lcom/amap/mapapi/core/GeoPoint;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;Lcom/amap/mapapi/map/RouteOverlay;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/amap/mapapi/map/t;->a()V

    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->i:Lcom/amap/mapapi/map/RouteOverlay;

    iget-object v0, v0, Lcom/amap/mapapi/map/RouteOverlay;->b:Lcom/amap/mapapi/map/RouteOverlay$a;

    iget-object v1, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v2, p0, Lcom/amap/mapapi/map/ao;->i:Lcom/amap/mapapi/map/RouteOverlay;

    iget v3, p0, Lcom/amap/mapapi/map/ao;->j:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amap/mapapi/map/RouteOverlay$a;->onRouteEvent(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;II)Z

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-super {p0}, Lcom/amap/mapapi/map/t;->b()V

    .line 29
    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    invoke-virtual {v0, p1, p0}, Lcom/amap/mapapi/map/MapView$e;->a(ZLcom/amap/mapapi/map/MapView$b;)V

    .line 30
    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v3, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    iget v0, p0, Lcom/amap/mapapi/map/ao;->j:I

    iget-object v4, p0, Lcom/amap/mapapi/map/ao;->i:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/RouteOverlay;->getRoute()Lcom/amap/mapapi/route/Route;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/MapView$e;->b(Z)V

    .line 32
    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v3, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    iget v0, p0, Lcom/amap/mapapi/map/ao;->j:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/MapView$e;->a(Z)V

    .line 33
    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v3, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView;->getMaxZoomLevel()I

    move-result v0

    iget-object v4, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/MapView;->getZoomLevel()I

    move-result v4

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/amap/mapapi/map/MapView$e;->c(Z)V

    .line 35
    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    iget-object v3, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/MapView;->getMinZoomLevel()I

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    invoke-virtual {v4}, Lcom/amap/mapapi/map/MapView;->getZoomLevel()I

    move-result v4

    if-eq v3, v4, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$e;->d(Z)V

    .line 37
    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1

    :cond_2
    move v0, v2

    .line 33
    goto :goto_2

    :cond_3
    move v1, v2

    .line 35
    goto :goto_3
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/amap/mapapi/map/t;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/amap/mapapi/map/t;->c()V

    .line 41
    iget-object v0, p0, Lcom/amap/mapapi/map/ao;->d:Lcom/amap/mapapi/map/MapView;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView;->mRouteCtrl:Lcom/amap/mapapi/map/MapView$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/amap/mapapi/map/MapView$e;->a(ZLcom/amap/mapapi/map/MapView$b;)V

    .line 42
    return-void
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/amap/mapapi/map/t;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/t;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/amap/mapapi/map/t;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/t;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/amap/mapapi/map/t;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/amap/mapapi/map/t;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

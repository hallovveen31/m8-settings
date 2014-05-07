.class Lcom/amap/mapapi/map/be;
.super Lcom/amap/mapapi/map/ak;
.source "RouteOverlayDraw.java"


# instance fields
.field private d:Lcom/amap/mapapi/map/MapView$LayoutParams;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/mapapi/map/ak;-><init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    .line 284
    iput-object p4, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iput-object p6, p0, Lcom/amap/mapapi/map/be;->d:Lcom/amap/mapapi/map/MapView$LayoutParams;

    .line 287
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/mapapi/map/MapView;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/amap/mapapi/map/be;->d:Lcom/amap/mapapi/map/MapView$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lcom/amap/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void
.end method

.method public b(Lcom/amap/mapapi/map/MapView;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    .line 295
    return-void
.end method

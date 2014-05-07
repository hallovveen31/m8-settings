.class Lcom/amap/mapapi/map/be;
.super Lcom/amap/mapapi/map/ak;
.source "RouteOverlayDraw.java"


# instance fields
.field private d:Lcom/amap/mapapi/map/MapView$LayoutParams;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/amap/mapapi/map/MapView$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/mapapi/map/ak;-><init>(Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    iput-object p4, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p6, p0, Lcom/amap/mapapi/map/be;->d:Lcom/amap/mapapi/map/MapView$LayoutParams;

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/mapapi/map/MapView;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/amap/mapapi/map/be;->d:Lcom/amap/mapapi/map/MapView$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lcom/amap/mapapi/map/MapView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/be;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.class public Lcom/amap/mapapi/map/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/mapapi/map/MapView$g;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 16
    check-cast v0, Lcom/amap/mapapi/map/MapView;

    iput-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->b:Landroid/view/ViewGroup;

    .line 17
    check-cast p1, Lcom/amap/mapapi/map/MapView;

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->getZoomMgr()Lcom/amap/mapapi/map/MapView$g;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->a:Lcom/amap/mapapi/map/MapView$g;

    .line 18
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getOnZoomListener()Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->c:Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoDismissed()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->a:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->b()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoDismissed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 70
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public setOnZoomListener(Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->c:Lcom/amap/mapapi/map/ZoomButtonsController$OnZoomListener;

    .line 109
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->a:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$g;->a(Z)V

    .line 99
    return-void
.end method

.method public setZoomInEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->a:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->f()Lcom/amap/mapapi/map/MapView$f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$f;->setEnabled(Z)V

    .line 80
    return-void
.end method

.method public setZoomOutEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amap/mapapi/map/ZoomButtonsController;->a:Lcom/amap/mapapi/map/MapView$g;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/MapView$g;->g()Lcom/amap/mapapi/map/MapView$f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/map/MapView$f;->setEnabled(Z)V

    .line 123
    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 0
    .parameter

    .prologue
    .line 41
    return-void
.end method

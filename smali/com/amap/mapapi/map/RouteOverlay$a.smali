.class Lcom/amap/mapapi/map/RouteOverlay$a;
.super Ljava/lang/Object;
.source "RouteOverlay.java"

# interfaces
.implements Lcom/amap/mapapi/map/RouteMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/RouteOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/RouteOverlay;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/RouteOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-static {v0}, Lcom/amap/mapapi/map/RouteOverlay;->b(Lcom/amap/mapapi/map/RouteOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/RouteOverlay;->closePopupWindow()V

    .line 471
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-static {v0, p3}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/RouteOverlay;I)Lcom/amap/mapapi/map/o;

    move-result-object v0

    .line 472
    invoke-virtual {v0, p4}, Lcom/amap/mapapi/map/o;->a(Lcom/amap/mapapi/core/GeoPoint;)V

    .line 473
    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapView;->invalidate()V

    .line 474
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDrag(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/RouteOverlay$a;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-static {v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/RouteOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/RouteMessageHandler;

    .line 502
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/RouteMessageHandler;->onDrag(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method

.method public onDragBegin(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/RouteOverlay$a;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-static {v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/RouteOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/RouteMessageHandler;

    .line 482
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/RouteMessageHandler;->onDragBegin(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    .line 485
    :cond_0
    return-void
.end method

.method public onDragEnd(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/RouteOverlay$a;->a(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-static {v0}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/RouteOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/RouteMessageHandler;

    .line 492
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/RouteMessageHandler;->onDragEnd(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;ILcom/amap/mapapi/core/GeoPoint;)V

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method

.method public onRouteEvent(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-static {v1}, Lcom/amap/mapapi/map/RouteOverlay;->a(Lcom/amap/mapapi/map/RouteOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/RouteMessageHandler;

    .line 454
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amap/mapapi/map/RouteMessageHandler;->onRouteEvent(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;II)Z

    move-result v0

    .line 455
    if-eqz v0, :cond_0

    .line 459
    :cond_1
    if-nez v0, :cond_2

    .line 460
    iget-object v1, p0, Lcom/amap/mapapi/map/RouteOverlay$a;->a:Lcom/amap/mapapi/map/RouteOverlay;

    invoke-virtual {v1, p1, p3, p4}, Lcom/amap/mapapi/map/RouteOverlay;->takeDefaultAction(Lcom/amap/mapapi/map/MapView;II)V

    .line 462
    :cond_2
    return v0
.end method

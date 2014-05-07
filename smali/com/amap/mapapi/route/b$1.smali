.class Lcom/amap/mapapi/route/b$1;
.super Ljava/lang/Object;
.source "Route.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/mapapi/route/b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/route/b;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/route/b;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/amap/mapapi/route/b$1;->a:Lcom/amap/mapapi/route/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 892
    iget-object v0, p0, Lcom/amap/mapapi/route/b$1;->a:Lcom/amap/mapapi/route/b;

    invoke-static {v0}, Lcom/amap/mapapi/route/b;->e(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/RouteMessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/mapapi/route/b$1;->a:Lcom/amap/mapapi/route/b;

    invoke-static {v1}, Lcom/amap/mapapi/route/b;->a(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/MapView;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/mapapi/route/b$1;->a:Lcom/amap/mapapi/route/b;

    invoke-static {v2}, Lcom/amap/mapapi/route/b;->b(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/RouteOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/mapapi/route/b$1;->a:Lcom/amap/mapapi/route/b;

    invoke-static {v3}, Lcom/amap/mapapi/route/b;->c(Lcom/amap/mapapi/route/b;)I

    move-result v3

    iget-object v4, p0, Lcom/amap/mapapi/route/b$1;->a:Lcom/amap/mapapi/route/b;

    invoke-static {v4}, Lcom/amap/mapapi/route/b;->d(Lcom/amap/mapapi/route/b;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amap/mapapi/map/RouteMessageHandler;->onRouteEvent(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteOverlay;II)Z

    .line 893
    return-void
.end method

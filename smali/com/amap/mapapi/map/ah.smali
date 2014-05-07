.class Lcom/amap/mapapi/map/ah;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapView$g;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/MapView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/ah;->a:Lcom/amap/mapapi/map/MapView$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/ah;->a:Lcom/amap/mapapi/map/MapView$g;

    iget-object v0, v0, Lcom/amap/mapapi/map/MapView$g;->i:Lcom/amap/mapapi/map/MapView;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapView;->b(Lcom/amap/mapapi/map/MapView;)Lcom/amap/mapapi/map/ai;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ah;->a:Lcom/amap/mapapi/map/MapView$g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/MapView$g;->a(Z)V

    goto :goto_0
.end method

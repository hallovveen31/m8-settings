.class Lcom/amap/mapapi/map/aa;
.super Ljava/util/TimerTask;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapActivity;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/MapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amap/mapapi/map/aa;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amap/mapapi/map/aa;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapActivity;->b(Lcom/amap/mapapi/map/MapActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method

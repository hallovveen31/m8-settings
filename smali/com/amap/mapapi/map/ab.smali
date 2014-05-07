.class Lcom/amap/mapapi/map/ab;
.super Ljava/lang/Thread;
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

    iput-object p1, p0, Lcom/amap/mapapi/map/ab;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ab;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v0}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    iget-object v0, p0, Lcom/amap/mapapi/map/ab;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v0}, Lcom/amap/mapapi/core/a;->a(Landroid/content/Context;)Z

    sget v0, Lcom/amap/mapapi/core/a;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ab;->a:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v0}, Lcom/amap/mapapi/map/MapActivity;->b(Lcom/amap/mapapi/map/MapActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/amap/mapapi/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

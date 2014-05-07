.class Lcom/amap/mapapi/map/b;
.super Ljava/lang/Object;
.source "AnimBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/a;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/a;->f()V

    iget-object v0, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    invoke-static {v0}, Lcom/amap/mapapi/map/a;->a(Lcom/amap/mapapi/map/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/mapapi/map/a;->a(Lcom/amap/mapapi/map/a;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/a;->a()V

    iget-object v2, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    invoke-virtual {v2}, Lcom/amap/mapapi/map/a;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    iget-object v6, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    iget v6, v6, Lcom/amap/mapapi/map/a;->d:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/amap/mapapi/map/b;->a:Lcom/amap/mapapi/map/a;

    iget v4, v4, Lcom/amap/mapapi/map/a;->d:I

    int-to-long v4, v4

    sub-long v0, v2, v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

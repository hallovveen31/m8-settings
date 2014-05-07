.class Lcom/amap/mapapi/map/e;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/c;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/c;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-object v2, v2, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-boolean v1, v1, Lcom/amap/mapapi/map/c;->a:Z

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-object v1, v1, Lcom/amap/mapapi/map/c;->e:Lcom/amap/mapapi/map/ai;

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/amap/mapapi/map/c;->a:Z

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 233
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-object v1, v1, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    if-eqz v1, :cond_4

    .line 194
    iget-object v0, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-object v0, v0, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    iget-object v1, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/c;->g()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amap/mapapi/map/ar;->a(IZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 197
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 198
    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/c;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/c;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/amap/mapapi/core/AMapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 208
    :goto_2
    if-eqz v0, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-object v2, v2, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-object v2, v2, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/amap/mapapi/map/ar;->a(Ljava/util/List;Z)V

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/amap/mapapi/map/e;->a:Lcom/amap/mapapi/map/c;

    iget-boolean v2, v2, Lcom/amap/mapapi/map/c;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v2, v4, :cond_5

    .line 222
    const-wide/16 v2, 0x32

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v0

    move-object v0, v1

    .line 225
    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    :try_start_4
    invoke-virtual {v0}, Lcom/amap/mapapi/core/AMapException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    .line 223
    :catch_2
    move-exception v2

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v0

    move-object v0, v1

    .line 225
    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v2, v0

    move-object v0, v1

    goto :goto_0
.end method

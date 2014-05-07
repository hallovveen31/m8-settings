.class Lcom/amap/mapapi/map/d;
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
    .line 103
    iput-object p1, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v2, v2, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-boolean v1, v1, Lcom/amap/mapapi/map/c;->a:Z

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v1, v1, Lcom/amap/mapapi/map/c;->e:Lcom/amap/mapapi/map/ai;

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/amap/mapapi/map/c;->a:Z

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 178
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v1, v1, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    if-eqz v1, :cond_7

    .line 115
    iget-object v0, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v0, v0, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    iget-object v1, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/c;->g()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/amap/mapapi/map/ar;->a(IZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 118
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/c;->a:Z

    if-eqz v0, :cond_0

    .line 130
    if-eqz v1, :cond_6

    .line 133
    iget-object v0, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-boolean v0, v0, Lcom/amap/mapapi/map/c;->a:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v0, v0, Lcom/amap/mapapi/map/c;->e:Lcom/amap/mapapi/map/ai;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v0, v0, Lcom/amap/mapapi/map/c;->e:Lcom/amap/mapapi/map/ai;

    iget-object v0, v0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 137
    goto :goto_0

    .line 141
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v3, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v3, v3, Lcom/amap/mapapi/map/c;->e:Lcom/amap/mapapi/map/ai;

    iget-object v3, v3, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    invoke-virtual {v3}, Lcom/amap/mapapi/map/ai$c;->c()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/amap/mapapi/map/c;->a(Ljava/util/ArrayList;Ljava/net/Proxy;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/amap/mapapi/core/AMapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 147
    :goto_2
    if-eqz v0, :cond_4

    :try_start_2
    iget-object v2, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v2, v2, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    if-eqz v2, :cond_4

    .line 148
    iget-object v2, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-object v2, v2, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/amap/mapapi/map/ar;->a(Ljava/util/List;Z)V

    .line 152
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/amap/mapapi/map/d;->a:Lcom/amap/mapapi/map/c;

    iget-boolean v2, v2, Lcom/amap/mapapi/map/c;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 154
    const-wide/16 v2, 0x32

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v0

    move-object v0, v1

    .line 157
    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    :try_start_4
    invoke-virtual {v0}, Lcom/amap/mapapi/core/AMapException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    .line 155
    :catch_2
    move-exception v2

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v0

    move-object v0, v1

    .line 157
    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto :goto_1

    :cond_8
    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_0
.end method

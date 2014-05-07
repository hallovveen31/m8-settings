.class abstract Lcom/amap/mapapi/map/c;
.super Lcom/amap/mapapi/map/af;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/mapapi/map/af;"
    }
.end annotation


# instance fields
.field protected volatile a:Z

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/amap/mapapi/map/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/mapapi/map/ar",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/amap/mapapi/map/as;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/amap/mapapi/map/af;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/c;->a:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/amap/mapapi/map/d;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/d;-><init>(Lcom/amap/mapapi/map/c;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/c;->g:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/amap/mapapi/map/e;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/e;-><init>(Lcom/amap/mapapi/map/c;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/c;->h:Ljava/lang/Runnable;

    .line 16
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    .line 19
    :cond_0
    new-instance v0, Lcom/amap/mapapi/map/as;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/c;->f()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/c;->h:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/mapapi/map/c;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/mapapi/map/as;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    .line 22
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/as;->a()V

    .line 28
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation
.end method

.method protected abstract a(Ljava/util/ArrayList;Ljava/net/Proxy;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/net/Proxy;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ar;->a()V

    .line 37
    invoke-virtual {p0}, Lcom/amap/mapapi/map/c;->e()V

    .line 38
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ar;->c()V

    .line 39
    iput-object v1, p0, Lcom/amap/mapapi/map/c;->c:Lcom/amap/mapapi/map/ar;

    .line 40
    iput-object v1, p0, Lcom/amap/mapapi/map/c;->e:Lcom/amap/mapapi/map/ai;

    .line 41
    iput-object v1, p0, Lcom/amap/mapapi/map/c;->f:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/amap/mapapi/map/af;->b()V

    .line 47
    invoke-virtual {p0}, Lcom/amap/mapapi/map/c;->e()V

    .line 48
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/amap/mapapi/map/af;->c()V

    .line 53
    invoke-virtual {p0}, Lcom/amap/mapapi/map/c;->e()V

    .line 54
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/c;->a:Z

    .line 59
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/amap/mapapi/map/as;

    invoke-virtual {p0}, Lcom/amap/mapapi/map/c;->f()I

    move-result v1

    iget-object v2, p0, Lcom/amap/mapapi/map/c;->h:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/mapapi/map/c;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/mapapi/map/as;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    .line 65
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/as;->a()V

    .line 67
    :cond_1
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, p0, Lcom/amap/mapapi/map/c;->a:Z

    .line 72
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 74
    :goto_0
    if-ge v1, v3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 80
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_1
    iput-object v4, p0, Lcom/amap/mapapi/map/c;->b:Ljava/util/ArrayList;

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/as;->b()V

    .line 89
    iput-object v4, p0, Lcom/amap/mapapi/map/c;->d:Lcom/amap/mapapi/map/as;

    .line 92
    :cond_3
    return-void
.end method

.method protected abstract f()I
.end method

.method protected abstract g()I
.end method

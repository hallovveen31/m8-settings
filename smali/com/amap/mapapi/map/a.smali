.class abstract Lcom/amap/mapapi/map/a;
.super Ljava/lang/Object;
.source "AnimBase.java"


# instance fields
.field protected a:I

.field public b:Z

.field protected c:I

.field protected d:I

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    .line 9
    iput v1, p0, Lcom/amap/mapapi/map/a;->a:I

    .line 10
    iput-boolean v1, p0, Lcom/amap/mapapi/map/a;->b:Z

    .line 56
    new-instance v0, Lcom/amap/mapapi/map/b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/b;-><init>(Lcom/amap/mapapi/map/a;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/a;->f:Ljava/lang/Runnable;

    .line 19
    iput p1, p0, Lcom/amap/mapapi/map/a;->c:I

    .line 20
    iput p2, p0, Lcom/amap/mapapi/map/a;->d:I

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    iput-object p1, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/a;->b:Z

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/a;->a:I

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->h()V

    .line 30
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->e()V

    .line 34
    iget-object v0, p0, Lcom/amap/mapapi/map/a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 35
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/a;->b:Z

    .line 39
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/amap/mapapi/map/a;->a:I

    iget v1, p0, Lcom/amap/mapapi/map/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/a;->a:I

    .line 43
    iget v0, p0, Lcom/amap/mapapi/map/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/a;->a:I

    iget v1, p0, Lcom/amap/mapapi/map/a;->c:I

    if-le v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->e()V

    .line 46
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/amap/mapapi/map/a;->b:Z

    return v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/mapapi/map/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

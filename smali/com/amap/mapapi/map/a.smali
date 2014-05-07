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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    iput v1, p0, Lcom/amap/mapapi/map/a;->a:I

    iput-boolean v1, p0, Lcom/amap/mapapi/map/a;->b:Z

    new-instance v0, Lcom/amap/mapapi/map/b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/b;-><init>(Lcom/amap/mapapi/map/a;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/a;->f:Ljava/lang/Runnable;

    iput p1, p0, Lcom/amap/mapapi/map/a;->c:I

    iput p2, p0, Lcom/amap/mapapi/map/a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/map/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/mapapi/map/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

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

    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/mapapi/map/a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/map/a;->a:I

    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->h()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->e()V

    iget-object v0, p0, Lcom/amap/mapapi/map/a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/mapapi/map/a;->b:Z

    return-void
.end method

.method protected f()V
    .locals 2

    iget v0, p0, Lcom/amap/mapapi/map/a;->a:I

    iget v1, p0, Lcom/amap/mapapi/map/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/mapapi/map/a;->a:I

    iget v0, p0, Lcom/amap/mapapi/map/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/mapapi/map/a;->a:I

    iget v1, p0, Lcom/amap/mapapi/map/a;->c:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/mapapi/map/a;->e()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/mapapi/map/a;->b:Z

    return v0
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/map/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/mapapi/map/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

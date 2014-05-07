.class Lcom/amap/mapapi/map/ai;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/map/ai$d;,
        Lcom/amap/mapapi/map/ai$a;,
        Lcom/amap/mapapi/map/ai$e;,
        Lcom/amap/mapapi/map/ai$b;,
        Lcom/amap/mapapi/map/ai$c;
    }
.end annotation


# instance fields
.field public a:Lcom/amap/mapapi/map/ai$e;

.field public b:Lcom/amap/mapapi/map/ai$d;

.field public c:Lcom/amap/mapapi/map/ai$b;

.field public d:Lcom/amap/mapapi/map/ai$a;

.field public e:Lcom/amap/mapapi/map/ai$c;

.field public f:Lcom/amap/mapapi/map/ad;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapActivity;Lcom/amap/mapapi/map/MapView;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    sget-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sput-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    new-instance v0, Lcom/amap/mapapi/map/ai$d;

    invoke-direct {v0, p0, p2}, Lcom/amap/mapapi/map/ai$d;-><init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    new-instance v0, Lcom/amap/mapapi/map/ad;

    iget-object v1, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/ad;-><init>(Lcom/amap/mapapi/map/ai$d;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    iget-boolean v0, p2, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v1, Lcom/amap/mapapi/core/c;->c:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->b(I)V

    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v1, Lcom/amap/mapapi/core/c;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->c(I)V

    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    iget-object v1, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ad;->a()V

    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/mapapi/core/n;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/n;->b()V

    :cond_1
    new-instance v0, Lcom/amap/mapapi/map/ai$c;

    invoke-direct {v0, p0, p0, p1, p3}, Lcom/amap/mapapi/map/ai$c;-><init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    new-instance v0, Lcom/amap/mapapi/map/ai$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/mapapi/map/ai$a;-><init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    new-instance v0, Lcom/amap/mapapi/map/ai$e;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ai$e;-><init>(Lcom/amap/mapapi/map/ai;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    new-instance v0, Lcom/amap/mapapi/map/ai$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ai$b;-><init>(Lcom/amap/mapapi/map/ai;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    invoke-direct {p0, p0}, Lcom/amap/mapapi/map/ai;->a(Lcom/amap/mapapi/map/ai;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v2, v2}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/amap/mapapi/map/ai;)V
    .locals 3

    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v1, Lcom/amap/mapapi/core/c$a;->b:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/amap/mapapi/map/bg;

    invoke-direct {v1, p1, v0}, Lcom/amap/mapapi/map/bg;-><init>(Lcom/amap/mapapi/map/ai;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/p;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->a()V

    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->b()V

    sget v0, Lcom/amap/mapapi/core/c;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/amap/mapapi/core/r;->a()V

    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/n;->a()V

    sput-object v2, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    :cond_0
    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    return-void
.end method

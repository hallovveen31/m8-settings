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
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    .line 71
    sget-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    sput-object v0, Lcom/amap/mapapi/core/c;->h:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    .line 73
    new-instance v0, Lcom/amap/mapapi/map/ai$d;

    invoke-direct {v0, p0, p2}, Lcom/amap/mapapi/map/ai$d;-><init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    .line 74
    new-instance v0, Lcom/amap/mapapi/map/ad;

    iget-object v1, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-direct {v0, v1}, Lcom/amap/mapapi/map/ad;-><init>(Lcom/amap/mapapi/map/ai$d;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    .line 76
    iget-boolean v0, p2, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v1, Lcom/amap/mapapi/core/c;->c:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->b(I)V

    .line 81
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    sget v1, Lcom/amap/mapapi/core/c;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->c(I)V

    .line 82
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    iget-object v1, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v1}, Lcom/amap/mapapi/map/ai$d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/map/ai$d;->a(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->f:Lcom/amap/mapapi/map/ad;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ad;->a()V

    .line 85
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/amap/mapapi/core/n;

    invoke-virtual {p1}, Lcom/amap/mapapi/map/MapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/mapapi/core/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    .line 88
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/n;->b()V

    .line 90
    :cond_1
    new-instance v0, Lcom/amap/mapapi/map/ai$c;

    invoke-direct {v0, p0, p0, p1, p3}, Lcom/amap/mapapi/map/ai$c;-><init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    .line 91
    new-instance v0, Lcom/amap/mapapi/map/ai$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/mapapi/map/ai$a;-><init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapActivity;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    .line 92
    new-instance v0, Lcom/amap/mapapi/map/ai$e;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ai$e;-><init>(Lcom/amap/mapapi/map/ai;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    .line 93
    new-instance v0, Lcom/amap/mapapi/map/ai$b;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/map/ai$b;-><init>(Lcom/amap/mapapi/map/ai;)V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    .line 94
    invoke-direct {p0, p0}, Lcom/amap/mapapi/map/ai;->a(Lcom/amap/mapapi/map/ai;)V

    .line 95
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-virtual {v0, v2, v2}, Lcom/amap/mapapi/map/ai$d;->a(ZZ)V

    .line 97
    return-void
.end method

.method private a(Lcom/amap/mapapi/map/ai;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    sget-object v1, Lcom/amap/mapapi/core/c$a;->b:Lcom/amap/mapapi/core/c$a;

    invoke-virtual {v1}, Lcom/amap/mapapi/core/c$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/core/n;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/amap/mapapi/map/bg;

    invoke-direct {v1, p1, v0}, Lcom/amap/mapapi/map/bg;-><init>(Lcom/amap/mapapi/map/ai;Landroid/graphics/Bitmap;)V

    .line 121
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/mapapi/map/ai$a;->a(Lcom/amap/mapapi/map/p;Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->a()V

    .line 101
    iget-object v0, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    invoke-virtual {v0}, Lcom/amap/mapapi/map/ai$a;->b()V

    .line 103
    sget v0, Lcom/amap/mapapi/core/c;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-static {}, Lcom/amap/mapapi/core/r;->a()V

    .line 105
    sget-object v0, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/n;->a()V

    .line 106
    sput-object v2, Lcom/amap/mapapi/core/c;->g:Lcom/amap/mapapi/core/n;

    .line 108
    :cond_0
    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->a:Lcom/amap/mapapi/map/ai$e;

    .line 109
    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    .line 110
    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->c:Lcom/amap/mapapi/map/ai$b;

    .line 111
    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->d:Lcom/amap/mapapi/map/ai$a;

    .line 112
    iput-object v2, p0, Lcom/amap/mapapi/map/ai;->e:Lcom/amap/mapapi/map/ai$c;

    .line 113
    return-void
.end method

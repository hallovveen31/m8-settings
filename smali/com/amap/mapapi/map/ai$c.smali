.class public Lcom/amap/mapapi/map/ai$c;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/ai;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Lcom/amap/mapapi/map/MapActivity;

.field private e:Ljava/net/Proxy;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/mapapi/map/af;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/ai;Lcom/amap/mapapi/map/MapActivity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 143
    iput-object p1, p0, Lcom/amap/mapapi/map/ai$c;->a:Lcom/amap/mapapi/map/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->b:Ljava/lang/String;

    .line 135
    const-string v0, "android"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->c:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    .line 144
    iput-object p3, p0, Lcom/amap/mapapi/map/ai$c;->d:Lcom/amap/mapapi/map/MapActivity;

    .line 146
    if-eqz p4, :cond_0

    .line 147
    iput-object p4, p0, Lcom/amap/mapapi/map/ai$c;->c:Ljava/lang/String;

    .line 150
    :cond_0
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    if-ne v0, v3, :cond_1

    .line 151
    const-string v0, "androidh"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->c:Ljava/lang/String;

    .line 158
    :goto_0
    iget-object v0, p2, Lcom/amap/mapapi/map/ai;->b:Lcom/amap/mapapi/map/ai$d;

    invoke-static {v0}, Lcom/amap/mapapi/map/ai$d;->a(Lcom/amap/mapapi/map/ai$d;)Lcom/amap/mapapi/map/MapView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amap/mapapi/map/MapView;->VMapMode:Z

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/amap/mapapi/map/bd;

    invoke-direct {v2, p2, p3}, Lcom/amap/mapapi/map/bd;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/amap/mapapi/map/m;

    invoke-direct {v2, p2, p3}, Lcom/amap/mapapi/map/m;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_1
    return-void

    .line 152
    :cond_1
    sget v0, Lcom/amap/mapapi/core/c;->e:I

    if-ne v0, v1, :cond_2

    .line 153
    const-string v0, "androidl"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->c:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "android"

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->c:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/amap/mapapi/map/aw;

    invoke-direct {v2, p2, p3}, Lcom/amap/mapapi/map/aw;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/amap/mapapi/map/m;

    invoke-direct {v2, p2, p3}, Lcom/amap/mapapi/map/m;-><init>(Lcom/amap/mapapi/map/ai;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/mapapi/map/ai$c;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/map/ai$c;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/amap/mapapi/map/ai$c;->e()V

    return-void
.end method

.method static synthetic c(Lcom/amap/mapapi/map/ai$c;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/amap/mapapi/map/ai$c;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->d:Lcom/amap/mapapi/map/MapActivity;

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->e:Ljava/net/Proxy;

    .line 219
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/map/ai$c;->e:Ljava/net/Proxy;

    .line 228
    return-void
.end method


# virtual methods
.method public a(I)Lcom/amap/mapapi/map/af;
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/map/af;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/amap/mapapi/map/af;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amap/mapapi/map/ai$c;->e:Ljava/net/Proxy;

    return-object v0
.end method

.class Lcom/amap/mapapi/route/b;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field private a:Lcom/amap/mapapi/map/RouteMessageHandler;

.field private b:I

.field private c:I

.field private d:Lcom/amap/mapapi/map/MapView;

.field private e:Lcom/amap/mapapi/map/RouteOverlay;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;Lcom/amap/mapapi/map/RouteMessageHandler;Lcom/amap/mapapi/map/RouteOverlay;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-object p1, p0, Lcom/amap/mapapi/route/b;->d:Lcom/amap/mapapi/map/MapView;

    .line 882
    iput-object p2, p0, Lcom/amap/mapapi/route/b;->a:Lcom/amap/mapapi/map/RouteMessageHandler;

    .line 883
    iput p5, p0, Lcom/amap/mapapi/route/b;->b:I

    .line 884
    iput p4, p0, Lcom/amap/mapapi/route/b;->c:I

    .line 885
    iput-object p3, p0, Lcom/amap/mapapi/route/b;->e:Lcom/amap/mapapi/map/RouteOverlay;

    .line 886
    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/MapView;
    .locals 1
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/amap/mapapi/route/b;->d:Lcom/amap/mapapi/map/MapView;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/RouteOverlay;
    .locals 1
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/amap/mapapi/route/b;->e:Lcom/amap/mapapi/map/RouteOverlay;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/mapapi/route/b;)I
    .locals 1
    .parameter

    .prologue
    .line 872
    iget v0, p0, Lcom/amap/mapapi/route/b;->c:I

    return v0
.end method

.method static synthetic d(Lcom/amap/mapapi/route/b;)I
    .locals 1
    .parameter

    .prologue
    .line 872
    iget v0, p0, Lcom/amap/mapapi/route/b;->b:I

    return v0
.end method

.method static synthetic e(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/RouteMessageHandler;
    .locals 1
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/amap/mapapi/route/b;->a:Lcom/amap/mapapi/map/RouteMessageHandler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 889
    new-instance v0, Lcom/amap/mapapi/route/b$1;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/route/b$1;-><init>(Lcom/amap/mapapi/route/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    return-void
.end method

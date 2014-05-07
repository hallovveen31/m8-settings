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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/mapapi/route/b;->d:Lcom/amap/mapapi/map/MapView;

    iput-object p2, p0, Lcom/amap/mapapi/route/b;->a:Lcom/amap/mapapi/map/RouteMessageHandler;

    iput p5, p0, Lcom/amap/mapapi/route/b;->b:I

    iput p4, p0, Lcom/amap/mapapi/route/b;->c:I

    iput-object p3, p0, Lcom/amap/mapapi/route/b;->e:Lcom/amap/mapapi/map/RouteOverlay;

    return-void
.end method

.method static synthetic a(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/MapView;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/b;->d:Lcom/amap/mapapi/map/MapView;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/RouteOverlay;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/b;->e:Lcom/amap/mapapi/map/RouteOverlay;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/mapapi/route/b;)I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/route/b;->c:I

    return v0
.end method

.method static synthetic d(Lcom/amap/mapapi/route/b;)I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/route/b;->b:I

    return v0
.end method

.method static synthetic e(Lcom/amap/mapapi/route/b;)Lcom/amap/mapapi/map/RouteMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/route/b;->a:Lcom/amap/mapapi/map/RouteMessageHandler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/amap/mapapi/route/b$1;

    invoke-direct {v0, p0}, Lcom/amap/mapapi/route/b$1;-><init>(Lcom/amap/mapapi/route/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

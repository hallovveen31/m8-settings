.class Lcom/amap/mapapi/map/ag;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/map/MapView$e;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/map/MapView$e;)V
    .locals 0
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/amap/mapapi/map/ag;->a:Lcom/amap/mapapi/map/MapView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1303
    const/4 v1, -0x1

    move v0, v2

    .line 1304
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 1305
    iget-object v3, p0, Lcom/amap/mapapi/map/ag;->a:Lcom/amap/mapapi/map/MapView$e;

    invoke-static {v3}, Lcom/amap/mapapi/map/MapView$e;->a(Lcom/amap/mapapi/map/MapView$e;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1306
    if-le v0, v4, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/amap/mapapi/map/ag;->a:Lcom/amap/mapapi/map/MapView$e;

    iput-boolean v4, v1, Lcom/amap/mapapi/map/MapView$e;->a:Z

    .line 1316
    :goto_1
    iget-object v1, p0, Lcom/amap/mapapi/map/ag;->a:Lcom/amap/mapapi/map/MapView$e;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView$e;->b(Lcom/amap/mapapi/map/MapView$e;)Lcom/amap/mapapi/map/MapView$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/amap/mapapi/map/ag;->a:Lcom/amap/mapapi/map/MapView$e;

    invoke-static {v1}, Lcom/amap/mapapi/map/MapView$e;->b(Lcom/amap/mapapi/map/MapView$e;)Lcom/amap/mapapi/map/MapView$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/mapapi/map/MapView$b;->a(I)V

    .line 1319
    :cond_0
    return-void

    .line 1309
    :cond_1
    iget-object v1, p0, Lcom/amap/mapapi/map/ag;->a:Lcom/amap/mapapi/map/MapView$e;

    iput-boolean v2, v1, Lcom/amap/mapapi/map/MapView$e;->a:Z

    goto :goto_1

    .line 1304
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

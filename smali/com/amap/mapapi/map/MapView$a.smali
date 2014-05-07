.class Lcom/amap/mapapi/map/MapView$a;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/amap/mapapi/map/MapView;


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/map/MapView;II)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/map/MapView$a;->c:Lcom/amap/mapapi/map/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/amap/mapapi/map/MapView$a;->a:I

    iput p3, p0, Lcom/amap/mapapi/map/MapView$a;->b:I

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/amap/mapapi/map/bc;

    check-cast p2, Lcom/amap/mapapi/map/bc;

    iget v0, p1, Lcom/amap/mapapi/map/bc;->a:I

    iget v1, p0, Lcom/amap/mapapi/map/MapView$a;->a:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/amap/mapapi/map/bc;->b:I

    iget v2, p0, Lcom/amap/mapapi/map/MapView$a;->b:I

    sub-int/2addr v1, v2

    iget v2, p2, Lcom/amap/mapapi/map/bc;->a:I

    iget v3, p0, Lcom/amap/mapapi/map/MapView$a;->a:I

    sub-int/2addr v2, v3

    iget v3, p2, Lcom/amap/mapapi/map/bc;->b:I

    iget v4, p0, Lcom/amap/mapapi/map/MapView$a;->b:I

    sub-int/2addr v3, v4

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    mul-int v1, v2, v2

    mul-int v2, v3, v3

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

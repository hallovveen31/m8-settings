.class abstract Lcom/amap/mapapi/route/d;
.super Lcom/amap/mapapi/route/e;
.source "DriveWalkHandler.java"


# direct methods
.method public constructor <init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/mapapi/route/e;-><init>(Lcom/amap/mapapi/route/f;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/route/Route;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/amap/mapapi/route/Route;)V
    .locals 4

    invoke-virtual {p1}, Lcom/amap/mapapi/route/Route;->getStepCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/DriveWalkSegment;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p1, v1}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v1

    check-cast v1, Lcom/amap/mapapi/route/DriveWalkSegment;

    invoke-virtual {v1}, Lcom/amap/mapapi/route/DriveWalkSegment;->getActionCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/mapapi/route/DriveWalkSegment;->setActionCode(I)V

    invoke-virtual {v1}, Lcom/amap/mapapi/route/DriveWalkSegment;->getActionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/route/DriveWalkSegment;->setActionDescription(Ljava/lang/String;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/mapapi/route/Route;->getStep(I)Lcom/amap/mapapi/route/Segment;

    move-result-object v0

    check-cast v0, Lcom/amap/mapapi/route/DriveWalkSegment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/route/DriveWalkSegment;->setActionCode(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/amap/mapapi/route/DriveWalkSegment;->setActionDescription(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/route/d;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/mapapi/core/j;->a()Lcom/amap/mapapi/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/mapapi/core/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/route/simple"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

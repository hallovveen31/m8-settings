.class public final Lcom/amap/mapapi/busline/BusPagedResult;
.super Ljava/lang/Object;
.source "BusPagedResult.java"


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusLineItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/mapapi/busline/a;


# direct methods
.method private constructor <init>(Lcom/amap/mapapi/busline/a;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/mapapi/busline/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusLineItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/mapapi/busline/BusPagedResult;->c:Lcom/amap/mapapi/busline/a;

    invoke-virtual {p1}, Lcom/amap/mapapi/busline/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/mapapi/busline/BusPagedResult;->a(I)I

    move-result v0

    iput v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->a:I

    invoke-direct {p0, p2}, Lcom/amap/mapapi/busline/BusPagedResult;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusPagedResult;->c:Lcom/amap/mapapi/busline/a;

    invoke-virtual {v1}, Lcom/amap/mapapi/busline/a;->a()I

    move-result v1

    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/amap/mapapi/busline/a;Ljava/util/ArrayList;)Lcom/amap/mapapi/busline/BusPagedResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/mapapi/busline/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusLineItem;",
            ">;)",
            "Lcom/amap/mapapi/busline/BusPagedResult;"
        }
    .end annotation

    new-instance v0, Lcom/amap/mapapi/busline/BusPagedResult;

    invoke-direct {v0, p0, p1}, Lcom/amap/mapapi/busline/BusPagedResult;-><init>(Lcom/amap/mapapi/busline/a;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/mapapi/busline/BusLineItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/mapapi/busline/BusPagedResult;->a:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->a:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private b(I)Z
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->a:I

    if-gt p1, v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPage(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->a:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/mapapi/busline/BusPagedResult;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/busline/BusPagedResult;->getPageLocal(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->c:Lcom/amap/mapapi/busline/a;

    invoke-virtual {v0, p1}, Lcom/amap/mapapi/busline/a;->a(I)V

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->c:Lcom/amap/mapapi/busline/a;

    invoke-virtual {v0}, Lcom/amap/mapapi/core/m;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/mapapi/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->a:I

    return v0
.end method

.method public getPageLocal(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/mapapi/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/mapapi/busline/BusPagedResult;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Lcom/amap/mapapi/busline/BusQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusPagedResult;->c:Lcom/amap/mapapi/busline/a;

    invoke-virtual {v0}, Lcom/amap/mapapi/busline/a;->b()Lcom/amap/mapapi/busline/BusQuery;

    move-result-object v0

    return-object v0
.end method

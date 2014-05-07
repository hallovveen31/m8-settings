.class public Lcom/amap/mapapi/busline/BusSearch;
.super Ljava/lang/Object;
.source "BusSearch.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/mapapi/busline/BusQuery;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/mapapi/busline/BusQuery;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/mapapi/busline/BusSearch;->c:I

    .line 15
    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 16
    iput-object p1, p0, Lcom/amap/mapapi/busline/BusSearch;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/amap/mapapi/busline/BusSearch;->b:Lcom/amap/mapapi/busline/BusQuery;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amap/mapapi/busline/BusQuery;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/mapapi/busline/BusSearch;->c:I

    .line 21
    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 22
    iput-object p1, p0, Lcom/amap/mapapi/busline/BusSearch;->a:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/amap/mapapi/busline/BusSearch;->b:Lcom/amap/mapapi/busline/BusQuery;

    .line 24
    return-void
.end method


# virtual methods
.method public getQuery()Lcom/amap/mapapi/busline/BusQuery;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/mapapi/busline/BusSearch;->b:Lcom/amap/mapapi/busline/BusQuery;

    return-object v0
.end method

.method public searchBusLine()Lcom/amap/mapapi/busline/BusPagedResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v1, Lcom/amap/mapapi/busline/a;

    iget-object v0, p0, Lcom/amap/mapapi/busline/BusSearch;->b:Lcom/amap/mapapi/busline/BusQuery;

    iget-object v2, p0, Lcom/amap/mapapi/busline/BusSearch;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/amap/mapapi/busline/a;-><init>(Lcom/amap/mapapi/busline/BusQuery;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/busline/a;->a(I)V

    .line 30
    iget v0, p0, Lcom/amap/mapapi/busline/BusSearch;->c:I

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/busline/a;->b(I)V

    .line 31
    invoke-virtual {v1}, Lcom/amap/mapapi/busline/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/amap/mapapi/busline/BusPagedResult;->a(Lcom/amap/mapapi/busline/a;Ljava/util/ArrayList;)Lcom/amap/mapapi/busline/BusPagedResult;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/amap/mapapi/busline/BusSearch;->c:I

    .line 37
    return-void
.end method

.method public setQuery(Lcom/amap/mapapi/busline/BusQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amap/mapapi/busline/BusSearch;->b:Lcom/amap/mapapi/busline/BusQuery;

    .line 41
    return-void
.end method

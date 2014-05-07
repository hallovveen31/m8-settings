.class public Lcom/amap/mapapi/poisearch/PoiSearch;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;,
        Lcom/amap/mapapi/poisearch/PoiSearch$Query;
    }
.end annotation


# static fields
.field public static final SORT_BY_DISTANCE:I = 0x1

.field public static final SORT_DEFAULT:I


# instance fields
.field private a:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

.field private b:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Lcom/amap/mapapi/core/GeoPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->d:I

    .line 25
    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 26
    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->c:Landroid/content/Context;

    .line 27
    invoke-virtual {p0, p2}, Lcom/amap/mapapi/poisearch/PoiSearch;->setQuery(Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->d:I

    .line 31
    invoke-static {p1}, Lcom/amap/mapapi/core/b;->a(Landroid/content/Context;)Lcom/amap/mapapi/core/b;

    .line 32
    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->c:Landroid/content/Context;

    .line 34
    invoke-virtual {p0, p3}, Lcom/amap/mapapi/poisearch/PoiSearch;->setQuery(Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getBound()Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->a:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    return-object v0
.end method

.method public getCenter()Lcom/amap/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->e:Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public getQuery()Lcom/amap/mapapi/poisearch/PoiSearch$Query;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->b:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    return-object v0
.end method

.method public searchPOI()Lcom/amap/mapapi/poisearch/PoiPagedResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/mapapi/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 38
    new-instance v1, Lcom/amap/mapapi/poisearch/a;

    new-instance v0, Lcom/amap/mapapi/poisearch/b;

    iget-object v2, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->b:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    iget-object v3, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->a:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    iget-object v4, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->e:Lcom/amap/mapapi/core/GeoPoint;

    invoke-direct {v0, v2, v3, v4}, Lcom/amap/mapapi/poisearch/b;-><init>(Lcom/amap/mapapi/poisearch/PoiSearch$Query;Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;Lcom/amap/mapapi/core/GeoPoint;)V

    iget-object v2, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/mapapi/core/e;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5, v5}, Lcom/amap/mapapi/poisearch/a;-><init>(Lcom/amap/mapapi/poisearch/b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/poisearch/a;->a(I)V

    .line 42
    iget v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->d:I

    invoke-virtual {v1, v0}, Lcom/amap/mapapi/poisearch/a;->b(I)V

    .line 43
    invoke-virtual {v1}, Lcom/amap/mapapi/poisearch/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/amap/mapapi/poisearch/PoiPagedResult;->a(Lcom/amap/mapapi/poisearch/a;Ljava/util/ArrayList;)Lcom/amap/mapapi/poisearch/PoiPagedResult;

    move-result-object v0

    return-object v0
.end method

.method public setBound(Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->a:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->a:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->a:Lcom/amap/mapapi/poisearch/PoiSearch$SearchBound;

    .line 67
    return-void
.end method

.method public setCenter(Lcom/amap/mapapi/core/GeoPoint;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->e:Lcom/amap/mapapi/core/GeoPoint;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->e:Lcom/amap/mapapi/core/GeoPoint;

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->e:Lcom/amap/mapapi/core/GeoPoint;

    .line 73
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->d:I

    .line 49
    return-void
.end method

.method public setPoiNumber(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/poisearch/PoiSearch;->setPageSize(I)V

    .line 56
    return-void
.end method

.method public setQuery(Lcom/amap/mapapi/poisearch/PoiSearch$Query;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->b:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->b:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch;->b:Lcom/amap/mapapi/poisearch/PoiSearch$Query;

    .line 61
    return-void
.end method

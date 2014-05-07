.class public Lcom/amap/mapapi/poisearch/PoiSearch$Query;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->d:I

    .line 98
    iput-object p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty  query and catagory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/mapapi/core/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, ""

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->a()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSortMode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->d:I

    return v0
.end method

.method public setSortMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/amap/mapapi/poisearch/PoiSearch$Query;->d:I

    .line 133
    return-void
.end method

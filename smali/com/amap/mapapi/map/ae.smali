.class public Lcom/amap/mapapi/map/ae;
.super Ljava/lang/Object;
.source "MapProjectionSetting.java"


# instance fields
.field public a:D

.field public b:D

.field public c:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

.field public d:D

.field public e:I

.field public f:D

.field public g:D

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->a:D

    .line 20
    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->b:D

    .line 25
    sget-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    iput-object v0, p0, Lcom/amap/mapapi/map/ae;->c:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    .line 30
    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->d:D

    .line 35
    iput v3, p0, Lcom/amap/mapapi/map/ae;->e:I

    .line 40
    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->f:D

    .line 45
    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->g:D

    .line 50
    iput v3, p0, Lcom/amap/mapapi/map/ae;->h:I

    .line 55
    iput v3, p0, Lcom/amap/mapapi/map/ae;->i:I

    .line 60
    iput v3, p0, Lcom/amap/mapapi/map/ae;->j:I

    return-void
.end method

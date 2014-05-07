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

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->a:D

    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->b:D

    sget-object v0, Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    iput-object v0, p0, Lcom/amap/mapapi/map/ae;->c:Lcom/amap/mapapi/core/GeoPoint$EnumMapProjection;

    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->d:D

    iput v3, p0, Lcom/amap/mapapi/map/ae;->e:I

    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->f:D

    iput-wide v1, p0, Lcom/amap/mapapi/map/ae;->g:D

    iput v3, p0, Lcom/amap/mapapi/map/ae;->h:I

    iput v3, p0, Lcom/amap/mapapi/map/ae;->i:I

    iput v3, p0, Lcom/amap/mapapi/map/ae;->j:I

    return-void
.end method

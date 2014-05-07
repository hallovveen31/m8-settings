.class public Lcom/amap/mapapi/map/bc;
.super Ljava/lang/Object;
.source "VMapGeoPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/mapapi/map/bc;->a:I

    iput p2, p0, Lcom/amap/mapapi/map/bc;->b:I

    return-void
.end method

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

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/amap/mapapi/map/bc;->a:I

    .line 20
    iput p2, p0, Lcom/amap/mapapi/map/bc;->b:I

    .line 21
    return-void
.end method

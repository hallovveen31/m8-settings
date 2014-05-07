.class public Lcom/amap/mapapi/core/GeoPoint$b;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/core/GeoPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-wide p1, p0, Lcom/amap/mapapi/core/GeoPoint$b;->a:D

    .line 355
    iput-wide p3, p0, Lcom/amap/mapapi/core/GeoPoint$b;->b:D

    .line 356
    return-void
.end method

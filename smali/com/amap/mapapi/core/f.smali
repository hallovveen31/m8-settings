.class final Lcom/amap/mapapi/core/f;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/core/GeoPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/mapapi/core/GeoPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/mapapi/core/GeoPoint;
    .locals 2
    .parameter

    .prologue
    .line 320
    new-instance v0, Lcom/amap/mapapi/core/GeoPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/mapapi/core/GeoPoint;-><init>(Landroid/os/Parcel;Lcom/amap/mapapi/core/f;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/mapapi/core/GeoPoint;
    .locals 1
    .parameter

    .prologue
    .line 324
    new-array v0, p1, [Lcom/amap/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/core/f;->a(Landroid/os/Parcel;)Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/amap/mapapi/core/f;->a(I)[Lcom/amap/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

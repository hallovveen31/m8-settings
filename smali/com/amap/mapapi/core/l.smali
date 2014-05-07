.class final Lcom/amap/mapapi/core/l;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/core/PoiItem;
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
        "Lcom/amap/mapapi/core/PoiItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/mapapi/core/PoiItem;
    .locals 2

    new-instance v0, Lcom/amap/mapapi/core/PoiItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/mapapi/core/PoiItem;-><init>(Landroid/os/Parcel;Lcom/amap/mapapi/core/l;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/mapapi/core/PoiItem;
    .locals 1

    new-array v0, p1, [Lcom/amap/mapapi/core/PoiItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/core/l;->a(Landroid/os/Parcel;)Lcom/amap/mapapi/core/PoiItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/mapapi/core/l;->a(I)[Lcom/amap/mapapi/core/PoiItem;

    move-result-object v0

    return-object v0
.end method

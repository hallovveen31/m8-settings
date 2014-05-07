.class Lcom/amap/mapapi/location/b;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/mapapi/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/mapapi/location/a;


# direct methods
.method constructor <init>(Lcom/amap/mapapi/location/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/mapapi/location/b;->a:Lcom/amap/mapapi/location/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/mapapi/location/b;->a:Lcom/amap/mapapi/location/a;

    invoke-static {v0, p1}, Lcom/amap/mapapi/location/a;->a(Lcom/amap/mapapi/location/a;Landroid/location/Location;)Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/mapapi/location/a;->a(J)J

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

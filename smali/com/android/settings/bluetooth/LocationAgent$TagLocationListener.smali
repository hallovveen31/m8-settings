.class final Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
.super Ljava/lang/Object;
.source "LocationAgent.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TagLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocationAgent;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/LocationAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/LocationAgent;Lcom/android/settings/bluetooth/LocationAgent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;-><init>(Lcom/android/settings/bluetooth/LocationAgent;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/settings/bluetooth/LocationAgent;->mTime:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/bluetooth/LocationAgent;->access$002(Lcom/android/settings/bluetooth/LocationAgent;J)J

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #setter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocation:Landroid/location/Location;
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/LocationAgent;->access$102(Lcom/android/settings/bluetooth/LocationAgent;Landroid/location/Location;)Landroid/location/Location;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocationAgent;->access$200(Lcom/android/settings/bluetooth/LocationAgent;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocationAgent;->access$300(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocation:Landroid/location/Location;
    invoke-static {v4}, Lcom/android/settings/bluetooth/LocationAgent;->access$100(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/location/Location;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/bluetooth/HtcTagPreference;->persistOutOfRangeLocation(Landroid/content/Context;Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/bluetooth/LocationAgent;->access$200(Lcom/android/settings/bluetooth/LocationAgent;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/settings/bluetooth/LocationAgent;->sendmail(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/LocationAgent;->access$400(Lcom/android/settings/bluetooth/LocationAgent;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #calls: Lcom/android/settings/bluetooth/LocationAgent;->shutdownAgent()V
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocationAgent;->access$500(Lcom/android/settings/bluetooth/LocationAgent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

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

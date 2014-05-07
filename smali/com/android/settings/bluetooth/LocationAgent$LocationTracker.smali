.class Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;
.super Landroid/os/Handler;
.source "LocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocationAgent;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocationAgent;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    .line 85
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "message"

    .prologue
    const-wide/16 v2, 0x3e8

    const/16 v10, 0x67

    const/4 v4, 0x0

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 95
    .local v7, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$300(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Lcom/android/settings/bluetooth/HtcTagPreference;->persistOutOfRangeTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$200(Lcom/android/settings/bluetooth/LocationAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$600(Lcom/android/settings/bluetooth/LocationAgent;)Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    new-instance v1, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    iget-object v5, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    const/4 v8, 0x0

    invoke-direct {v1, v5, v8}, Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;-><init>(Lcom/android/settings/bluetooth/LocationAgent;Lcom/android/settings/bluetooth/LocationAgent$1;)V

    #setter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocationAgent;->access$602(Lcom/android/settings/bluetooth/LocationAgent;Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;)Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$800(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v6

    .line 100
    .local v6, allProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 101
    const-string v0, "gps"

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$800(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget-object v5, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
    invoke-static {v5}, Lcom/android/settings/bluetooth/LocationAgent;->access$600(Lcom/android/settings/bluetooth/LocationAgent;)Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 104
    :cond_1
    const-string v0, "network"

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$800(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    iget-object v5, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mLocationListener:Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;
    invoke-static {v5}, Lcom/android/settings/bluetooth/LocationAgent;->access$600(Lcom/android/settings/bluetooth/LocationAgent;)Lcom/android/settings/bluetooth/LocationAgent$TagLocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 109
    .end local v6           #allProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->removeMessages(I)V

    .line 110
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v10, v0, v1}, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 116
    .end local v7           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 118
    .restart local v7       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$200(Lcom/android/settings/bluetooth/LocationAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$200(Lcom/android/settings/bluetooth/LocationAgent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #calls: Lcom/android/settings/bluetooth/LocationAgent;->shutdownAgent()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$500(Lcom/android/settings/bluetooth/LocationAgent;)V

    goto/16 :goto_0

    .line 127
    .end local v7           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    const-string v0, "LocationAgent"

    const-string v1, "HANDLER_TRACKING_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mOutOfRangeTags:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocationAgent;->access$200(Lcom/android/settings/bluetooth/LocationAgent;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #calls: Lcom/android/settings/bluetooth/LocationAgent;->sendmail(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocationAgent;->access$400(Lcom/android/settings/bluetooth/LocationAgent;Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationAgent$LocationTracker;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #calls: Lcom/android/settings/bluetooth/LocationAgent;->shutdownAgent()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$500(Lcom/android/settings/bluetooth/LocationAgent;)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class final Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;
.super Ljava/lang/Object;
.source "HtcTagManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HtcTagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TagServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcTagManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/HtcTagManager;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/HtcTagManager;Lcom/android/settings/bluetooth/HtcTagManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;-><init>(Lcom/android/settings/bluetooth/HtcTagManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "className"
    .parameter "proxy"

    .prologue
    .line 108
    const-string v7, "HtcTagManager"

    const-string v8, "onServiceConnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-static {p2}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    move-result-object v8

    #setter for: Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    invoke-static {v7, v8}, Lcom/android/settings/bluetooth/HtcTagManager;->access$002(Lcom/android/settings/bluetooth/HtcTagManager;Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    .line 110
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z
    invoke-static {v7, v8}, Lcom/android/settings/bluetooth/HtcTagManager;->access$102(Lcom/android/settings/bluetooth/HtcTagManager;Z)Z

    .line 111
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->access$200(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcTagProfile;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    invoke-static {v8}, Lcom/android/settings/bluetooth/HtcTagManager;->access$000(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/HtcTagProfile;->setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V

    .line 112
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->access$300(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcPxpProfile;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    invoke-static {v8}, Lcom/android/settings/bluetooth/HtcTagManager;->access$000(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/HtcPxpProfile;->setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V

    .line 113
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->access$400(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcFmpProfile;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    invoke-static {v8}, Lcom/android/settings/bluetooth/HtcTagManager;->access$000(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/HtcFmpProfile;->setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V

    .line 114
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->access$000(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 115
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->access$500(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 116
    .local v1, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 117
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBle()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 119
    .local v5, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 120
    .local v6, state:I
    invoke-virtual {v0, v5, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_1

    .line 122
    .end local v5           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v6           #state:I
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 125
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->access$600(Lcom/android/settings/bluetooth/HtcTagManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z
    invoke-static {v7, v8}, Lcom/android/settings/bluetooth/HtcTagManager;->access$602(Lcom/android/settings/bluetooth/HtcTagManager;Z)Z

    .line 128
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->access$000(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->dismissAll()V

    .line 129
    const-string v7, "HtcTagManager"

    const-string v8, "dismissAll when proxy ready!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1           #cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    :cond_3
    :goto_2
    return-void

    .line 130
    .restart local v1       #cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    :catch_0
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "HtcTagManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "classname"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    const-string v0, "HtcTagManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #setter for: Lcom/android/settings/bluetooth/HtcTagManager;->mIsProxyReady:Z
    invoke-static {v0, v3}, Lcom/android/settings/bluetooth/HtcTagManager;->access$102(Lcom/android/settings/bluetooth/HtcTagManager;Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #setter for: Lcom/android/settings/bluetooth/HtcTagManager;->mProxy:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;
    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->access$002(Lcom/android/settings/bluetooth/HtcTagManager;Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mHtcTagProfile:Lcom/android/settings/bluetooth/HtcTagProfile;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcTagManager;->access$200(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcTagProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcTagProfile;->setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mHtcPxpProfile:Lcom/android/settings/bluetooth/HtcPxpProfile;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcTagManager;->access$300(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcPxpProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcPxpProfile;->setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #getter for: Lcom/android/settings/bluetooth/HtcTagManager;->mHtcFmpProfile:Lcom/android/settings/bluetooth/HtcFmpProfile;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcTagManager;->access$400(Lcom/android/settings/bluetooth/HtcTagManager;)Lcom/android/settings/bluetooth/HtcFmpProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/HtcFmpProfile;->setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagManager$TagServiceListener;->this$0:Lcom/android/settings/bluetooth/HtcTagManager;

    #setter for: Lcom/android/settings/bluetooth/HtcTagManager;->mDismissWhenProxyReady:Z
    invoke-static {v0, v3}, Lcom/android/settings/bluetooth/HtcTagManager;->access$602(Lcom/android/settings/bluetooth/HtcTagManager;Z)Z

    .line 142
    return-void
.end method

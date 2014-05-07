.class Lcom/android/settings/bluetooth/HtcFmpProfile;
.super Ljava/lang/Object;
.source "HtcFmpProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# static fields
.field static final NAME:Ljava/lang/String; = "FMP"

.field private static final ORDINAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcFmpProfile"


# instance fields
.field private mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    .line 46
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->enable(Landroid/bluetooth/BluetoothDevice;IZ)V

    .line 49
    const-string v2, "HtcFmpProfile"

    const-string v3, "connect to fmp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "HtcFmpProfile"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v3, :cond_0

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->enable(Landroid/bluetooth/BluetoothDevice;IZ)V

    .line 60
    const-string v3, "HtcFmpProfile"

    const-string v4, "disconnect fmp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "HtcFmpProfile"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v2

    .line 64
    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->isConnected(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    .line 72
    .local v1, isConnected:Z
    const-string v2, "HtcFmpProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is fmp Connected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const/4 v2, 0x2

    .line 78
    .end local v1           #isConnected:Z
    :goto_0
    return v2

    .line 76
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HtcFmpProfile"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 116
    const v0, 0x7f0200e8

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 108
    const v0, 0x7f0c0ab3

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 112
    const v0, 0x7f0c0ab4

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    .line 82
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v3, :cond_0

    .line 84
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->isEnabled(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    .line 85
    .local v1, isEnabled:Z
    const-string v3, "HtcFmpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is fmp Enabled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #isEnabled:Z
    :goto_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "HtcFmpProfile"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v1, v2

    .line 89
    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 97
    return-void
.end method

.method public setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 33
    const-string v0, "HtcFmpProfile"

    const-string v1, "setup proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcFmpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "FMP"

    return-object v0
.end method

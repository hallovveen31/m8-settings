.class Lcom/android/settings/bluetooth/HtcPxpProfile;
.super Ljava/lang/Object;
.source "HtcPxpProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# static fields
.field static final NAME:Ljava/lang/String; = "PXP"

.field private static final ORDINAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcPxpProfile"


# instance fields
.field private mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->enable(Landroid/bluetooth/BluetoothDevice;IZ)V

    const-string v2, "HtcPxpProfile"

    const-string v3, "connect to pxp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "HtcPxpProfile"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->enable(Landroid/bluetooth/BluetoothDevice;IZ)V

    const-string v2, "HtcPxpProfile"

    const-string v3, "disconnect pxp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "HtcPxpProfile"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v4, 0x2

    invoke-interface {v3, p1, v4}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->isConnected(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    const-string v3, "HtcPxpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is pxp Connected :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "HtcPxpProfile"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    const v0, 0x7f0200e8

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f0c0ab1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f0c0ab2

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3}, Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;->isEnabled(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    const-string v2, "HtcPxpProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is pxp Enabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "HtcPxpProfile"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

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

    return-void
.end method

.method public setProxy(Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;)V
    .locals 2

    const-string v0, "HtcPxpProfile"

    const-string v1, "setup proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcPxpProfile;->mService:Lcom/htc/android/bluetooth/le/profile/pxp/IHtcBleProximityService;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PXP"

    return-object v0
.end method

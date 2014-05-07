.class Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 7
    .parameter "context"
    .parameter "cachedDevice"
    .parameter "reason"

    .prologue
    .line 390
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 393
    .local v0, action:I
    packed-switch p3, :pswitch_data_0

    .line 412
    :pswitch_0
    const-string v3, "BluetoothEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-void

    .line 395
    :pswitch_1
    const v1, 0x7f0c0cc4

    .line 396
    .local v1, errorMsg:I
    const/4 v0, 0x1

    .line 415
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mRetryHandler:Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;

    move-result-object v3

    if-nez v3, :cond_0

    .line 416
    const-string v3, "BluetoothEventManager"

    const-string v4, "new RetryHandler!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V

    #setter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mRetryHandler:Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;
    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1802(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;)Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;

    .line 419
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mRetryHandler:Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mRetryHandler:Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1800(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 399
    .end local v1           #errorMsg:I
    :pswitch_2
    const v1, 0x7f0c0cc6

    .line 400
    .restart local v1       #errorMsg:I
    const/4 v0, 0x2

    .line 401
    goto :goto_1

    .line 403
    .end local v1           #errorMsg:I
    :pswitch_3
    const v1, 0x7f0c0cc5

    .line 404
    .restart local v1       #errorMsg:I
    goto :goto_1

    .line 409
    .end local v1           #errorMsg:I
    :pswitch_4
    const v1, 0x7f0c0cc3

    .line 410
    .restart local v1       #errorMsg:I
    goto :goto_1

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v8, -0x8000

    .line 327
    if-nez p3, :cond_1

    .line 328
    const-string v5, "BluetoothEventManager"

    const-string v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 333
    .local v0, bondState:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 334
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_3

    .line 335
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CachedBluetoothDevice for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found, calling readPairedDevices()."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_2

    .line 338
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but we have no record of that device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 343
    if-nez v1, :cond_3

    .line 344
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but device not added in cache."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->InformState(I)V

    .line 352
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 353
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 354
    .local v2, callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/settings/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 356
    .end local v2           #callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 359
    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    .line 360
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 362
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/settings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1700(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 367
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 370
    :cond_5
    const-string v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 373
    .local v4, reason:I
    invoke-direct {p0, p1, v1, v4}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    goto/16 :goto_0

    .line 374
    .end local v4           #reason:I
    :cond_6
    const/16 v5, 0xc

    if-ne v0, v5, :cond_0

    .line 375
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 377
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v5, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_0
.end method

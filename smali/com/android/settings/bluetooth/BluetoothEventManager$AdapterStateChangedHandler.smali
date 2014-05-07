.class Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const v8, 0x1080080

    const/high16 v7, -0x8000

    const/4 v6, 0x0

    .line 208
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 211
    .local v3, state:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 213
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    monitor-enter v5

    .line 214
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 215
    .local v0, callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    invoke-interface {v0, v3}, Lcom/android/settings/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 217
    .end local v0           #callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    .line 220
    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 221
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mBluetoothEnableForTether:Z
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/settings/bluetooth/BluetoothEventManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #setter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mBluetoothEnableForTether:Z
    invoke-static {v4, v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1402(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)Z

    .line 223
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->startBluetoothTethering()V

    .line 236
    :cond_1
    :goto_1
    return-void

    .line 227
    :cond_2
    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_1

    .line 228
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #setter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mBluetoothEnableForTether:Z
    invoke-static {v4, v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1402(Lcom/android/settings/bluetooth/BluetoothEventManager;Z)Z

    .line 229
    invoke-static {p1, v6}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistRestoreBluetoothState(Landroid/content/Context;Z)V

    .line 231
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 233
    .local v2, manager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 234
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

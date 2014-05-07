.class Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;
.super Landroid/os/Handler;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 428
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 429
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager;->showRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    .line 430
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mRetryHandler:Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;
    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1802(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;)Lcom/android/settings/bluetooth/BluetoothEventManager$RetryHandler;

    .line 431
    return-void
.end method

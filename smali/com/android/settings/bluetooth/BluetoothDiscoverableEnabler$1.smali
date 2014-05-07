.class Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BluetoothDiscoverableEnabler"

    const-string v1, "clear discoverable timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    #calls: Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->clearDiscoverableTimeout()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    return-void
.end method

.class Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$1;
.super Ljava/lang/Object;
.source "HtcBluetoothTetherUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$1;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcBluetoothTetherUtils"

    const-string v1, "clear discoverable timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$1;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    #calls: Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->clearDiscoverableTimeout()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V

    return-void
.end method

.class Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;
.super Ljava/lang/Object;
.source "HtcBluetoothTetherUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    #getter for: Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->access$200(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    #getter for: Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->access$200(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

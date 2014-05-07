.class Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$5;
.super Landroid/content/BroadcastReceiver;
.source "HtcBluetoothTetherPage3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$5;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$5;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;

    #calls: Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->UpdateTetheredUI()V
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->access$500(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;)V

    .line 224
    :cond_0
    return-void
.end method

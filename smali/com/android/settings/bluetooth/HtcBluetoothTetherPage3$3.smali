.class Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$3;
.super Ljava/lang/Object;
.source "HtcBluetoothTetherPage3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->onResume()V
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
    .line 110
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$3;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$3;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->recreate()V

    .line 114
    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "HtcBluetoothTetherPage3"

    const-string v1, "Font scale or theme changed, recreate UI."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.class Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$6;
.super Ljava/lang/Object;
.source "HtcBluetoothTetherPage3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 227
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$6;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 230
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$6;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;

    const/16 v1, 0x2ee5

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->setResult(I)V

    .line 233
    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcBluetoothTetherPage3"

    const-string v1, "Finish on Airplane mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3$6;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage3;->finish()V

    .line 236
    :cond_1
    return-void
.end method

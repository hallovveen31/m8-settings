.class Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;
.super Landroid/content/BroadcastReceiver;
.source "HtcBluetoothTetherPage2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;

    #getter for: Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
    invoke-static {v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->access$400(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2$4;->this$0:Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;

    #getter for: Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->mClickAirplaneWarningDialog:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;->access$300(Lcom/android/settings/bluetooth/HtcBluetoothTetherPage2;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->ShowAirplaneWarningDialog(ZLandroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

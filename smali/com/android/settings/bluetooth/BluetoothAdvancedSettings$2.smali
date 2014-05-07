.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/htc/android/bluetooth/HtcBluetoothFtp;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #setter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;
    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$302(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Lcom/htc/android/bluetooth/HtcBluetoothFtp;)Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothAdvancedSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$300(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$500(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$302(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Lcom/htc/android/bluetooth/HtcBluetoothFtp;)Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    return-void
.end method

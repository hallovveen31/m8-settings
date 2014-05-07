.class Lcom/android/settings/wifi/ConnectingDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/ConnectingDialog;->registerNetworkStateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ConnectingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ConnectingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x191

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    const-string v3, "OOBE_ConnectingDialog"

    const-string v4, "intent null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/settings/wifi/ConnectingDialog;->access$500(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "OOBE_ConnectingDialog"

    const-string v4, "pass first sticky intent!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings/wifi/ConnectingDialog;->mFirstStickyIntent:Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/android/settings/wifi/ConnectingDialog;->access$502(Lcom/android/settings/wifi/ConnectingDialog;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "noConnectivity"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    const-string v4, "OOBE_ConnectingDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive isConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    #calls: Lcom/android/settings/wifi/ConnectingDialog;->hasWifiAPToConnect(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings/wifi/ConnectingDialog;->access$600(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "OOBE_ConnectingDialog"

    const-string v4, "still have wifi connecting!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v2, :cond_5

    const/4 v4, 0x2

    :goto_2
    invoke-virtual {v6, v7, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_2

    :cond_6
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "supplicantError"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_7

    const-string v4, "OOBE_ConnectingDialog"

    const-string v5, "authenticating fail!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v7, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #calls: Lcom/android/settings/wifi/ConnectingDialog;->updateDialogMessage(Landroid/content/Context;)V
    invoke-static {v3, p1}, Lcom/android/settings/wifi/ConnectingDialog;->access$700(Lcom/android/settings/wifi/ConnectingDialog;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/ConnectingDialog$2;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #calls: Lcom/android/settings/wifi/ConnectingDialog;->updateDialogMessage(Landroid/content/Context;)V
    invoke-static {v3, p1}, Lcom/android/settings/wifi/ConnectingDialog;->access$700(Lcom/android/settings/wifi/ConnectingDialog;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.class Lcom/android/settings/wifi/ConnectingDialog$1;
.super Landroid/os/Handler;
.source "ConnectingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ConnectingDialog;
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

    iput-object p1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v2, 0x193

    const/16 v5, 0x194

    const/16 v4, 0x192

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "OOBE_ConnectingDialog"

    const-string v2, "network connecting timeout!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "OOBE_ConnectingDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;->onDismiss(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_2
    const-string v1, "OOBE_ConnectingDialog"

    const-string v2, "wait connecting timeout!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mOnDismissListener:Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$000(Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;->onDismiss(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$200(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/settings/wifi/ConnectingDialog;->isConnectingMobileNetwork(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$300(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #calls: Lcom/android/settings/wifi/ConnectingDialog;->registerNetworkStateReceiver()V
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$400(Lcom/android/settings/wifi/ConnectingDialog;)V

    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectingDialog$1;->this$0:Lcom/android/settings/wifi/ConnectingDialog;

    #getter for: Lcom/android/settings/wifi/ConnectingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/ConnectingDialog;->access$100(Lcom/android/settings/wifi/ConnectingDialog;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

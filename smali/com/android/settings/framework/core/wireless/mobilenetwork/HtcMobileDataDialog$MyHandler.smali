.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;
.super Landroid/os/Handler;
.source "HtcMobileDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 187
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 189
    .local v2, isMobileDataOff:Z
    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 190
    .local v1, isAvailableNetwork:Z
    :goto_2
    const-string v4, "HtcMobileDataDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMobileDataOff:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; isAvailableNetwork:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 192
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->sendEmptyMessage(I)Z

    .line 193
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v9, v4, v5}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v1           #isAvailableNetwork:Z
    .end local v2           #isMobileDataOff:Z
    :cond_1
    move v2, v5

    .line 188
    goto :goto_1

    .restart local v2       #isMobileDataOff:Z
    :cond_2
    move v1, v5

    .line 189
    goto :goto_2

    .line 194
    .restart local v1       #isAvailableNetwork:Z
    :cond_3
    if-eqz v2, :cond_4

    .line 195
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 196
    :cond_4
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p0, v9}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 200
    .end local v1           #isAvailableNetwork:Z
    .end local v2           #isMobileDataOff:Z
    :cond_5
    const-string v4, "HtcMobileDataDialog"

    const-string v5, "cm is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    iget-object v6, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v6}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c03bc

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    #setter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v4, v5}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$502(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 205
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #getter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$500(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 208
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    iget-object v6, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v6}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c03bb

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    #setter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v4, v5}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$502(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 209
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #getter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$500(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 212
    :pswitch_3
    const-string v6, "net.notify.block"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 213
    .local v3, isNotify:Z
    invoke-static {}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$600()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "HtcMobileDataDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.notify.block:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_6
    if-nez v3, :cond_0

    .line 215
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->sendEmptyMessage(I)Z

    .line 216
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    const/16 v5, 0x64

    #setter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mWhich:I
    invoke-static {v4, v5}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$202(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;I)I

    .line 217
    iget-object v4, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->finish()V

    goto/16 :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcMobileDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;-><init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.htc.intent.ACTION_WIFI_DISCONNECT_NOTIFY_USER_SELECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enable"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #getter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandler:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$400(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #getter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mHandler:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$400(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    const/16 v1, 0x64

    #setter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mWhich:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$202(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;I)I

    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$ConnectivityReceiver;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

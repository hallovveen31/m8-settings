.class Lcom/android/settings/SmartNetSharingApnDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "SmartNetSharingApnDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmartNetSharingApnDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNetSharingApnDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNetSharingApnDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/SmartNetSharingApnDialog$3;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$3;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$300(Lcom/android/settings/SmartNetSharingApnDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$3;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->access$300(Lcom/android/settings/SmartNetSharingApnDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 129
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog$3;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    invoke-virtual {v1}, Lcom/android/settings/SmartNetSharingApnDialog;->finish()V

    .line 132
    :cond_0
    return-void
.end method

.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;
.super Ljava/lang/Object;
.source "HtcMobileDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #setter for: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->mWhich:I
    invoke-static {v1, p2}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$202(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;I)I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->notifyUserSelection(Landroid/content/Context;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$300(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->persistMobileDataSettingEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    iget-object v2, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$2;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->notifyUserSelection(Landroid/content/Context;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$300(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/content/Context;Z)V

    goto :goto_0
.end method

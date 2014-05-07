.class Lcom/android/settings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->removeAccountDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->access$002(Lcom/android/settings/accounts/AccountSyncSettings;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 418
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20402cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 423
    new-instance v0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->start()V

    .line 430
    return-void
.end method

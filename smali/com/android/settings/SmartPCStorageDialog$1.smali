.class Lcom/android/settings/SmartPCStorageDialog$1;
.super Ljava/lang/Object;
.source "SmartPCStorageDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartPCStorageDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartPCStorageDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartPCStorageDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move v2, p3

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isMTPIOBusy()Z

    move-result v0

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0752

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0760

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040258

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$1$2;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/SmartPCStorageDialog$1$2;-><init>(Lcom/android/settings/SmartPCStorageDialog$1;I)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040256

    new-instance v6, Lcom/android/settings/SmartPCStorageDialog$1$1;

    invoke-direct {v6, p0}, Lcom/android/settings/SmartPCStorageDialog$1$1;-><init>(Lcom/android/settings/SmartPCStorageDialog$1;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    #setter for: Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3, v4}, Lcom/android/settings/SmartPCStorageDialog;->access$002(Lcom/android/settings/SmartPCStorageDialog;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$000(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #calls: Lcom/android/settings/SmartPCStorageDialog;->enableMTP()V
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$200(Lcom/android/settings/SmartPCStorageDialog;)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$400(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidateViews()V

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #calls: Lcom/android/settings/SmartPCStorageDialog;->enableUMS()V
    invoke-static {v3}, Lcom/android/settings/SmartPCStorageDialog;->access$300(Lcom/android/settings/SmartPCStorageDialog;)V

    goto :goto_1

    :cond_3
    const-string v3, "SmartPCStorageDialog"

    const-string v4, "USB cable is disconnected, do nothing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

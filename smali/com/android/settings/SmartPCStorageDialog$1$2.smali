.class Lcom/android/settings/SmartPCStorageDialog$1$2;
.super Ljava/lang/Object;
.source "SmartPCStorageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartPCStorageDialog$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SmartPCStorageDialog$1;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/android/settings/SmartPCStorageDialog$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iput p2, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iget-object v0, v0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/SmartPCStorageDialog;->access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->val$selected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iget-object v0, v0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #calls: Lcom/android/settings/SmartPCStorageDialog;->enableMTP()V
    invoke-static {v0}, Lcom/android/settings/SmartPCStorageDialog;->access$200(Lcom/android/settings/SmartPCStorageDialog;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iget-object v0, v0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->list:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/android/settings/SmartPCStorageDialog;->access$400(Lcom/android/settings/SmartPCStorageDialog;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iget-object v0, v0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iget-object v0, v0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #getter for: Lcom/android/settings/SmartPCStorageDialog;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/SmartPCStorageDialog;->access$100(Lcom/android/settings/SmartPCStorageDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->val$selected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$1$2;->this$1:Lcom/android/settings/SmartPCStorageDialog$1;

    iget-object v0, v0, Lcom/android/settings/SmartPCStorageDialog$1;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    #calls: Lcom/android/settings/SmartPCStorageDialog;->enableUMS()V
    invoke-static {v0}, Lcom/android/settings/SmartPCStorageDialog;->access$300(Lcom/android/settings/SmartPCStorageDialog;)V

    goto :goto_0
.end method

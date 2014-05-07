.class Lcom/android/settings/accounts/ManageAccounts$3;
.super Ljava/lang/Object;
.source "ManageAccounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccounts;->getSyncButtonStatueRunnable(ZZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccounts;

.field final synthetic val$anySyncFailed:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccounts;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    iput-boolean p2, p0, Lcom/android/settings/accounts/ManageAccounts$3;->val$sync:Z

    iput-boolean p3, p0, Lcom/android/settings/accounts/ManageAccounts$3;->val$anySyncFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->val$sync:Z

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z
    invoke-static {v2}, Lcom/android/settings/accounts/ManageAccounts;->access$500(Lcom/android/settings/accounts/ManageAccounts;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    iget-boolean v1, v1, Lcom/android/settings/accounts/ManageAccounts;->firstSet:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    iput-boolean v0, v1, Lcom/android/settings/accounts/ManageAccounts;->firstSet:Z

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    iget-boolean v2, p0, Lcom/android/settings/accounts/ManageAccounts$3;->val$sync:Z

    #setter for: Lcom/android/settings/accounts/ManageAccounts;->isSyncing:Z
    invoke-static {v1, v2}, Lcom/android/settings/accounts/ManageAccounts;->access$502(Lcom/android/settings/accounts/ManageAccounts;Z)Z

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccounts$3;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    #getter for: Lcom/android/settings/accounts/ManageAccounts;->mErrorInfoView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/accounts/ManageAccounts;->access$600(Lcom/android/settings/accounts/ManageAccounts;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/accounts/ManageAccounts$3;->val$anySyncFailed:Z

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

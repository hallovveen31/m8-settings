.class Lcom/android/settings/accounts/ManageAccountsSettings$4;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;->getSyncButtonStatueRunnable(Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

.field final synthetic val$anySyncFailed:Z


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$4;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    iput-boolean p2, p0, Lcom/android/settings/accounts/ManageAccountsSettings$4;->val$anySyncFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$4;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$700(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$4;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    #getter for: Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$700(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$4;->val$anySyncFailed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

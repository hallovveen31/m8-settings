.class Lcom/android/settings/accounts/ManageAccounts$4;
.super Ljava/lang/Object;
.source "ManageAccounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ManageAccounts;->initBackSettings(Lcom/htc/widget/ActionBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccounts;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccounts;)V
    .locals 0
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccounts$4;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccounts$4;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ManageAccounts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 702
    return-void
.end method

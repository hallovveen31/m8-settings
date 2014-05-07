.class Lcom/android/settings/applications/ManageApplicationsFragment$3;
.super Ljava/lang/Object;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsFragment;->registerSearchContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplicationsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$3;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1144
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$3;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1135
    return-void
.end method

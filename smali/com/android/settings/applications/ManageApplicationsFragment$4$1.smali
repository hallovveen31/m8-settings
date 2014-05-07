.class Lcom/android/settings/applications/ManageApplicationsFragment$4$1;
.super Ljava/lang/Object;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplicationsFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1476
    sget-boolean v0, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Done clearing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1400(Lcom/android/settings/applications/ManageApplicationsFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1478
    sget-boolean v0, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Updating UI!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->pause()V

    .line 1480
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsFragment$4;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplicationsFragment$4;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1500(Lcom/android/settings/applications/ManageApplicationsFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$4$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$4;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplicationsFragment$4;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsFragment;->access$1600(Lcom/android/settings/applications/ManageApplicationsFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->resume(II)V

    .line 1482
    :cond_2
    return-void
.end method

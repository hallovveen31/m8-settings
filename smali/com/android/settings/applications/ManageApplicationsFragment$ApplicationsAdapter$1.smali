.class Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplicationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    #getter for: Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->access$100(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 354
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 355
    .local v1, fr:Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 356
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 357
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 363
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->access$202(Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 364
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 365
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter$1;->this$1:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    .line 366
    return-void
.end method
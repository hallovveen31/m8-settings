.class public Lcom/android/settings/applications/AppOpsCategory;
.super Lcom/android/settings/framework/app/HtcInternalListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;,
        Lcom/android/settings/applications/AppOpsCategory$AppListLoader;,
        Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;,
        Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/app/HtcInternalListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final RESULT_APP_DETAILS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

.field mCurrentPkgName:Ljava/lang/String;

.field mState:Lcom/android/settings/applications/AppOpsState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/AppOpsCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppOpsCategory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V
    .locals 2
    .parameter "template"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListFragment;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 384
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 388
    .local v0, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v1, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0fb4

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 392
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 350
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setHasOptionsMenu(Z)V

    .line 368
    new-instance v0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    .line 369
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 372
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppOpsCategory;->setListShown(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 376
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 346
    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    .line 347
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 404
    .local v0, fargs:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 405
    .local v1, template:Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    if-eqz v0, :cond_0

    .line 406
    const-string v2, "template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #template:Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    check-cast v1, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 408
    .restart local v1       #template:Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    :cond_0
    new-instance v2, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V

    return-object v2
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 396
    .local v0, entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsCategory;->startApplicationDetailsActivity()V

    .line 400
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppOpsCategory;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    const/4 v1, 0x1

    .line 413
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory;->setListShown(Z)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;>;"
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 426
    return-void
.end method

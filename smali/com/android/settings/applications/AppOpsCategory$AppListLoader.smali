.class public Lcom/android/settings/applications/AppOpsCategory$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

.field mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

.field final mState:Lcom/android/settings/applications/AppOpsState;

.field final mTemplate:Lcom/android/settings/applications/AppOpsState$OpsTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V
    .locals 1
    .parameter "context"
    .parameter "state"
    .parameter "template"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v0, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

    .line 141
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/AppOpsState;

    .line 142
    iput-object p3, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 143
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 162
    :cond_0
    move-object v0, p1

    .line 163
    .local v0, oldApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 174
    :cond_1
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 177
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mState:Lcom/android/settings/applications/AppOpsState;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mTemplate:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 226
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onStopLoading()V

    .line 239
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 241
    iput-object v2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    iput-object v2, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 249
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->onContentChanged()V

    .line 187
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/AppOpsCategory$AppListLoader;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mPackageObserver:Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mLastConfig:Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 202
    .local v0, configChange:Z
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->forceLoad()V

    .line 207
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;->cancelLoad()Z

    .line 215
    return-void
.end method

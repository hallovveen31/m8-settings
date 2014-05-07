.class public Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.super Lcom/android/settings/framework/app/SettingsPreferenceFragment;
.source "HtcInternalPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcIInternalHost;
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

.field private mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

.field private mIsInForeground:Z

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->TAG:Ljava/lang/String;

    .line 58
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mIsInForeground:Z

    .line 602
    return-void
.end method

.method private acquirePreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 353
    .local v0, container:Lcom/htc/preference/HtcPreferenceScreen;
    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 358
    :cond_0
    return-object v0
.end method

.method private addAutoTestLog()V
    .locals 3

    .prologue
    .line 590
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 596
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 597
    new-instance v1, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment$PreferenceListViewListener;-><init>(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public addStickyCallback(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addStickyCallback(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    .line 271
    return-void
.end method

.method public addStickyCallback(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 1
    .parameter "factory"
    .parameter "preChecker"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/framework/app/HtcActivityHandler;->addStickyCallback(Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackFactory;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    .line 284
    return-void
.end method

.method public addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;)V
    .locals 2
    .parameter "container"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/preference/HtcPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, preference:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/preference/HtcPreference;>;"
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    .line 299
    return-void
.end method

.method public addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V
    .locals 1
    .parameter "container"
    .parameter
    .parameter "preChecker"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/preference/HtcPreference;",
            ">;",
            "Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, preference:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/preference/HtcPreference;>;"
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    .line 316
    return-void
.end method

.method public varargs addStickyCallbacks(Lcom/htc/preference/HtcPreferenceGroup;[Ljava/lang/Class;)V
    .locals 5
    .parameter "container"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, preferences:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 332
    const-class v2, Lcom/htc/preference/HtcPreference;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    aget-object v3, p2, v1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/framework/app/HtcActivityHandler;->addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not assignable from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, error:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    .end local v0           #error:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x1

    return v0
.end method

.method public getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;-><init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandlerWrapper:Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    return-object v0
.end method

.method protected getBackParentWithExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHtcListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 472
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v1, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 477
    :cond_0
    return-object v1
.end method

.method public getInternalActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getInternalResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public getNonUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 670
    const v0, 0x7f0c0c2c

    return v0
.end method

.method protected getParentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getParentFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getParentIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getParentFragmentTitleResId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->enabledBackupButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getBackParentWithExtra()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->initBackupButton(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;IZLandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 177
    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 179
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addAutoTestLog()V

    .line 180
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->attachActivity(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parent"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, v:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 102
    const v1, 0x2080001

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 106
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 155
    invoke-super {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onDestroy()V

    .line 156
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onDisplay()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onDisplayInBackground()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 219
    return-void
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 215
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onPause()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mIsInForeground:Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 144
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method protected onPlugin(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 396
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onResume()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mIsInForeground:Z

    .line 120
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 126
    :cond_0
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onStart()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 113
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 149
    invoke-super {p0}, Lcom/android/settings/framework/app/SettingsPreferenceFragment;->onStop()V

    .line 150
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public performPlugin()V
    .locals 3

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v1, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 376
    sget-object v1, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v2, ">> performPlugin()"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v0           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 378
    .restart local v0       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-object v1, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->acquirePreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPlugin(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    .line 384
    sget-boolean v1, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 385
    sget-object v1, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object v1, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v2, "<< performPlugin()"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "receiver"
    .parameter "filter"
    .parameter "permission"

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 224
    return-void
.end method

.method public requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 229
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 525
    return-void
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;)V
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 566
    if-nez p1, :cond_0

    .line 567
    const-string v7, "The argument preference can not be null."

    .line 568
    .local v7, error:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    .end local v7           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 587
    :goto_0
    return-void

    .line 580
    :cond_1
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.mActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not instanceof HtcPreferenceActivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    :cond_2
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v1, "The fragment can not be null when action type was set to START_FRAGMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;Landroid/content/Intent;)V
    .locals 2
    .parameter "preference"
    .parameter "intent"

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    const-string v0, "The argument preference can not be null."

    .line 550
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 555
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    .line 557
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->startFragment(Lcom/htc/preference/HtcPreference;)V

    .line 558
    return-void
.end method

.method public startService(Landroid/content/Intent;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 534
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    return-void
.end method

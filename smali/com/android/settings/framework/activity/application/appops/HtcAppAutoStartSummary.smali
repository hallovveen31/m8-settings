.class public Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcAppAutoStartSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;,
        Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;,
        Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;,
        Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;,
        Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mAdapter:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;

.field protected mContentContainer:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/htc/widget/HtcListView;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field protected mRootView:Landroid/view/View;

.field private mUiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListRunnable:Ljava/lang/Runnable;

.field private mUpdateListViewRunnable:Ljava/lang/Runnable;

.field private mUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 280
    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$1;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUpdateListRunnable:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$2;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUpdateListViewRunnable:Ljava/lang/Runnable;

    .line 294
    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$3;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private closeProgressDialog()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 599
    :cond_0
    return-void
.end method

.method private getIntentReceivers(I)Ljava/util/List;
    .locals 9
    .parameter "showFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v7, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 440
    :cond_0
    const/4 v5, 0x0

    .line 488
    :cond_1
    :goto_0
    return-object v5

    .line 443
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 446
    iget-object v7, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 447
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 448
    .local v1, flags:I
    const/4 v3, 0x0

    .line 450
    .local v3, inBlackList:Z
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_3

    .line 451
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/framework/core/security/permission/HtcAutoStartManager;->isInBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 455
    :cond_3
    if-nez v3, :cond_6

    .line 456
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_5

    .line 457
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_6

    and-int/lit8 v7, p1, 0x1

    if-nez v7, :cond_6

    .line 445
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    :cond_5
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_4

    .line 465
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_4

    .line 478
    :cond_6
    new-instance v4, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getInternalActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v4, p0, v7, v8, v6}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    .line 480
    .local v4, info:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 483
    .end local v1           #flags:I
    .end local v3           #inBlackList:Z
    .end local v4           #info:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 484
    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;

    iget-object v7, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v7}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;Landroid/content/pm/PackageManager;)V

    .line 485
    .local v0, comparator:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfoComparator;
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private getUiItemList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;>;"
    const/4 v9, 0x1

    .line 492
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 493
    :cond_0
    const/4 v7, 0x0

    .line 530
    :cond_1
    return-object v7

    .line 496
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v7, uiList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 499
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .line 501
    .local v2, info:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 502
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_4
    const/4 v0, 0x0

    .line 507
    .local v0, bFind:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 508
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .line 510
    .local v5, uiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    invoke-virtual {v2}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, infoPackageName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, uiInfoPackageName:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 514
    const/4 v0, 0x1

    .line 516
    iget-boolean v8, v2, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    if-ne v8, v9, :cond_5

    .line 517
    iput-boolean v9, v5, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    .line 524
    .end local v3           #infoPackageName:Ljava/lang/String;
    .end local v5           #uiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    .end local v6           #uiInfoPackageName:Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_3

    .line 525
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 507
    .restart local v3       #infoPackageName:Ljava/lang/String;
    .restart local v5       #uiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    .restart local v6       #uiInfoPackageName:Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private initActionBar()V
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 613
    :cond_1
    return-void
.end method

.method private loadIntentReceivers()V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x258

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    .line 434
    invoke-direct {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->printIntentDebugInfo()V

    .line 435
    return-void
.end method

.method private printIntentDebugInfo()V
    .locals 7

    .prologue
    .line 626
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 660
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 661
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ===  Specific resolveInfo List  === BEGIN ===  size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 664
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 666
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .local v0, component:Landroid/content/ComponentName;
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \t app_label    = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \t enable_state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \t enable_xml   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \t packagename  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \t name         = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v4, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \t system_flag  = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    const-string v4, " \t "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 675
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 680
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ===  Specific resolveInfo List  === END ===  size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mIntentResolveInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .end local v1           #i:I
    :cond_2
    :goto_2
    return-void

    .line 683
    :cond_3
    sget-object v3, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->TAG:Ljava/lang/String;

    const-string v4, " ===  NO Specific resolveInfo List  ==="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setLoadingVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method private showProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 577
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->setLoadingVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 581
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 592
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 696
    const v0, 0x7f0c0c5f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 372
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPm:Landroid/content/pm/PackageManager;

    .line 375
    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mAdapter:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;

    .line 376
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->initActionBar()V

    .line 384
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 385
    iput-object p2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mContentContainer:Landroid/view/ViewGroup;

    .line 387
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 389
    .local v0, rootView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mRootView:Landroid/view/View;

    .line 391
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mListView:Lcom/htc/widget/HtcListView;

    .line 393
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mAdapter:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 395
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 403
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 409
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mAdapter:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .line 411
    .local v0, uiInfo:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    iget-boolean v1, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    .line 413
    new-instance v4, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUserList:Ljava/util/List;

    invoke-direct {v4, v0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;Ljava/util/List;)V

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    const v1, 0x20402cd

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->showProgressDialog(I)V

    .line 416
    return-void

    :cond_0
    move v1, v3

    .line 411
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 342
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->setLoadingVisibility(I)V

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResumeInBackground()V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->refresh()V

    .line 361
    return-void
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 536
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUpdateListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUpdateListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void
.end method

.method protected updateList()V
    .locals 4

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->loadIntentReceivers()V

    .line 543
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUserList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 547
    :cond_0
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getIntentReceivers(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUserList:Ljava/util/List;

    .line 550
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUiList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUserList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getUiItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUiList:Ljava/util/List;

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 559
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUpdateListViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUpdateListViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    return-void
.end method

.method protected updateListView()V
    .locals 2

    .prologue
    .line 564
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->setLoadingVisibility(I)V

    .line 565
    invoke-direct {p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->closeProgressDialog()V

    .line 568
    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mUiList:Ljava/util/List;

    .line 570
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;>;"
    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mAdapter:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->clear()V

    .line 572
    iget-object v1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;->mAdapter:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 574
    :cond_0
    return-void
.end method

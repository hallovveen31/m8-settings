.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DreamSettings$PackageReceiver;,
        Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/settings/DreamBackend;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

.field private mHtcOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mStartNowBtn:Lcom/htc/widget/HtcFooterButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    .line 84
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/DreamSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    .line 203
    new-instance v0, Lcom/android/settings/DreamSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamSettings$1;-><init>(Lcom/android/settings/DreamSettings;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mHtcOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 215
    new-instance v0, Lcom/android/settings/DreamSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamSettings$2;-><init>(Lcom/android/settings/DreamSettings;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 457
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/DreamSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "menu"
    .parameter "titleRes"
    .parameter "actionEnum"
    .parameter "isEnabled"
    .parameter "onClick"

    .prologue
    .line 260
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 261
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 262
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 263
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 264
    new-instance v1, Lcom/android/settings/DreamSettings$4;

    invoke-direct {v1, p0, p5}, Lcom/android/settings/DreamSettings$4;-><init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 271
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0e20

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0e1f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0e1e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 289
    .local v1, items:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    .local v0, initialSelection:I
    :goto_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0e23

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DreamSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/DreamSettings$5;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2

    .line 289
    .end local v0           #initialSelection:I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 333
    new-instance v3, Lcom/android/settings/DreamBackend;

    invoke-direct {v3, p0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 334
    .local v3, backend:Lcom/android/settings/DreamBackend;
    invoke-virtual {v3}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 335
    .local v4, isEnabled:Z
    invoke-virtual {v3}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 336
    .local v2, activatedOnSleep:Z
    invoke-virtual {v3}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 337
    .local v0, activatedOnDock:Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 338
    .local v1, activatedOnEither:Z
    :goto_0
    if-nez v4, :cond_2

    const v5, 0x7f0c0e21

    :cond_0
    :goto_1
    return v5

    .end local v1           #activatedOnEither:Z
    :cond_1
    move v1, v5

    .line 337
    goto :goto_0

    .line 338
    .restart local v1       #activatedOnEither:Z
    :cond_2
    if-eqz v1, :cond_3

    const v5, 0x7f0c0e1d

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v5, 0x7f0c0e1f

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    const v5, 0x7f0c0e20

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 346
    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, backend:Lcom/android/settings/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 348
    .local v1, isEnabled:Z
    if-nez v1, :cond_0

    .line 349
    const v2, 0x7f0c0e21

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 469
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DreamSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 470
    instance-of v2, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 471
    check-cast v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 473
    .local v1, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 475
    .end local v1           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 476
    return-void
.end method

.method private initFooterBar(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "rootView"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 481
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/DreamSettings;->mStartNowBtn:Lcom/htc/widget/HtcFooterButton;

    .line 482
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mStartNowBtn:Lcom/htc/widget/HtcFooterButton;

    const v2, 0x7f0c0e24

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 483
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mStartNowBtn:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/android/settings/DreamSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/DreamSettings$6;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/htc/widget/HtcFooterButton;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mStartNowBtn:Lcom/htc/widget/HtcFooterButton;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;

    move-result-object p1

    .line 498
    return-object p1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/settings/DreamSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 378
    sget-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    .end local p0
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    return-void

    .line 378
    .restart local p0
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private refreshFromBackend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 356
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    .line 358
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v2

    .line 359
    .local v2, dreamsEnabled:Z
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v6}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 360
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 362
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->clear()V

    .line 363
    if-eqz v2, :cond_1

    .line 364
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 365
    .local v1, dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 367
    .end local v1           #dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, arr$:[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 369
    .local v5, menuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    .end local v0           #arr$:[Landroid/view/MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #menuItem:Landroid/view/MenuItem;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mStartNowBtn:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 373
    iput-boolean v8, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    .line 374
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    const-class v0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 4

    .prologue
    .line 518
    const v2, 0x7f0c0152

    .line 520
    .local v2, titleResource:I
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGestures(Landroid/content/Context;)Z

    move-result v1

    .line 521
    .local v1, gestures:Z
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportRecentAppsButton(Landroid/content/Context;)Z

    move-result v0

    .line 522
    .local v0, buttons:Z
    if-eqz v1, :cond_0

    .line 523
    const v2, 0x7f0c0153

    .line 525
    :cond_0
    if-eqz v0, :cond_1

    .line 526
    const v2, 0x7f0c0154

    .line 528
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 529
    const v2, 0x7f0c0155

    .line 532
    :cond_2
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x1020004

    .line 157
    const-string v4, "onActivityCreated(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->initActionBar()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    .line 176
    .local v3, rawListView:Lcom/htc/widget/HtcListView;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportDockModule()Z

    move-result v4

    if-eqz v4, :cond_1

    const v1, 0x7f0c0e22

    .line 181
    .local v1, emptyViewText:I
    :goto_0
    instance-of v4, v3, Landroid/widget/ListView;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 182
    check-cast v2, Landroid/widget/ListView;

    .line 183
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcEmptyView;

    .line 184
    .local v0, emptyView:Lcom/htc/widget/HtcEmptyView;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEmptyView;->setText(I)V

    .line 185
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 187
    new-instance v4, Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    .line 188
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    .end local v0           #emptyView:Lcom/htc/widget/HtcEmptyView;
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_0
    :goto_1
    return-void

    .line 176
    .end local v1           #emptyViewText:I
    :cond_1
    const v1, 0x7f0c0b13

    goto :goto_0

    .line 191
    .restart local v1       #emptyViewText:I
    :cond_2
    instance-of v4, v3, Lcom/htc/widget/HtcListView;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 192
    check-cast v2, Lcom/htc/widget/HtcListView;

    .line 193
    .local v2, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcEmptyView;

    .line 194
    .restart local v0       #emptyView:Lcom/htc/widget/HtcEmptyView;
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEmptyView;->setText(I)V

    .line 195
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 197
    new-instance v4, Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    .line 198
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mHtcOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 107
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 109
    iput-object p1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-ne p1, v0, :cond_0

    .line 504
    iget-boolean v0, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 506
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    .line 509
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    const-string v1, "onCreate(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/DreamBackend;

    invoke-direct {v1, v0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    .line 124
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportDockModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/settings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v1, v3}, Lcom/android/settings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/android/settings/DreamSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 276
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    if-ne p1, v4, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 242
    .local v4, isEnabled:Z
    const v2, 0x7f0c0e23

    new-instance v5, Lcom/android/settings/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$3;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 253
    .local v6, whenToDream:Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 255
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/MenuItem;

    aput-object v6, v0, v3

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 256
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 143
    if-nez p2, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const v0, 0x2080001

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 149
    const v0, 0x7f040061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mContentView:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/DreamSettings;->initFooterBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mContentView:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 136
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroyView()V

    .line 137
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 313
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 318
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 320
    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    return-void
.end method

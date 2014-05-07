.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;
    }
.end annotation


# static fields
.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1

.field private static final LOADER_ID_PRINTERS_LOADER:I = 0x1


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mAddPrintersTitle:Ljava/lang/CharSequence;

.field private mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mLastUnfilteredItemCount:I

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mServiceEnabled:Z

.field private final mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    .line 104
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 837
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->announceSearchResult()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method private announceSearchResult()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->post()V

    .line 641
    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    .locals 2
    .parameter "activity"

    .prologue
    .line 568
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-direct {v0, p1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 572
    .local v0, toggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    instance-of v1, p1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v1, :cond_0

    .line 573
    check-cast p1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 588
    :cond_0
    return-object v0
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 346
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    .line 349
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 181
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 182
    .local v0, service:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/print/SettingsUtils;->writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V

    .line 189
    return-void

    .line 186
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setLoadingProgressVisibility(I)V
    .locals 2
    .parameter "visibility"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->TODO:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 493
    .local v0, activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 495
    return-void
.end method

.method private updateEmptyView()V
    .locals 10

    .prologue
    const v9, 0x7f0c10a3

    const v8, 0x7f0c10a2

    const v7, 0x7f0c109a

    const v6, 0x7f09009e

    const v5, 0x7f09009d

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 236
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 237
    .local v0, contentRoot:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 238
    .local v1, emptyView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 239
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    const/4 v1, 0x0

    .line 243
    :cond_0
    if-nez v1, :cond_1

    .line 252
    new-instance v1, Lcom/htc/widget/HtcEmptyView;

    .end local v1           #emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/htc/widget/HtcEmptyView;-><init>(Landroid/content/Context;)V

    .line 253
    .restart local v1       #emptyView:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 254
    invoke-virtual {p0, v9}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v4, v1

    .line 256
    check-cast v4, Lcom/htc/widget/HtcEmptyView;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcEmptyView;->setText(I)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 317
    :cond_1
    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 319
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 320
    const/4 v3, 0x4

    .line 327
    .local v3, visibility:I
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setLoadingProgressVisibility(I)V

    .line 329
    return-void

    .line 263
    .end local v3           #visibility:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-gtz v4, :cond_4

    .line 264
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    const/4 v1, 0x0

    .line 269
    :cond_3
    if-nez v1, :cond_1

    .line 275
    new-instance v1, Lcom/htc/widget/HtcEmptyView;

    .end local v1           #emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/htc/widget/HtcEmptyView;-><init>(Landroid/content/Context;)V

    .line 276
    .restart local v1       #emptyView:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 277
    invoke-virtual {p0, v8}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v4, v1

    .line 279
    check-cast v4, Lcom/htc/widget/HtcEmptyView;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcEmptyView;->setText(I)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 286
    :cond_4
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 287
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v5, :cond_5

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 289
    const/4 v1, 0x0

    .line 291
    :cond_5
    if-nez v1, :cond_1

    .line 300
    new-instance v1, Lcom/htc/widget/HtcEmptyView;

    .end local v1           #emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/htc/widget/HtcEmptyView;-><init>(Landroid/content/Context;)V

    .line 301
    .restart local v1       #emptyView:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 302
    invoke-virtual {p0, v7}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v4, v1

    .line 304
    check-cast v4, Lcom/htc/widget/HtcEmptyView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcEmptyView;->setText(I)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 309
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 322
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #visibility:I
    goto :goto_1

    .line 325
    .end local v3           #visibility:I
    :cond_7
    const/4 v3, 0x4

    .restart local v3       #visibility:I
    goto :goto_1
.end method

.method private updateUiForArguments()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 381
    .local v4, arguments:Landroid/os/Bundle;
    const-string v11, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 384
    const-string v11, "EXTRA_CHECKED"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 385
    .local v5, enabled:Z
    iget-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v11, v5}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 389
    .local v0, activity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 393
    :cond_0
    const-string v11, "EXTRA_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->setTitle(Ljava/lang/String;)V

    .line 404
    .end local v10           #title:Ljava/lang/String;
    :cond_1
    const-string v11, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, settingsTitle:Ljava/lang/String;
    const-string v11, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, settingsComponentName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 408
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 410
    .local v8, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 412
    .local v6, resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 414
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v11, :cond_2

    .line 415
    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 416
    iput-object v8, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 422
    .end local v6           #resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #settingsIntent:Landroid/content/Intent;
    :cond_2
    const-string v11, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, addPrintersTitle:Ljava/lang/String;
    const-string v11, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, addPrintersComponentName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 428
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 430
    .local v3, addPritnersIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 432
    .restart local v6       #resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 434
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v11, :cond_3

    .line 435
    iput-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    .line 436
    iput-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 442
    .end local v3           #addPritnersIntent:Landroid/content/Intent;
    .end local v6           #resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v11, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 446
    const-string v11, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 450
    const-string v11, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 453
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 454
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 333
    .local v0, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 334
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 336
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 342
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 339
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->MIGRATION:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    .line 949
    const-class v0, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->MIGRATION:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    .line 955
    const v0, 0x7f0c1095

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->PORTING:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 480
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 216
    packed-switch p2, :pswitch_data_0

    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 218
    :pswitch_0
    const/4 v0, 0x1

    .line 219
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 232
    :goto_0
    return-void

    .line 224
    .end local v0           #checked:Z
    :pswitch_1
    const/4 v0, 0x0

    .line 225
    .restart local v0       #checked:Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 195
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 201
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 198
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 203
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIconAttribute(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v5, 0x7f090338

    const/4 v4, 0x0

    .line 499
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 500
    const v3, 0x7f110002

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 502
    const v3, 0x7f090339

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 503
    .local v0, addPrinters:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 505
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 515
    :goto_0
    const v3, 0x7f09033a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 516
    .local v2, settings:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 518
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 528
    :goto_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 563
    .local v1, searchItem:Landroid/view/MenuItem;
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 565
    return-void

    .line 511
    .end local v1           #searchItem:Landroid/view/MenuItem;
    .end local v2           #settings:Landroid/view/MenuItem;
    :cond_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 524
    .restart local v2       #settings:Landroid/view/MenuItem;
    :cond_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 177
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroyView()V

    .line 178
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->remove()V

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 155
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 171
    return-void
.end method

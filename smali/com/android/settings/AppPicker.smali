.class public Lcom/android/settings/AppPicker;
.super Lcom/android/settings/framework/app/HtcInternalListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppPicker$AppListAdapter;,
        Lcom/android/settings/AppPicker$HtcAppViewHolder;,
        Lcom/android/settings/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

.field private mBackUpClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/AppPicker$2;

    invoke-direct {v0}, Lcom/android/settings/AppPicker$2;-><init>()V

    sput-object v0, Lcom/android/settings/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AppPicker;->performBackUp()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/settings/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AppPicker;Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/AppPicker$HtcAppViewHolder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppPicker;->createOrRecycleByHtcStyle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/AppPicker$HtcAppViewHolder;

    move-result-object v0

    return-object v0
.end method

.method private createOrRecycleByHtcStyle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/AppPicker$HtcAppViewHolder;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const v1, 0x7f04007e

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/AppPicker$HtcAppViewHolder;-><init>(Lcom/android/settings/AppPicker;Lcom/android/settings/AppPicker$1;)V

    iput-object p2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->rootView:Landroid/view/View;

    const v1, 0x7f0900f1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iput-object v1, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->itemContainer:Lcom/htc/widget/HtcListItem;

    const v1, 0x7f090021

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f090029

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v1, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppPicker$HtcAppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method

.method private performBackUp()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private setBackArrowButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AppPicker;->mBackUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/AppPicker$AppListAdapter;-><init>(Lcom/android/settings/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    iget-object v0, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    new-instance v0, Lcom/android/settings/AppPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AppPicker$1;-><init>(Lcom/android/settings/AppPicker;)V

    iput-object v0, p0, Lcom/android/settings/AppPicker;->mBackUpClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/settings/AppPicker;->setBackArrowButton()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/AppPicker;->mAdapter:Lcom/android/settings/AppPicker$AppListAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AppPicker$MyApplicationInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

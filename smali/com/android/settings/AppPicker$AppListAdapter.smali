.class public Lcom/android/settings/AppPicker$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/AppPicker$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/AppPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppPicker;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/settings/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/AppPicker;

    invoke-direct {p0, p2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    new-instance v2, Lcom/android/settings/AppPicker$MyApplicationInfo;

    invoke-direct {v2, p1}, Lcom/android/settings/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/AppPicker;)V

    iput-object v0, v2, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/AppPicker;->access$200()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/settings/AppPicker$MyApplicationInfo;

    invoke-direct {v2, p1}, Lcom/android/settings/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/AppPicker;)V

    const v4, 0x7f0c11e8

    invoke-virtual {p2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v4, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, v4}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/AppPicker;

    iget-object v3, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #calls: Lcom/android/settings/AppPicker;->createOrRecycleByHtcStyle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/AppPicker$HtcAppViewHolder;
    invoke-static {v2, v3, p2}, Lcom/android/settings/AppPicker;->access$300(Lcom/android/settings/AppPicker;Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/AppPicker$HtcAppViewHolder;

    move-result-object v0

    iget-object p2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppPicker$MyApplicationInfo;

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/AppPicker;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->itemContainer:Lcom/htc/widget/HtcListItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    :goto_0
    return-object p2

    :cond_0
    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v2, v0, Lcom/android/settings/AppPicker$HtcAppViewHolder;->itemContainer:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    goto :goto_0
.end method

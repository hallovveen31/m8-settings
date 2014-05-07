.class Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EasyWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/EasyWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/wifi/EasyWifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/EasyWifiSettings;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    const-string v0, "EasyWifiSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEntries.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/wifi/EasyWifiSettings;->access$200(Lcom/android/settings/wifi/EasyWifiSettings;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040085

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;-><init>()V

    const v2, 0x7f090008

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f090010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    iget-boolean v2, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->isWPS:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/wifi/EasyWifiSettings;->access$300(Lcom/android/settings/wifi/EasyWifiSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget v3, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->titleRes:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget v3, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->summaryRes:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I
    invoke-static {v2}, Lcom/android/settings/wifi/EasyWifiSettings;->access$000(Lcom/android/settings/wifi/EasyWifiSettings;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

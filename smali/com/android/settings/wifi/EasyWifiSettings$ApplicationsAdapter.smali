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
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;>;"
    iput-object p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    .line 381
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

    .line 382
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 430
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
    .parameter "position"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 421
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 388
    if-nez p2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/wifi/EasyWifiSettings;->access$200(Lcom/android/settings/wifi/EasyWifiSettings;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040085

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 390
    new-instance v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;-><init>()V

    .line 391
    .local v1, holder:Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;
    const v2, 0x7f090008

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    .line 392
    const v2, 0x7f090010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 393
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 398
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;

    .line 400
    .local v0, entry:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    iget-boolean v2, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->isWPS:Z

    if-nez v2, :cond_2

    .line 401
    if-eqz v0, :cond_0

    .line 402
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings/wifi/EasyWifiSettings;->access$300(Lcom/android/settings/wifi/EasyWifiSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget v3, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->titleRes:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 413
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    iget v3, v0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->summaryRes:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 416
    return-object p2

    .line 395
    .end local v0           #entry:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    .end local v1           #holder:Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;

    .restart local v1       #holder:Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;
    goto :goto_0

    .line 405
    .restart local v0       #entry:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
    :cond_2
    iget-object v2, v1, Lcom/android/settings/wifi/EasyWifiSettings$AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/EasyWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I
    invoke-static {v2}, Lcom/android/settings/wifi/EasyWifiSettings;->access$000(Lcom/android/settings/wifi/EasyWifiSettings;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 407
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 409
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

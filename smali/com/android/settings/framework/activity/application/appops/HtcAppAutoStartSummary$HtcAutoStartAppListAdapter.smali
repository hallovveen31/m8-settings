.class Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcAppAutoStartSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcAutoStartAppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->appInfo:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->appInfo:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->checkbox:Lcom/htc/widget/HtcCheckBox;

    iget-boolean v3, v1, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->bindView(Landroid/view/View;I)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040051

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;-><init>()V

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->appInfo:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

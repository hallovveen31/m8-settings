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
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 211
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary;

    .line 212
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 214
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 216
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;

    .line 258
    .local v0, holder:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;

    .line 260
    .local v1, info:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;
    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 261
    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 263
    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_0
    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->appInfo:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 268
    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->appInfo:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 272
    iget-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->checkbox:Lcom/htc/widget/HtcCheckBox;

    iget-boolean v3, v1, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppInfo;->userEnabled:Z

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 274
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 223
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 229
    if-nez p2, :cond_0

    .line 230
    invoke-virtual {p0, p3}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->bindView(Landroid/view/View;I)V

    .line 238
    return-object v0

    .line 233
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$HtcAutoStartAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040051

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;-><init>()V

    .line 246
    .local v0, holder:Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;
    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    .line 247
    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 248
    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->appInfo:Lcom/htc/widget/HtcListItem2LineText;

    .line 249
    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppAutoStartSummary$ViewHolder;->checkbox:Lcom/htc/widget/HtcCheckBox;

    .line 251
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    return-object v1
.end method

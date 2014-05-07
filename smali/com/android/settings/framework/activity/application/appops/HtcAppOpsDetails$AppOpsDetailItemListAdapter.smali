.class Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcAppOpsDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppOpsDetailItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    #getter for: Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v4}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$200(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    #getter for: Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;
    invoke-static {v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$300(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Lcom/android/settings/applications/AppOpsState;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->getAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;Z)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeNameFromValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-static {v4, v5}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeName(Landroid/content/Context;Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v4, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->name:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    #getter for: Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;
    invoke-static {v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$400(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Lcom/android/settings/applications/AppOpsState;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->name:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0, p3}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->bindView(Landroid/view/View;I)V

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

    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040053

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;-><init>()V

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->name:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

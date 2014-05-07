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
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 424
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    .line 425
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 426
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 427
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "position"

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;

    .line 468
    .local v3, vh:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 470
    .local v0, entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    #getter for: Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v4}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$200(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    #getter for: Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;
    invoke-static {v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$300(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Lcom/android/settings/applications/AppOpsState;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->getAppOpsOpMode(Landroid/app/AppOpsManager;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/applications/AppOpsState;Z)I

    move-result v1

    .line 471
    .local v1, opMode:I
    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v4}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeNameFromValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, opModeName:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v4}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->ALLOW:Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;

    invoke-static {v4, v5}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;->getOpModeTypeName(Landroid/content/Context;Lcom/android/settings/framework/core/security/permission/HtcPermissionManager$OpModeType;)Ljava/lang/String;

    move-result-object v2

    .line 478
    :cond_1
    iget-object v4, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->name:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    #getter for: Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;
    invoke-static {v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$400(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)Lcom/android/settings/applications/AppOpsState;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v4, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->name:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 481
    iget-object v4, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    iget-object v5, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 483
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 434
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 440
    if-nez p2, :cond_0

    .line 441
    invoke-virtual {p0, p3}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->bindView(Landroid/view/View;I)V

    .line 449
    return-object v0

    .line 444
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$AppOpsDetailItemListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040053

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;-><init>()V

    .line 456
    .local v0, h:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;
    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->item:Lcom/htc/widget/HtcListItem;

    .line 457
    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->name:Lcom/htc/widget/HtcListItem2LineText;

    .line 458
    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v2, v0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 460
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 462
    return-object v1
.end method

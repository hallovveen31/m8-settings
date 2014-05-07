.class Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;
.super Ljava/lang/Object;
.source "HtcAppOpsDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

.field final synthetic val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

.field final synthetic val$tempPrevOpModeTypeIndex:I

.field final synthetic val$vh:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;Lcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    iput-object p2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    iput-object p3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->val$vh:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;

    iput p4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->val$tempPrevOpModeTypeIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    move v5, p2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->val$entry:Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    iget-object v4, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->val$vh:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;

    iget v6, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$1;->val$tempPrevOpModeTypeIndex:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->onClick(Landroid/content/DialogInterface;ILcom/android/settings/applications/AppOpsState$AppOpEntry;Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$ViewHolder;II)V

    return-void
.end method

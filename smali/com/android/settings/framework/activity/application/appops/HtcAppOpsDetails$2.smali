.class Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;
.super Landroid/widget/ArrayAdapter;
.source "HtcAppOpsDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->initOpAdapter(Lcom/android/settings/applications/AppOpsState$AppOpEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

.field final synthetic this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

.field final synthetic val$tempOpModeTypeIndex:I


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;Landroid/content/Context;II[Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    iput p6, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->val$tempOpModeTypeIndex:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 329
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    if-nez p2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 343
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04007d

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 344
    new-instance v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;-><init>(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    .line 346
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v2, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->titleTextView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 347
    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    const v2, 0x1020001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v3, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    .line 349
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 355
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->titleTextView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    if-eqz v2, :cond_0

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->titleTextView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v3, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->this$0:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;

    #getter for: Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->mOpModeTypeEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$000(Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 367
    iget v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->val$tempOpModeTypeIndex:I

    if-ne p1, v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 375
    :cond_1
    :goto_2
    instance-of v2, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 376
    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 379
    :cond_2
    return-object p2

    .line 352
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    iput-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 371
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2;->holder:Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/activity/application/appops/HtcAppOpsDetails$2$AlertDialogItemViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_2
.end method

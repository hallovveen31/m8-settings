.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcEncryption3LMPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "level"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v9, "plugged"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v9, "invalid_charger"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v9, 0x50

    if-lt v2, v9, :cond_1

    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    :goto_1
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v5, :cond_6

    move v7, v8

    :goto_2
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v9, 0x1e

    if-lt v2, v9, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eq v4, v7, :cond_3

    const/4 v9, 0x2

    if-ne v4, v9, :cond_4

    :cond_3
    if-nez v1, :cond_4

    move v5, v7

    :goto_4
    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_4

    :cond_5
    move v7, v6

    goto :goto_1

    :cond_6
    move v7, v6

    goto :goto_2

    :cond_7
    move v8, v6

    goto :goto_3
.end method

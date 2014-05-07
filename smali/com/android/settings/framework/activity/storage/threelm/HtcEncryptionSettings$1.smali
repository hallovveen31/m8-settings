.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcEncryptionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x50

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 99
    const-string v9, "level"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, level:I
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 101
    .local v5, plugged:I
    const-string v9, "invalid_charger"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, invalidCharger:I
    const/4 v3, 0x0

    .line 104
    .local v3, levelOk:Z
    const/4 v6, 0x0

    .line 105
    .local v6, pluggedOk:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v9

    if-eqz v9, :cond_0

    if-ge v2, v10, :cond_1

    :cond_0
    const/16 v9, 0x6e

    if-lt v2, v9, :cond_4

    .line 122
    :cond_1
    const/4 v3, 0x1

    .line 123
    const/4 v6, 0x1

    .line 141
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v9

    if-eqz v9, :cond_9

    const v4, 0x7f0c09b6

    .line 147
    .local v4, lowBatteryResId:I
    :goto_1
    iget-object v9, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v9}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v9

    if-eqz v3, :cond_a

    if-eqz v6, :cond_a

    :goto_2
    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 148
    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;
    invoke-static {v7}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    move-result-object v7

    if-eqz v3, :cond_2

    if-eqz v6, :cond_2

    const v4, 0x7f0c09b4

    .end local v4           #lowBatteryResId:I
    :cond_2
    invoke-virtual {v7, v4}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    .line 154
    .end local v1           #invalidCharger:I
    .end local v2           #level:I
    .end local v3           #levelOk:Z
    .end local v5           #plugged:I
    .end local v6           #pluggedOk:Z
    :cond_3
    return-void

    .line 125
    .restart local v1       #invalidCharger:I
    .restart local v2       #level:I
    .restart local v3       #levelOk:Z
    .restart local v5       #plugged:I
    .restart local v6       #pluggedOk:Z
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 126
    if-lt v2, v10, :cond_5

    .line 127
    const/4 v3, 0x1

    .line 132
    :cond_5
    :goto_3
    if-eq v5, v8, :cond_6

    const/4 v9, 0x2

    if-ne v5, v9, :cond_8

    :cond_6
    if-nez v1, :cond_8

    move v6, v8

    :goto_4
    goto :goto_0

    .line 129
    :cond_7
    const/16 v9, 0x1e

    if-lt v2, v9, :cond_5

    .line 130
    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    move v6, v7

    .line 132
    goto :goto_4

    .line 141
    :cond_9
    const v4, 0x7f0c09b5

    goto :goto_1

    .restart local v4       #lowBatteryResId:I
    :cond_a
    move v8, v7

    .line 147
    goto :goto_2
.end method

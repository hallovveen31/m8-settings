.class Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;
.super Ljava/lang/Object;
.source "HtcMediaFormatConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 172
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    iget v1, v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mStorageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 186
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    sget-object v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;->CONFIRMED:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    iput-object v2, v1, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mConfirmState:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$ConfirmState;

    .line 188
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    #calls: Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->closeThisFragment()V
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$000(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V

    goto :goto_0

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    #getter for: Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->mFinalButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$100(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    #calls: Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->unmountSdCard()V
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;->access$200(Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;)V

    goto :goto_0
.end method

.class Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;
.super Landroid/os/Handler;
.source "HtcFingerprintConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUiHandler.handleMessage():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUiHandler.handleMessage(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_UPDATE_STAGE "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI_MESSAGE_UPDATE_STAGE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$Stage;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UI_MESSAGE_UPDATE_ARROW_ANIMATION"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_7

    :goto_1
    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->startWaitingAnimation(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$200(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_USE_ALT_LOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->useAltLock()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_UPDATE_FAILED_ANIMATION "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->showFailAnimation()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$400(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_UPDATE_CANCEL_ALL_ANIMATION "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->cancelAllAnimation()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

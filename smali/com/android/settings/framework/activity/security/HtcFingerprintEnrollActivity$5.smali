.class Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;
.super Landroid/os/Handler;
.source "HtcFingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUiHandler.handleMessage():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

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

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

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

    :cond_4
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateStage(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12c

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateEnrollProgress(Ljava/lang/Object;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$600(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;Ljava/lang/Object;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI_MESSAGE_UPDATE_ENROLL_PRIMARY_TEXT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x12d

    const/16 v3, 0x130

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateEnrollProgress(Ljava/lang/Object;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$600(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI_MESSAGE_UPDATE_FOOTER_BUTTON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v0, :cond_7

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->updateFooterButton(ILjava/lang/Boolean;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$700(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;ILjava/lang/Boolean;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_SWAP_ANIMATION "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->swapEnrollAnimationView(I)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$800(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_UPDATE_FAILED_ANIMATION "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showFailAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_UPDATE_CANCEL_ALL_ANIMATION "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->cancelAllAnimation()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1000(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_UPDATE_SHOW_ERROR_HINT "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->showErrorHintMessage(I)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1100(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI_MESSAGE_INIT_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->initView()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1200(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

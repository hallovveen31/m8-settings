.class Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;
.super Landroid/os/Handler;
.source "HtcFingerprintConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    .line 616
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 617
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 621
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mNonUiHandler.handleMessage():"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    if-nez p1, :cond_2

    .line 649
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNonUiHandler.handleMessage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 629
    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NON_UI_MESSAGE_START_VERIFY "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_4
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->startVerify()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$600(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V

    goto :goto_0

    .line 634
    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NON_UI_MESSAGE_STOP_VERIFY_AND_EXIT "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_5
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->stopVerifyAndExit(I)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$700(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;I)V

    goto :goto_0

    .line 639
    :pswitch_2
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NON_UI_MESSAGE_CLEAN_UP_FINGERPRINT_OBJECT "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->cleanUpFingerprint()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$800(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)V

    goto :goto_0

    .line 644
    :pswitch_3
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NON_UI_MESSAGE_CANCEL_VERIFY_OPERATION begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_7
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)Lcom/htc/fingerprintapi/HtcFingerprint;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity$MyWorkerHandler;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->mFingerprint:Lcom/htc/fingerprintapi/HtcFingerprint;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$900(Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;)Lcom/htc/fingerprintapi/HtcFingerprint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    .line 646
    :cond_8
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintConfirmActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NON_UI_MESSAGE_CANCEL_VERIFY_OPERATION end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;
.super Ljava/util/TimerTask;
.source "HtcFingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelQualityFailAnimTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1817
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1821
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CancelQualityFailAnimTimerTask.run(): mUiStage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
    invoke-static {v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;->Processing:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiStage:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$Stage;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1825
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->getCurrentVisibleAnimationView()I
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1700(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1800(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1800(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xce

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1829
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1800(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1800(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xca

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$CancelQualityFailAnimTimerTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->mEnrollProgress:I
    invoke-static {v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$1900(Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;)I

    move-result v3

    const/16 v4, 0x130

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

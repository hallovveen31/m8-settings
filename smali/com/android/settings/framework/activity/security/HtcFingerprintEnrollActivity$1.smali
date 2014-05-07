.class Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$1;
.super Ljava/lang/Object;
.source "HtcFingerprintEnrollActivity.java"

# interfaces
.implements Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->initEnrolledStatus()V
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
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity$1;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 618
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEnrolledStatus(): event.eventID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    iget v0, p1, Lcom/htc/fingerprintapi/HtcFingerprint$FingerprintEvent;->eventID:I

    packed-switch v0, :pswitch_data_0

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 621
    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/security/HtcFingerprintEnrollActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initEnrolledStatus(): FP_RESULT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

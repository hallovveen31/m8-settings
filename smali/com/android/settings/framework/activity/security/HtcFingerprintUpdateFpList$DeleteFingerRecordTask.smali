.class Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;
.super Landroid/os/AsyncTask;
.source "HtcFingerprintUpdateFpList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteFingerRecordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeletedFingerId:I

.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->mDeletedFingerId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->mDeletedFingerId:I

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/htc/fingerprintapi/HtcFingerprint;

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask$1;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask$1;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;)V

    invoke-direct {v2, v5, v6}, Lcom/htc/fingerprintapi/HtcFingerprint;-><init>(Landroid/content/Context;Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;)V

    iget v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->mDeletedFingerId:I

    invoke-virtual {v2, v5}, Lcom/htc/fingerprintapi/HtcFingerprint;->delete(I)Z

    move-result v1

    invoke-virtual {v2}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    invoke-virtual {v2}, Lcom/htc/fingerprintapi/HtcFingerprint;->cleanUp()V

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mEnrolledFingerManager:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    invoke-static {v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$400(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->mDeletedFingerId:I

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->removeRecordById(I)Z

    :cond_2
    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.settings.FINGER_PRINT_REMOVED"

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintReceiver;

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "finger_id"

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->mDeletedFingerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->clearAltUnlockMethod()V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$500(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    #setter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$602(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-direct {v2, v3, v5}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;)V

    #setter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPeekEnrolledFingerListTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;
    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$702(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mPeekEnrolledFingerListTask:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$700(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$DeleteFingerRecordTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

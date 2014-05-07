.class Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;
.super Landroid/os/AsyncTask;
.source "HtcFingerprintUpdateFpList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeekEnrolledFingerListTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Lcom/htc/fingerprintapi/HtcFingerprint;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask$1;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask$1;-><init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/fingerprintapi/HtcFingerprint;-><init>(Landroid/content/Context;Lcom/htc/fingerprintapi/HtcFingerprint$IFingerprintListener;)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->getEnrolledFingerList()I

    move-result v2

    #setter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I
    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$002(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;I)I

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cancel()Z

    invoke-virtual {v0}, Lcom/htc/fingerprintapi/HtcFingerprint;->cleanUp()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->updateFpData()V
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$100(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->refreshUI()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$200(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->checkFingerprintAndAltLock()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$300(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$PeekEnrolledFingerListTask;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    const/16 v1, -0x3e8

    #setter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mFingerListMask:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$002(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;I)I

    return-void
.end method

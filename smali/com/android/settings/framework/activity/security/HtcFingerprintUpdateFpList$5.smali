.class Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;
.super Ljava/lang/Object;
.source "HtcFingerprintUpdateFpList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->showActionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1100(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)I

    move-result v1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSelectedFpId:I
    invoke-static {v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1200(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)I

    move-result v2

    const/4 v3, 0x0

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->deleteFingerprint(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1300(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mNumOfFingerprint:I
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1100(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)I

    move-result v1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #calls: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->showDeleteConfirmDialog()V
    invoke-static {v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1400(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->SetQuickLauch:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    #setter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
    invoke-static {v1, v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$602(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0c0238

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "finger_id"

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    #getter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mSelectedFpId:I
    invoke-static {v2}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$1200(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$HtcFingerPrintQuickLaunchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$5;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

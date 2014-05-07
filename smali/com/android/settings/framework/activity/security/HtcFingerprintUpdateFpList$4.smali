.class Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$4;
.super Ljava/lang/Object;
.source "HtcFingerprintUpdateFpList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->showEnableFingerprintLockDialog()V
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

    iput-object p1, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$4;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$4;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    sget-object v1, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;->Finish:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    #setter for: Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->mCurrentStage:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;->access$602(Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;)Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$Stage;

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList$4;->this$0:Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFpList;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

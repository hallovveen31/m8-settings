.class Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings$1;
.super Ljava/lang/Object;
.source "HtcTransferMyStuffSetupWizardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

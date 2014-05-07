.class Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings$1;
.super Ljava/lang/Object;
.source "HtcTransferIPhoneSetupWizardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;->applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 73
    return-void
.end method

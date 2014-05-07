.class public Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;
.super Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;
.source "HtcMiniSetupPage1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0af8

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setTitleText(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideProgress(Z)V

    const v0, 0x7f020005

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setImage(I)V

    const v0, 0x7f0c0af9

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setDescriptionText(I)V

    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnText(I)V

    return-void
.end method

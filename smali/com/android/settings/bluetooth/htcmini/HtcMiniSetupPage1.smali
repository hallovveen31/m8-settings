.class public Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;
.super Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;
.source "HtcMiniSetupPage1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0c0af8

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;->setTitleText(I)V

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;->hideProgress(Z)V

    .line 14
    const v0, 0x7f020005

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;->setImage(I)V

    .line 15
    const v0, 0x7f0c0af9

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;->setDescriptionText(I)V

    .line 17
    const v0, 0x7f0c00d4

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage1;->setNextBtnText(I)V

    .line 18
    return-void
.end method

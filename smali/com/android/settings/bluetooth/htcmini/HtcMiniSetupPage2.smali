.class public Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;
.super Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;
.source "HtcMiniSetupPage2.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcMiniSetupPage"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRestoreNfc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0c0af8

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setTitleText(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideProgress(Z)V

    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSetupOption(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mRestoreNfc:Z

    :cond_0
    :goto_0
    const v1, 0x7f020073

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->startNfcAnimation(I)V

    const v1, 0x7f0c00e3

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnText(I)V

    const v1, 0x7f0c0afb

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setDescriptionText(I)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "HtcMiniSetupPage"

    const-string v2, "Warning! NFC should not be supported here"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const v1, 0x7f020006

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setImage(I)V

    const v1, 0x7f020072

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->startBtAnimation(I)V

    const v1, 0x7f0c00ab

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnText(I)V

    const v1, 0x7f0c0afa

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->setDescriptionText(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mRestoreNfc:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSetupPage"

    const-string v1, "Restore to turn NFC off when done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mRestoreNfc:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSetupPage"

    const-string v1, "Turn NFC on automatically in mini setup page."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_1
    return-void
.end method

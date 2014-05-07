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

    .prologue
    .line 15
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f0c0af8

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->setTitleText(I)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->hideProgress(Z)V

    .line 26
    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSetupOption(Landroid/content/Context;)I

    move-result v0

    .line 27
    .local v0, option:I
    if-nez v0, :cond_2

    .line 28
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 29
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 31
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mRestoreNfc:Z

    .line 36
    :cond_0
    :goto_0
    const v1, 0x7f020073

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->startNfcAnimation(I)V

    .line 37
    const v1, 0x7f0c00e3

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->setNextBtnText(I)V

    .line 38
    const v1, 0x7f0c0afb

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->setDescriptionText(I)V

    .line 45
    :goto_1
    return-void

    .line 34
    :cond_1
    const-string v1, "HtcMiniSetupPage"

    const-string v2, "Warning! NFC should not be supported here"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_2
    const v1, 0x7f020006

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->setImage(I)V

    .line 41
    const v1, 0x7f020072

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->startBtAnimation(I)V

    .line 42
    const v1, 0x7f0c00ab

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->setNextBtnText(I)V

    .line 43
    const v1, 0x7f0c0afa

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->setDescriptionText(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mRestoreNfc:Z

    if-eqz v0, :cond_1

    .line 60
    sget-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSetupPage"

    const-string v1, "Restore to turn NFC off when done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 63
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mRestoreNfc:Z

    if-eqz v0, :cond_1

    .line 51
    sget-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSetupPage"

    const-string v1, "Turn NFC on automatically in mini setup page."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSetupPage2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 54
    :cond_1
    return-void
.end method

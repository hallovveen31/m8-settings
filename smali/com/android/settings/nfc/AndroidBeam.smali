.class public Lcom/android/settings/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidBeam"


# instance fields
.field private mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private addBackUpButton(Lcom/htc/widget/ActionBarExt;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v1, Lcom/android/settings/nfc/AndroidBeam$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/AndroidBeam$1;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :cond_0
    const v1, 0x7f090006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0c0a39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    instance-of v2, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/nfc/AndroidBeam;->addBackUpButton(Lcom/htc/widget/ActionBarExt;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :goto_0
    return-void

    :cond_2
    const-string v2, "AndroidBeam"

    const-string v3, "NFC adapter is null, finish!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    const v0, 0x2080001

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f0400e7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/AndroidBeam;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0
.end method

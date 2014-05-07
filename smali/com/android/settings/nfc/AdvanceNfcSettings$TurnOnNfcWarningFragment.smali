.class public Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;
.super Landroid/app/DialogFragment;
.source "AdvanceNfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/AdvanceNfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TurnOnNfcWarningFragment"
.end annotation


# static fields
.field public static final TURN_ON_NFC_WARNING_FRAGMENT_TAG:Ljava/lang/String; = "turn_on_nfc_warning"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Fragment;)Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;
    .locals 2

    new-instance v0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;

    invoke-direct {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Cancel turn on NFC"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/AdvanceNfcSettings;

    if-eqz v0, :cond_0

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$100(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Update toggle button."

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$100(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string v1, "AdvanceNfcSettings"

    const-string v2, "onCreateDialog"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0b0a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$2;-><init>(Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$1;-><init>(Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0b0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

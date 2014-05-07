.class public Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;
.super Landroid/app/DialogFragment;
.source "AdvanceNfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/AdvanceNfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TurnOffSecurityReminderWarningFragment"
.end annotation


# static fields
.field public static final TURN_OFF_SECURITY_REMINDER_FRAGMENT_TAG:Ljava/lang/String; = "turn_off_security_reminder_warning"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Fragment;)Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;
    .locals 2
    .parameter "targetFragment"

    .prologue
    .line 405
    new-instance v0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;

    invoke-direct {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;-><init>()V

    .line 406
    .local v0, warningFragment:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 407
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 445
    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Cancel turn off security reminder"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/AdvanceNfcSettings;

    .line 447
    .local v0, targetFragment:Lcom/android/settings/nfc/AdvanceNfcSettings;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$300(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Update security reminder checkbox."

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$300(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 451
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 452
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 412
    const-string v1, "AdvanceNfcSettings"

    const-string v2, "onCreateDialog"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0b0c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c079d

    new-instance v3, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$2;-><init>(Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$1;-><init>(Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 439
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0b0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 440
    return-object v0
.end method

.class Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$2;
.super Ljava/lang/Object;
.source "AdvanceNfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Confirm turn off security reminder."

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/AdvanceNfcSettings;

    if-eqz v0, :cond_0

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$200(Lcom/android/settings/nfc/AdvanceNfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vzw_nfc_security_reminder_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

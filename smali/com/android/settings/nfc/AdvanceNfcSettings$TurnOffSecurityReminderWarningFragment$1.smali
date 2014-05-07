.class Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$1;
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
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$1;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 428
    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Cancel turn off security reminder"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment$1;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;

    invoke-virtual {v1}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOffSecurityReminderWarningFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/AdvanceNfcSettings;

    .line 430
    .local v0, targetFragment:Lcom/android/settings/nfc/AdvanceNfcSettings;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$300(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Update security reminder checkbox."

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mVzwEnableSecurityReminder:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$300(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 434
    :cond_0
    return-void
.end method

.class Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$2;
.super Ljava/lang/Object;
.source "AdvanceNfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string v3, "AdvanceNfcSettings"

    const-string v4, "Confirm turn on NFC."

    invoke-static {v3, v4}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/nfc/AdvanceNfcSettings;

    if-eqz v2, :cond_0

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$200(Lcom/android/settings/nfc/AdvanceNfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$200(Lcom/android/settings/nfc/AdvanceNfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_0
    iget-object v3, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$2;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "vzw_nfc_settings_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "is_nfc_turn_on_before"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

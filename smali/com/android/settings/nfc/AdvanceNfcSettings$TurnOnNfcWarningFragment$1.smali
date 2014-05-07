.class Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$1;
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
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$1;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 374
    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Cancel turn on NFC"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment$1;->this$0:Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;

    invoke-virtual {v1}, Lcom/android/settings/nfc/AdvanceNfcSettings$TurnOnNfcWarningFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/AdvanceNfcSettings;

    .line 376
    .local v0, targetFragment:Lcom/android/settings/nfc/AdvanceNfcSettings;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$100(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    const-string v1, "AdvanceNfcSettings"

    const-string v2, "Update toggle button."

    invoke-static {v1, v2}, Lcom/android/settings/nfc/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    #getter for: Lcom/android/settings/nfc/AdvanceNfcSettings;->mEnableNfcToggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    invoke-static {v0}, Lcom/android/settings/nfc/AdvanceNfcSettings;->access$100(Lcom/android/settings/nfc/AdvanceNfcSettings;)Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 380
    :cond_0
    return-void
.end method

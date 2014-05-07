.class Lcom/android/settings/wifi/WifiSettingsSetupWizard$2;
.super Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;
.source "WifiSettingsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettingsSetupWizard;->doNextClickExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$2;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-direct {p0}, Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(I)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 271
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$2;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setResult(I)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$2;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->finish()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$2;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$702(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog;

    .line 276
    return-void
.end method

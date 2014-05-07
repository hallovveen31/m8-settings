.class Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettingsSetupWizard;->onClick(Landroid/content/DialogInterface;I)V
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
    .line 418
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 421
    if-nez p2, :cond_0

    .line 422
    const-string v1, "OOBE_WifiSettingsSetupWizard"

    const-string v2, "intent null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    const-string v1, "OOBE_WifiSettingsSetupWizard"

    const-string v2, "enable next button when get scan results"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    const/4 v2, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$900(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Z)V

    .line 429
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #getter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$1000(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #getter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$1000(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$1002(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 434
    :cond_1
    return-void
.end method

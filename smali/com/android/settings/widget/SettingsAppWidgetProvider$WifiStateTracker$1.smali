.class Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$deviceManager:Landroid/os/IDeviceManager3LM;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;ZLandroid/net/wifi/WifiManager;Landroid/os/IDeviceManager3LM;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    iput-object p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$deviceManager:Landroid/os/IDeviceManager3LM;

    iput-object p5, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[WifiStateTracker] requestStateChange() AsyncTask() doInBackground() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WifiStateTracker] requestStateChange() AsyncTask() desiredState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_5

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WifiStateTracker] requestStateChange() AsyncTask() wifiApState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$desiredState:Z

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "[WifiStateTracker] requestStateChange() AsyncTask() doInBackground() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_4
    return-object v3

    :cond_5
    const-string v1, "false"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[WifiStateTracker] requestStateChange() AsyncTask() onPostExecute() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$deviceManager:Landroid/os/IDeviceManager3LM;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$deviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v2}, Landroid/os/IDeviceManager3LM;->getWifiState()I

    move-result v1

    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WifiStateTracker][3LM] nAllowWifi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "[WifiStateTracker] requestStateChange() AsyncTask() onPostExecute() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

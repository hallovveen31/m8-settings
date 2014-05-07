.class Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$deviceManager:Landroid/os/IDeviceManager3LM;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;ZLandroid/os/IDeviceManager3LM;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    iput-object p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$deviceManager:Landroid/os/IDeviceManager3LM;

    iput-object p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 682
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 685
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "[BluetoothStateTracker] requestStateChange() AsyncTask() doInBackground() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BluetoothStateTracker] requestStateChange() AsyncTask() desiredState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 690
    :cond_0
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$1000()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 692
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    const-string v0, "[BluetoothStateTracker] requestStateChange() AsyncTask() doInBackground() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 696
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 687
    :cond_2
    const-string v0, "false"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 682
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 701
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    const-string v2, "[BluetoothStateTracker] requestStateChange() AsyncTask() onPostExecute() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 708
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$deviceManager:Landroid/os/IDeviceManager3LM;

    if-eqz v2, :cond_2

    .line 709
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$deviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v2}, Landroid/os/IDeviceManager3LM;->getBluetoothEnabled()Z

    move-result v0

    .line 711
    .local v0, bAllowBt:Z
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BluetoothStateTracker][3LM] bAllowBt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    const-string v2, "true"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 715
    :cond_1
    if-nez v0, :cond_2

    .line 716
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 717
    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v0           #bAllowBt:Z
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 725
    const-string v2, "[BluetoothStateTracker] requestStateChange() AsyncTask() onPostExecute() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 727
    :cond_3
    return-void

    .line 712
    .restart local v0       #bAllowBt:Z
    :cond_4
    :try_start_1
    const-string v2, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 720
    .end local v0           #bAllowBt:Z
    :catch_0
    move-exception v1

    .line 721
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

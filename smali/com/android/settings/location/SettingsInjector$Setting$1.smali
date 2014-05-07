.class Lcom/android/settings/location/SettingsInjector$Setting$1;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/SettingsInjector$Setting;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/location/SettingsInjector$Setting;


# direct methods
.method constructor <init>(Lcom/android/settings/location/SettingsInjector$Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 430
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 431
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "summary"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, summary:Ljava/lang/String;
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 433
    .local v1, enabled:Z
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 434
    const-string v3, "SettingsInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v5, v5, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v3, "SettingsInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startService(): preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v5, v5, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", summary = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v3, v3, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v3, v3, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 439
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v3, v3, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    #getter for: Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/location/SettingsInjector;->access$300(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v4, v4, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    #getter for: Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/location/SettingsInjector;->access$300(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    return-void
.end method

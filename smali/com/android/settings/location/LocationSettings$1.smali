.class Lcom/android/settings/location/LocationSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/location/LocationSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received settings change intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    #getter for: Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;
    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->access$100(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    :cond_2
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    #calls: Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V
    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->access$200(Lcom/android/settings/location/LocationSettings;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    #calls: Lcom/android/settings/location/LocationSettings;->refreshLocationSwitchAndCategories()V
    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->access$300(Lcom/android/settings/location/LocationSettings;)V

    :cond_3
    return-void
.end method

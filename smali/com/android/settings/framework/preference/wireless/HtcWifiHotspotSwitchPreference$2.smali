.class Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiHotspotSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    const-string v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->handleWifiApStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$200(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$300(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v4, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkTetherPolicy()V
    invoke-static {v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$400(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    goto :goto_0

    :cond_3
    const-string v4, "com.htc.mdm.wifibt.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->checkTetherPolicy()V
    invoke-static {v4}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$400(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    goto :goto_0
.end method

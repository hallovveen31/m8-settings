.class Lcom/android/settings/wifi/EasyWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "EasyWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/EasyWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/EasyWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/EasyWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$1;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$1;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I
    invoke-static {v2}, Lcom/android/settings/wifi/EasyWifiSettings;->access$000(Lcom/android/settings/wifi/EasyWifiSettings;)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$1;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #setter for: Lcom/android/settings/wifi/EasyWifiSettings;->mWifiState:I
    invoke-static {v2, v1}, Lcom/android/settings/wifi/EasyWifiSettings;->access$002(Lcom/android/settings/wifi/EasyWifiSettings;I)I

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$1;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mAdapter:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;
    invoke-static {v2}, Lcom/android/settings/wifi/EasyWifiSettings;->access$100(Lcom/android/settings/wifi/EasyWifiSettings;)Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/EasyWifiSettings$1;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    #getter for: Lcom/android/settings/wifi/EasyWifiSettings;->mAdapter:Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;
    invoke-static {v2}, Lcom/android/settings/wifi/EasyWifiSettings;->access$100(Lcom/android/settings/wifi/EasyWifiSettings;)Lcom/android/settings/wifi/EasyWifiSettings$ApplicationsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

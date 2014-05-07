.class Lcom/android/settings/wifi/WebLoginActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "WebLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WebLoginActivity;->initWifiReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WebLoginActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WebLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity$2;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 158
    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity$2;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WebLoginActivity;->access$100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WebLoginActivity$2;->isInitialStickyBroadcast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 168
    .local v1, netinfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "network is not connected, so finish the activity."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity$2;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WebLoginActivity;->finish()V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity$2;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WebLoginActivity;->access$100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 174
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/settings/wifi/WebLoginActivity$2;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    #getter for: Lcom/android/settings/wifi/WebLoginActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WebLoginActivity;->access$100(Lcom/android/settings/wifi/WebLoginActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-static {}, Lcom/android/settings/wifi/WebLoginActivity;->access$300()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->SetSignInStatus(II)Z

    goto :goto_0
.end method

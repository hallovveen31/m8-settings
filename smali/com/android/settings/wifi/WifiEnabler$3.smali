.class Lcom/android/settings/wifi/WifiEnabler$3;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiEnabler;->onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #setter for: Lcom/android/settings/wifi/WifiEnabler;->mHotspotTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiEnabler;->access$1002(Lcom/android/settings/wifi/WifiEnabler;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$1200(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setWifiEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$1300(Lcom/android/settings/wifi/WifiEnabler;Z)V

    .line 233
    return-void
.end method

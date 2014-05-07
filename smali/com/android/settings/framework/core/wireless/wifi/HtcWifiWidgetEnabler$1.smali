.class Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$1;
.super Ljava/lang/Object;
.source "HtcWifiWidgetEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->getTurnOffHotspotDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;

    #getter for: Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->access$000(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 448
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler$1;->this$0:Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->setWifiEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;->access$100(Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;Z)V

    .line 449
    return-void
.end method

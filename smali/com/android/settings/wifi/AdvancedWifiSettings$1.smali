.class Lcom/android/settings/wifi/AdvancedWifiSettings$1;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiOffloadEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    .line 562
    .local v0, enable:Z
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 563
    return-void
.end method

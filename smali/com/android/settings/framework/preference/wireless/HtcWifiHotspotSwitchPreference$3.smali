.class Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;
.super Ljava/lang/Object;
.source "HtcWifiHotspotSwitchPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setSoftapEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

.field final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    iput-boolean p2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->val$isEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->remindDialog:I
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$500(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)I

    move-result v1

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->val$isEnable:Z

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showRemindDialog(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$600(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$700(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$700(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 275
    .local v0, currentstate:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$3;->val$isEnable:Z

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setWifiAPEnable(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$800(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V

    goto :goto_0
.end method

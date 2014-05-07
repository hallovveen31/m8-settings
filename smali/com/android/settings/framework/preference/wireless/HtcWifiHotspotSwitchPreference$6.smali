.class Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;
.super Ljava/lang/Object;
.source "HtcWifiHotspotSwitchPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->showRemindDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    iput-boolean p2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mDontRemind:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$1000(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$1100(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$700(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$700(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 366
    .local v0, currentstate:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->val$enable:Z

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setWifiAPEnable(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$800(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;Z)V

    .line 370
    .end local v0           #currentstate:I
    :cond_0
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$6;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$1100(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.class Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$8;
.super Ljava/lang/Object;
.source "HtcWifiHotspotSwitchPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$8;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$8;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setHotspotStatus()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$900(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    .line 387
    return-void
.end method

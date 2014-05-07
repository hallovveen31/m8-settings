.class Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$7;
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


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$7;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference$7;->this$0:Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->setHotspotStatus()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;->access$900(Lcom/android/settings/framework/preference/wireless/HtcWifiHotspotSwitchPreference;)V

    return-void
.end method

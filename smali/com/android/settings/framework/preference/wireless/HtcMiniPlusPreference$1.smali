.class Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcMiniPlusPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;->this$0:Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-static {}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 204
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "HTC Mini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HTC mini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;->this$0:Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->updateUI()V
    invoke-static {v3}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->access$500(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V

    .line 210
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

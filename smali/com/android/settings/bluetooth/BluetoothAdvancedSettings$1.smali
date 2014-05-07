.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.android.bluetooth.HtcBluetoothFtp.action.SERVICE_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "com.htc.android.bluetooth.HtcBluetoothFtp.extra.SERVICE_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, state:I
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive FTP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    packed-switch v1, :pswitch_data_0

    .line 69
    .end local v1           #state:I
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 53
    .restart local v1       #state:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 60
    .end local v1           #state:I
    :cond_2
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    #calls: Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isMediaMounted()Z
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->access$200(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

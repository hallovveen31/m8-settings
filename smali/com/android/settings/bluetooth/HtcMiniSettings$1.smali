.class Lcom/android/settings/bluetooth/HtcMiniSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcMiniSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/HtcMiniSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->isHtcMini(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$010(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    invoke-static {}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HtcMiniSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connected mini count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$000(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    iget-object v6, v3, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$000(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    move-result v3

    if-ge v3, v8, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_1
    if-ne v1, v8, :cond_7

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$008(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    invoke-static {}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "HtcMiniSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connected mini count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I
    invoke-static {v7}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$000(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    iget-object v3, v3, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I
    invoke-static {v6}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$000(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    move-result v6

    if-ge v6, v8, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    const/4 v4, 0x3

    #calls: Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$200(Lcom/android/settings/bluetooth/HtcMiniSettings;I)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_1

    :cond_7
    if-nez v1, :cond_4

    if-ne v2, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string v3, "HtcMiniSettings"

    const-string v4, "It\'s not processing device connection fail, so ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$400(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    move-result v3

    if-ne v3, v8, :cond_4

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$500(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$510(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    :goto_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    const-wide/16 v4, 0x44c

    #calls: Lcom/android/settings/bluetooth/HtcMiniSettings;->connectToNext(J)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$700(Lcom/android/settings/bluetooth/HtcMiniSettings;J)V

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #setter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I
    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$502(Lcom/android/settings/bluetooth/HtcMiniSettings;I)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$600(Lcom/android/settings/bluetooth/HtcMiniSettings;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$302(Lcom/android/settings/bluetooth/HtcMiniSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    goto :goto_3
.end method

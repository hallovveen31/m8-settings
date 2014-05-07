.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->val$intent:Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    iget-object v4, v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->val$intent:Landroid/content/Intent;

    const-string v5, "com.htc.bluetooth.le.SERVICE_TYPE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->val$intent:Landroid/content/Intent;

    const-string v5, "com.htc.bluetooth.le.SERVICE_VALUE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    iget-object v4, v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    if-ne v0, v4, :cond_0

    const/16 v4, 0x1820

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    iget-object v4, v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    iget-object v5, v5, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)I

    move-result v5

    #calls: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshTagValues(II)V
    invoke-static {v4, v5, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x1812

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    iget-object v4, v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1$1;->this$1:Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    iget-object v5, v5, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)I

    move-result v5

    #calls: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshTagValues(II)V
    invoke-static {v4, v3, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;II)V

    goto :goto_0
.end method

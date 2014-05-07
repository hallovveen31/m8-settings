.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$800(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/HtcTagManager;->getRssi(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 344
    .local v1, rssi:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$800(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/HtcTagManager;->getBattery(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 345
    .local v0, battery:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    #calls: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshTagValues(II)V
    invoke-static {v2, v1, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;II)V

    .line 346
    return-void
.end method

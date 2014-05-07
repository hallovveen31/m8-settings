.class Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "CachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .parameter "gatt"
    .parameter "status"
    .parameter "newState"

    .prologue
    .line 947
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 948
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionStateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 950
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 960
    :goto_0
    return-void

    .line 952
    :cond_0
    if-nez p3, :cond_1

    .line 953
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gatt connection fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterUuidChanged:Z
    invoke-static {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterUuidChanged:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$002(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z

    .line 956
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$100(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)V

    .line 959
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 10
    .parameter "gatt"
    .parameter "status"

    .prologue
    const/4 v9, 0x1

    .line 964
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 965
    const-string v6, "CachedBluetoothDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onServicesDiscovered: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v4

    .line 967
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 968
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Landroid/os/ParcelUuid;

    .line 969
    .local v5, uuids:[Landroid/os/ParcelUuid;
    const/4 v0, 0x0

    .line 970
    .local v0, i:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 971
    .local v3, service:Landroid/bluetooth/BluetoothGattService;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    new-instance v6, Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v6, v5, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 973
    .end local v3           #service:Landroid/bluetooth/BluetoothGattService;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$200(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$300(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/settings/bluetooth/HtcTagPreference;->setUuids(Landroid/content/Context;Ljava/lang/String;[Landroid/os/ParcelUuid;)V

    .line 974
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #calls: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z
    invoke-static {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$400(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    .line 975
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #setter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterUuidChanged:Z
    invoke-static {v6, v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$002(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)Z

    .line 976
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$500(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 978
    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$200(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0a82

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 980
    :cond_1
    return-void
.end method

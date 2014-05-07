.class Lcom/android/settings/bluetooth/HtcMiniSettings$3;
.super Ljava/lang/Object;
.source "HtcMiniSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcMiniSettings;->connectToNext(J)V
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

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$400(Lcom/android/settings/bluetooth/HtcMiniSettings;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$600(Lcom/android/settings/bluetooth/HtcMiniSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$600(Lcom/android/settings/bluetooth/HtcMiniSettings;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #setter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$302(Lcom/android/settings/bluetooth/HtcMiniSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    :cond_1
    invoke-static {}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HtcMiniSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v2}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #getter for: Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$3;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    #calls: Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$900(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    goto :goto_0
.end method

.class Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;
.super Ljava/lang/Object;
.source "HtcStorageVolume.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/HtcStorageVolume;->onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

.field final synthetic val$params:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/HtcStorageVolume;Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    iput-object p2, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->val$params:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->val$params:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    iget-object v5, v5, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    invoke-virtual {v5}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->getDependencyPaths()[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->val$params:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    iget-object v5, v5, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->this$0:Lcom/android/settings/framework/core/storage/HtcStorageVolume;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/settings/framework/core/storage/HtcStorageVolume$1;->val$params:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    #calls: Lcom/android/settings/framework/core/storage/HtcStorageVolume;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v5, v6, v7}, Lcom/android/settings/framework/core/storage/HtcStorageVolume;->access$000(Lcom/android/settings/framework/core/storage/HtcStorageVolume;ILjava/lang/Object;)V

    goto :goto_0
.end method

.class Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;
.super Ljava/lang/Object;
.source "HtcCloudStorageVolume.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    .local p0, this:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;,"Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume.1;"
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;->this$0:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    .local p0, this:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;,"Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume.1;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 238
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;->this$0:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    #getter for: Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mThis:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->access$000(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$1;->this$0:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    #getter for: Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mThis:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->access$000(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    move-result-object v1

    #getter for: Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->access$100(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)Lcom/android/settings/framework/os/response/HtcResponser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/os/response/HtcResponser;->broadcast(Landroid/os/Message;)V

    .line 241
    return-void
.end method

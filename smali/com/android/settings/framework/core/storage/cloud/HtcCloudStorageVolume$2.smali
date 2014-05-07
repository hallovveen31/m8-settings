.class Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$2;
.super Ljava/lang/Object;
.source "HtcCloudStorageVolume.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->refresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

.field final synthetic val$lifecycle:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    iput-object p2, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$2;->val$lifecycle:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x63

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$2;->val$lifecycle:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume$2;->this$0:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    #getter for: Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mThis:Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->access$000(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;

    move-result-object v1

    #getter for: Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->mResponser:Lcom/android/settings/framework/os/response/HtcResponser;
    invoke-static {v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;->access$100(Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageVolume;)Lcom/android/settings/framework/os/response/HtcResponser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/os/response/HtcResponser;->broadcast(Landroid/os/Message;)V

    return-void
.end method

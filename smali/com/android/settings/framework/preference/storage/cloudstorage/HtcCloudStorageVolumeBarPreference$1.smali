.class Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;
.super Ljava/lang/Object;
.source "HtcCloudStorageVolumeBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onGetTaotalAvailableSpaceInOtherThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->requireAccountService()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->access$000(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onGetTotalAvailableSpace()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->access$100(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->checkAccountExistence()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->access$200(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V

    return-void
.end method

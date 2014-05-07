.class Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference$1;
.super Ljava/lang/Object;
.source "HtcDropboxVolumeBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->onGetTaotalAvailableSpaceInOtherThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->onGetTotalAvailableSpace()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->access$000(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;)V

    .line 95
    return-void
.end method

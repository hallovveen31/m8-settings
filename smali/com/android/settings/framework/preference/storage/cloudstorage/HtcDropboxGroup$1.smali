.class Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;
.super Ljava/lang/Object;
.source "HtcDropboxGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->onResumeInOtherThread(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

.field final synthetic val$callers:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

    iput-object p2, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;->val$callers:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getDropboxAccountInfo(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    move v1, v6

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v7, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getGoogleDriveStorages(Landroid/content/Context;)[Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v7, v4

    if-lez v7, :cond_6

    move v3, v6

    :goto_1
    if-nez v1, :cond_2

    if-eqz v3, :cond_7

    :cond_2
    move v1, v6

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->access$100()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResumeInOtherThread()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n - online-available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n - Dropbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n - GoogleDrive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n - callers: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;->val$callers:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->access$200(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;

    invoke-virtual {v5, v1}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->setVisibleInBackground(Z)V

    return-void

    :cond_5
    move v1, v5

    goto :goto_0

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_2
.end method

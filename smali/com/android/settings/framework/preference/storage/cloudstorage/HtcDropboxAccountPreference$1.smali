.class Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;
.super Ljava/lang/Object;
.source "HtcDropboxAccountPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->getSummaryInNewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getDropboxAccountInfo(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    .line 99
    .local v0, accountInfo:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accountInfo is null. The account is not assigned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->access$102(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropbox account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;

    #getter for: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->mSummary:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->access$100(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->syncStateFromDataSourceInBackground()V
    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;->access$300(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;)V

    goto :goto_0
.end method

.class Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;
.super Ljava/lang/Object;
.source "HtcCloudStorageAccountPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->onGetSummaryInBackground()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-static {}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v0           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 171
    .restart local v0       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> onGetSummaryInBackground()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->access$100(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->requestAccoundInfo()V
    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->access$200(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->checkAccountExistence()V
    invoke-static {v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->access$300(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;)V

    .line 183
    invoke-static {}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< onGetSummaryInBackground()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->access$400(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;Ljava/lang/String;)V

    .line 187
    :cond_1
    return-void
.end method

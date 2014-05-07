.class Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAppStorageLocationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v3, "com.htc.intent.extra.package"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    #getter for: Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->access$000(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    #getter for: Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->mDatabaseKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->access$100(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storage type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->Log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;->access$200(Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

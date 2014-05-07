.class Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;
.super Landroid/os/storage/StorageEventListener;
.source "HtcAppStorageLocationSettingsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStorageStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t oldState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    #calls: Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->updateStatus()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->access$100(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V

    return-void
.end method

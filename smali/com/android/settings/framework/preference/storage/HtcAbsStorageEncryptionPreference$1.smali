.class Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$1;
.super Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;
.source "HtcAbsStorageEncryptionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 1
    .parameter "lifecycle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    #calls: Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    invoke-static {v0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->access$100(Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    .line 95
    return-void
.end method

.method protected onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/storage/HtcStorageVolumeResponseAdapter;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    #calls: Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    invoke-static {v0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->access$000(Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    .line 87
    return-void
.end method

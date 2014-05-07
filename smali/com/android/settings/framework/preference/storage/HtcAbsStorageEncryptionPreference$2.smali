.class synthetic Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$2;
.super Ljava/lang/Object;
.source "HtcAbsStorageEncryptionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$framework$app$HtcActivityListener$ActivityLifecycle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->values()[Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$2;->$SwitchMap$com$android$settings$framework$app$HtcActivityListener$ActivityLifecycle:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$2;->$SwitchMap$com$android$settings$framework$app$HtcActivityListener$ActivityLifecycle:[I

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

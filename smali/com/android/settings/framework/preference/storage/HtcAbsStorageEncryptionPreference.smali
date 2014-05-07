.class public abstract Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcAbsStorageEncryptionPreference.java"

# interfaces
.implements Lcom/android/settings/framework/preference/storage/HtcIStorageVolumePreference;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private volatile mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V

    return-void
.end method

.method private getNextPageActionType(Z)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    .locals 5
    .parameter "doEncrypt"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .line 126
    .local v1, type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :goto_0
    return-object v1

    .line 112
    .end local v1           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->canReverse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->DECRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    .restart local v1       #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    goto :goto_0

    .line 115
    .end local v1           #type:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "The current volume does not support decryption"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to invoke getNextPageActionType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 123
    throw v0
.end method

.method private onRefresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .locals 2
    .parameter "lifecycle"

    .prologue
    .line 212
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$2;->$SwitchMap$com$android$settings$framework$app$HtcActivityListener$ActivityLifecycle:[I

    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->setEnabledInForeground(Z)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onStorageStateChanged(Lcom/android/settings/framework/core/storage/HtcStorageEventListener$EventParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->setEnabledInForeground(Z)V

    .line 203
    return-void
.end method


# virtual methods
.method public attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 3
    .parameter "storageVolume"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 77
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$1;

    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    .line 97
    return-void
.end method

.method protected abstract getNextPageStorageType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
.end method

.method protected abstract getNextPageTitleRes(Z)I
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method protected onChange(Z)Z
    .locals 7
    .parameter "newState"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-direct {v2, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->getNextPageStorageType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v3

    .line 166
    .local v3, storageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->getNextPageActionType(Z)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v0

    .line 167
    .local v0, actionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->getNextPageTitleRes(Z)I

    move-result v4

    .line 169
    .local v4, titleResId:I
    invoke-static {v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->setStorageTypeTo(Landroid/content/Intent;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)Z

    .line 170
    invoke-static {v2, v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->setActionTypeTo(Landroid/content/Intent;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Z

    .line 172
    const-string v5, ":android:show_fragment_title"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->getHost()Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v5

    sget-object v6, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    invoke-static {v5, v2, v6}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    .line 179
    const/4 v5, 0x0

    return v5
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .parameter "context"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lost the volume. Make sure to invoke attachStorageVolume(...)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbsStorageEncryptionPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;->isEncrypted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

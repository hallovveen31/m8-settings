.class public Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;
.super Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;
.source "HtcDropboxGroup.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field mAccountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

.field mHtcDropboxAccountPreference:Lcom/htc/preference/HtcPreference;

.field mHtcDropboxVolumeBarPreference:Lcom/htc/preference/HtcPreference;

.field mOrderManager:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V
    .locals 2
    .parameter "context"
    .parameter "fragment"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;-><init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mOrderManager:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mAccountSet:Ljava/util/HashSet;

    .line 77
    invoke-direct {p0, p2}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->initialize(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V

    .line 78
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    .line 87
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->setParent(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 89
    new-instance v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxAccountPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxAccountPreference:Lcom/htc/preference/HtcPreference;

    .line 92
    new-instance v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxVolumeBarPreference:Lcom/htc/preference/HtcPreference;

    .line 94
    return-void
.end method

.method private onResumeInOtherThread(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 104
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcLog;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, callers:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;-><init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    return-void

    .line 107
    .end local v0           #callers:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #callers:Ljava/lang/String;
    goto :goto_0
.end method

.method private refreshDropboxInfo(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 192
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 193
    const-string v1, ">> refreshDropboxInfo()"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getDropboxAccountInfo(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v0

    .line 200
    .local v0, accountInfo:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDropboxInfo()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n - accountInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 208
    :cond_1
    if-eqz v0, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxAccountPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 210
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxVolumeBarPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 216
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 217
    const-string v1, "<< refreshDropboxInfo()"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 219
    :cond_2
    return-void

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxAccountPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 213
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxVolumeBarPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private refreshGoogleDriveInfo(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 222
    sget-boolean v5, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 223
    const-string v5, ">> refreshGoogleDriveInfo()"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getGoogleDriveStorages(Landroid/content/Context;)[Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;

    move-result-object v4

    .line 234
    .local v4, storages:[Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;
    sget-boolean v5, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshGoogleDriveInfo()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n - #(account): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_3

    array-length v5, v4

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 242
    :cond_1
    if-nez v4, :cond_4

    .line 243
    sget-boolean v5, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 244
    const-string v5, "<< refreshGoogleDriveInfo()"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 278
    :cond_2
    :goto_1
    return-void

    .line 235
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 249
    :cond_4
    array-length v2, v4

    .line 250
    .local v2, size:I
    new-array v0, v2, [Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    .line 251
    .local v0, accountPreferences:[Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;
    new-array v3, v2, [Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    .line 255
    .local v3, storagePreferences:[Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 258
    new-instance v5, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    invoke-direct {v5, p1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;-><init>(Landroid/content/Context;)V

    aput-object v5, v0, v1

    .line 259
    aget-object v5, v0, v1

    invoke-virtual {v5, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->setParent(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 260
    aget-object v5, v0, v1

    aget-object v6, v4, v1

    invoke-interface {v6}, Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->setAccount(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V

    .line 261
    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    aget-object v6, v0, v1

    invoke-interface {v5, v6}, Lcom/android/settings/framework/app/HtcIInternalHost;->addCallback(Ljava/lang/Object;)V

    .line 262
    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    aget-object v6, v0, v1

    invoke-interface {v5, v6}, Lcom/android/settings/framework/app/HtcIInternalHost;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 265
    new-instance v5, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    invoke-direct {v5, p1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;-><init>(Landroid/content/Context;)V

    aput-object v5, v3, v1

    .line 266
    aget-object v5, v3, v1

    invoke-virtual {v5, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setParent(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 267
    aget-object v5, v3, v1

    aget-object v6, v4, v1

    invoke-interface {v6}, Lcom/android/settings/framework/core/storage/cloud/HtcICloudStorageVolume;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setAccount(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V

    .line 268
    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    aget-object v6, v3, v1

    invoke-interface {v5, v6}, Lcom/android/settings/framework/app/HtcIInternalHost;->addCallback(Ljava/lang/Object;)V

    .line 269
    iget-object v5, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;

    aget-object v6, v3, v1

    invoke-interface {v5, v6}, Lcom/android/settings/framework/app/HtcIInternalHost;->requestHandlers(Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;)V

    .line 271
    aget-object v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 272
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    :cond_5
    sget-boolean v5, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 276
    const-string v5, "<< refreshGoogleDriveInfo()"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addPreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, account:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;
    const/4 v1, 0x0

    .line 286
    .local v1, hashKey:Ljava/lang/String;
    instance-of v3, p1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 287
    check-cast v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v0

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mAccountSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 307
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPreference(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": the preference already existed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - hashKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 317
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_2
    :goto_1
    return v2

    .line 294
    :cond_3
    instance-of v3, p1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 295
    check-cast v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 319
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mAccountSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mOrderManager:Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;

    invoke-virtual {v3, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->getOrder(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 322
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :cond_5
    monitor-enter p0

    .line 328
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->containPreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 329
    const/4 v2, 0x0

    .line 333
    .local v2, successful:Z
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPreference(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getPreferenceCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - hashKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - successful: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 350
    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->setVisibleInBackground(Z)V

    goto/16 :goto_1

    .line 322
    .end local v2           #successful:Z
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 331
    :cond_7
    :try_start_4
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    .restart local v2       #successful:Z
    goto :goto_2

    .line 333
    .end local v2           #successful:Z
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f0c02b7

    return v0
.end method

.method public onAddCallback(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxAccountPreference:Lcom/htc/preference/HtcPreference;

    invoke-interface {p1, v0}, Lcom/android/settings/framework/app/HtcIInternalHost;->addCallback(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mHtcDropboxVolumeBarPreference:Lcom/htc/preference/HtcPreference;

    invoke-interface {p1, v0}, Lcom/android/settings/framework/app/HtcIInternalHost;->addCallback(Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public onAddIntoParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 164
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, ">> onAddIntoParentInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->refreshDropboxInfo(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->refreshGoogleDriveInfo(Landroid/content/Context;)V

    .line 171
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "<< onAddIntoParentInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 174
    :cond_1
    return-void
.end method

.method public onRemoveFromParentInBackground(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 179
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, ">> onRemoveFromParentInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->refreshDropboxInfo(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->refreshGoogleDriveInfo(Landroid/content/Context;)V

    .line 186
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "<< onRemoveFromParentInBackground()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 189
    :cond_1
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->onResumeInOtherThread(Landroid/app/Activity;)V

    .line 99
    return-void
.end method

.method public removePreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, account:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;
    const/4 v1, 0x0

    .line 362
    .local v1, hashKey:Ljava/lang/String;
    instance-of v3, p1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    if-eqz v3, :cond_4

    move-object v3, p1

    .line 363
    check-cast v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v0

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->mAccountSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 383
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    monitor-enter p0

    .line 387
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    .line 388
    .local v2, successful:Z
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePreference(...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getPreferenceCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - hashKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n - successful: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->log(Ljava/lang/String;)V

    .line 403
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 404
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;->setVisibleInBackground(Z)V

    .line 406
    :cond_3
    return v2

    .line 370
    .end local v2           #successful:Z
    :cond_4
    instance-of v3, p1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 371
    check-cast v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v0

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 383
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 388
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

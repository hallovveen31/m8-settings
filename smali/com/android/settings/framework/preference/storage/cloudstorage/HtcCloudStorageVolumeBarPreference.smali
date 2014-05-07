.class public Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;
.source "HtcCloudStorageVolumeBarPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MESSAGE_SET_PROGRESS_BAR_VISIBILITY:I = 0x1001

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

.field private mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->requireAccountService()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onGetTotalAvailableSpace()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->checkAccountExistence()V

    return-void
.end method

.method private acquireAccountQuota()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 12

    .prologue
    .line 175
    new-instance v5, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {v5}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>()V

    .line 176
    .local v5, tas:Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    const/4 v2, 0x0

    .line 179
    .local v2, quota:Landroid/os/Bundle;
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v10}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    move-result-object v0

    .line 180
    .local v0, accountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;,"Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager<Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;>;"
    iget-object v10, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v0, v10}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getQuota(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 185
    .end local v0           #accountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;,"Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager<Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 186
    const-wide/16 v6, 0x0

    .line 187
    .local v6, total:J
    const-wide/16 v8, 0x0

    .line 190
    .local v8, used:J
    const-string v10, "quota_total"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 191
    const-string v10, "quota_used"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 192
    const-string v10, "quota_shared"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 194
    .local v3, shared:J
    iput-wide v6, v5, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 195
    add-long v10, v8, v3

    sub-long v10, v6, v10

    iput-wide v10, v5, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    .line 197
    sget-boolean v10, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acquireAccountQuota()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n - totalSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n - used: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n - shared: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 206
    .end local v3           #shared:J
    .end local v6           #total:J
    .end local v8           #used:J
    :cond_0
    return-object v5

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    const-string v11, "Failed to get account quota."

    invoke-static {v10, v11, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkAccountExistence()V
    .locals 5

    .prologue
    .line 274
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, id:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    move-result-object v0

    .line 280
    .local v0, accountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;,"Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager<Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;>;"
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getAccountById(Ljava/lang/String;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 292
    .end local v0           #accountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;,"Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager<Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;>;"
    :goto_0
    return-void

    .line 283
    .restart local v0       #accountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;,"Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager<Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;>;"
    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The account was removed.\n account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #accountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;,"Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager<Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;>;"
    :cond_1
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setVisibleInBackground(Z)V

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Failed to invoke checkAccountExistence()"

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->logE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private onGetTaotalAvailableSpaceInOtherThread()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V

    sget-object v2, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 157
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method private onGetTotalAvailableSpace()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, context:Landroid/content/Context;
    const-string v5, ""

    .line 214
    .local v5, title:Ljava/lang/String;
    const/4 v2, 0x0

    .line 216
    .local v2, progress:I
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->acquireAccountQuota()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v4

    .line 217
    .local v4, tas:Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    iget-wide v6, v4, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 218
    .local v6, totalSpace:J
    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v8

    .line 219
    .local v8, usedSpace:J
    invoke-static {v0, v4}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v5

    .line 224
    iget-object v10, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v10, v5}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 226
    cmp-long v10, v6, v12

    if-lez v10, :cond_0

    iget-wide v10, v4, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    .line 227
    :cond_0
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setProgressBarVisibility(I)V

    .line 236
    :goto_0
    cmp-long v10, v6, v12

    if-lez v10, :cond_1

    cmp-long v10, v8, v12

    if-gtz v10, :cond_4

    .line 237
    :cond_1
    const/4 v2, 0x0

    .line 255
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setProgress(I)Z

    .line 258
    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    .line 259
    const-string v10, "onGetTotalAvailableSpace()"

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - title: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 261
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - totalSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 262
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - usedSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 263
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - progress: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 265
    :cond_2
    return-void

    .line 230
    :cond_3
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setProgressBarVisibility(I)V

    goto :goto_0

    .line 239
    :cond_4
    long-to-float v10, v6

    const/high16 v11, 0x42c8

    div-float v3, v10, v11

    .line 240
    .local v3, ratio:F
    long-to-float v10, v8

    div-float v1, v10, v3

    .line 246
    .local v1, percentage:F
    cmp-long v10, v8, v6

    if-gez v10, :cond_5

    const/high16 v10, 0x42c6

    cmpg-float v10, v10, v1

    if-gez v10, :cond_5

    .line 247
    const/16 v2, 0x63

    goto/16 :goto_1

    .line 248
    :cond_5
    cmp-long v10, v8, v12

    if-lez v10, :cond_6

    const/high16 v10, 0x3f80

    cmpg-float v10, v1, v10

    if-gez v10, :cond_6

    .line 249
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 251
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_1
.end method

.method private onSetProgressBarVisibilty(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 324
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->hideProgressBar(Z)V

    .line 325
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requireAccountService()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getCloudStorageManager(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    .line 169
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->init(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V

    .line 171
    :cond_0
    return-void
.end method

.method private setProgressBarVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 311
    .local v0, uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 312
    const/16 v1, 0x1001

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v2, "setProgressBarVisibility()"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e6b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->release()V

    .line 117
    :cond_0
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 128
    return-void
.end method

.method protected onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 136
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onGetTaotalAvailableSpaceInOtherThread()V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method protected onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 295
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 298
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 304
    :pswitch_0
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onSetProgressBarVisibilty(I)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 110
    return-void
.end method

.method public setAccount(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    .line 97
    return-void
.end method

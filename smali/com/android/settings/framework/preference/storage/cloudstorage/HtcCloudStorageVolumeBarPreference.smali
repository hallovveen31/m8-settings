.class public Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;
.source "HtcCloudStorageVolumeBarPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;


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

    const-class v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->requireAccountService()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onGetTotalAvailableSpace()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->checkAccountExistence()V

    return-void
.end method

.method private acquireAccountQuota()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .locals 12

    new-instance v5, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {v5}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v10}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v0, v10}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getQuota(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "quota_total"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v10, "quota_used"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "quota_shared"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v6, v5, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    add-long v10, v8, v3

    sub-long v10, v6, v10

    iput-wide v10, v5, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    sget-boolean v10, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v10, :cond_0

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

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    :cond_0
    return-object v5

    :catch_0
    move-exception v1

    sget-object v10, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    const-string v11, "Failed to get account quota."

    invoke-static {v10, v11, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkAccountExistence()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getAccountById(Ljava/lang/String;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v3, :cond_1

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

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbsPreference;->setVisibleInBackground(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to invoke checkAccountExistence()"

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->logE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private onGetTaotalAvailableSpaceInOtherThread()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;)V

    sget-object v2, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onGetTotalAvailableSpace()V
    .locals 14

    const-wide/16 v12, 0x0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, ""

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->acquireAccountQuota()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v8

    invoke-static {v0, v4}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v10, v5}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    cmp-long v10, v6, v12

    if-lez v10, :cond_0

    iget-wide v10, v4, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    :cond_0
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setProgressBarVisibility(I)V

    :goto_0
    cmp-long v10, v6, v12

    if-lez v10, :cond_1

    cmp-long v10, v8, v12

    if-gtz v10, :cond_4

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->setProgress(I)Z

    sget-boolean v10, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v10, :cond_2

    const-string v10, "onGetTotalAvailableSpace()"

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - title: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - totalSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " - usedSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

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

    invoke-virtual {p0, v10}, Lcom/android/settings/framework/preference/HtcAbsPreference;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->setProgressBarVisibility(I)V

    goto :goto_0

    :cond_4
    long-to-float v10, v6

    const/high16 v11, 0x42c8

    div-float v3, v10, v11

    long-to-float v10, v8

    div-float v1, v10, v3

    cmp-long v10, v8, v6

    if-gez v10, :cond_5

    const/high16 v10, 0x42c6

    cmpg-float v10, v10, v1

    if-gez v10, :cond_5

    const/16 v2, 0x63

    goto/16 :goto_1

    :cond_5
    cmp-long v10, v8, v12

    if-lez v10, :cond_6

    const/high16 v10, 0x3f80

    cmpg-float v10, v1, v10

    if-gez v10, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_1
.end method

.method private onSetProgressBarVisibilty(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->hideProgressBar(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requireAccountService()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getCloudStorageManager(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->init(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V

    :cond_0
    return-void
.end method

.method private setProgressBarVisibility(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1001

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v2, "setProgressBarVisibility()"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e6b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mService:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    invoke-virtual {v0}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->release()V

    :cond_0
    return-void
.end method

.method public onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    return-void
.end method

.method protected onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onGetTaotalAvailableSpaceInOtherThread()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method protected onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsPreference;->onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->onSetProgressBarVisibilty(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    return-void
.end method

.method public setAccount(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageVolumeBarPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    return-void
.end method

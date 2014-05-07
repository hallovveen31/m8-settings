.class public final Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcCloudStorageAccountPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

.field private mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager",
            "<",
            "Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->requestAccoundInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->checkAccountExistence()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkAccountExistence()V
    .locals 5

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, id:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    if-nez v3, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v4}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/core/storage/cloud/HtcCloudStorageManager;->getCloudStorageManager(Landroid/content/Context;Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;

    move-result-object v2

    .line 217
    .local v2, service:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;
    invoke-virtual {v2}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;->getAccountManager()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    .line 221
    .end local v2           #service:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/ICloudBase;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccountManager:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;

    invoke-virtual {v3, v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/main/account/IAccountManager;->getAccountById(Ljava/lang/String;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 233
    :goto_0
    return-void

    .line 224
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The account was removed.\n account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_2
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->setVisibleInBackground(Z)V

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Failed to invoke checkAccountExistence()"

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->logE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private requestAccoundInfo()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getId()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, summary:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0f18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 8
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    invoke-virtual {v4}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v2

    .line 111
    .local v2, service:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;
    sget-object v4, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    if-ne v4, v2, :cond_0

    .line 112
    const v1, 0x7f0c02b8

    .line 122
    .local v1, resId:I
    :goto_0
    const v4, 0x7f0c02ba

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, title:Ljava/lang/String;
    return-object v3

    .line 114
    .end local v1           #resId:I
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    if-ne v4, v2, :cond_1

    .line 115
    const v1, 0x7f0c02b9

    .restart local v1       #resId:I
    goto :goto_0

    .line 118
    .end local v1           #resId:I
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Does not support \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;->onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->syncStateFromDataSourceInBackground()V

    .line 149
    return-void
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->runHeavyTask(Ljava/lang/Runnable;)V

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final runHeavyTask(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 156
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    invoke-virtual {v1}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 157
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public setAccount(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcCloudStorageAccountPreference;->mAccount:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;

    .line 94
    return-void
.end method

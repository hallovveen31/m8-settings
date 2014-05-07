.class public Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
.super Ljava/lang/Object;
.source "HtcCloudStorageAccount.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sGetEmailCached:Ljava/lang/Boolean;

.field private static sGetEmailMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetExpiredDateCached:Ljava/lang/Boolean;

.field private static sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetQuotaCached:Ljava/lang/Boolean;

.field private static sGetQuotaMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetQuotaSharedCached:Ljava/lang/Boolean;

.field private static sGetQuotaSharedMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetQuotaUsedCached:Ljava/lang/Boolean;

.field private static sGetQuotaUsedMethod:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCloudStorageAccount:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    .line 22
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    .line 23
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    .line 24
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaUsedCached:Ljava/lang/Boolean;

    .line 25
    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaSharedCached:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    .line 252
    iput-object p1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    .line 253
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 46
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 47
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getEmail"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 50
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailMethod:Ljava/lang/ref/SoftReference;

    .line 51
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    .line 54
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 56
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 58
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getEmail"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetEmailMethod:Ljava/lang/ref/SoftReference;

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 65
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-object v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 51
    goto :goto_0

    .line 68
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getEmail()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-string v1, "Error"

    goto :goto_1

    .line 71
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getEmail() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getExpiredDate()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 216
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 217
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getExpiredDate"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 220
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;

    .line 221
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    .line 224
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 226
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 228
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getExpiredDate"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetExpiredDateMethod:Ljava/lang/ref/SoftReference;

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 235
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 243
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-wide v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 221
    goto :goto_0

    .line 238
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getExpiredDate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 241
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getExpiredDate() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getQuota()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 89
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 90
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuota"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaMethod:Ljava/lang/ref/SoftReference;

    .line 94
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    .line 97
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 99
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 101
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuota"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaMethod:Ljava/lang/ref/SoftReference;

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 116
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-wide v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 94
    goto :goto_0

    .line 111
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getQuota()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 114
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getQuota() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getQuotaShared()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 173
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaSharedCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 174
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuotaShared"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 177
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaSharedMethod:Ljava/lang/ref/SoftReference;

    .line 178
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaSharedCached:Ljava/lang/Boolean;

    .line 181
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaSharedCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaSharedMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 183
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 185
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuotaShared"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaSharedMethod:Ljava/lang/ref/SoftReference;

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 192
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 200
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-wide v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 178
    goto :goto_0

    .line 195
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getQuotaShared()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 198
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getQuotaShared() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getQuotaUsed()J
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 131
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaUsedCached:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 132
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuotaUsed"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    .local v0, method:Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaUsedMethod:Ljava/lang/ref/SoftReference;

    .line 136
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaUsedCached:Ljava/lang/Boolean;

    .line 139
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaUsedCached:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaUsedMethod:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 141
    .restart local v0       #method:Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 143
    const-string v1, "com.htc.sdk.service.cloudstorage.HtcCloudStorageAccount"

    const-string v3, "getQuotaUsed"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/android/settings/framework/content/HtcClassManager;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->sGetQuotaUsedMethod:Ljava/lang/ref/SoftReference;

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 150
    iget-object v2, p0, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->mCloudStorageAccount:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/settings/framework/content/HtcClassManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 158
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-wide v1

    .restart local v0       #method:Ljava/lang/reflect/Method;
    :cond_2
    move v1, v2

    .line 136
    goto :goto_0

    .line 153
    :cond_3
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "mCloudStorageAccount is null when do getQuotaUsed()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 156
    :cond_4
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->TAG:Ljava/lang/String;

    const-string v2, "HtcCloudStorageAccount.getQuotaUsed() doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.class public Lcom/android/settings/framework/core/security/permission/HtcAutoStartManager;
.super Ljava/lang/Object;
.source "HtcAutoStartManager.java"


# static fields
.field public static final ERROR_FIELD_VALUE:I = -0x1869f

.field public static final FLAG_SHOW_BLACKLIST_APP:I = 0x4

.field public static final FLAG_SHOW_SYSTEM_APP:I = 0x2

.field public static final FLAG_SHOW_USER_APP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/security/permission/HtcAutoStartManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/security/permission/HtcAutoStartManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInBlackList(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 36
    const-string v0, "com.htc.android.omadm.service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support()Z
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/settings/framework/core/security/permission/HtcPermissionManager;->support()Z

    move-result v0

    return v0
.end method

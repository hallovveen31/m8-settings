.class public Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;
.super Ljava/lang/Object;
.source "ThreelmEnterpriseServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Handler;,
        Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer$Policy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SECURITY_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;->TAG:Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;->isIntentEmpty(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static isIntentEmpty(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 167
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 172
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/ThreelmEnterpriseServer;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.class public Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;
.super Landroid/app/Service;
.source "HtcCustomNotificationService.java"


# static fields
.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ID:I = 0x7f0c00a3

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final SECURITY_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->TAG:Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->doCustomization(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static doCustomization(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, reason:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->log(Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    new-instance v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;

    invoke-direct {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;-><init>()V

    invoke-virtual {v3, p0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->onCustomize(Landroid/content/Context;)V

    .line 99
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->disableCustomAp(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_customization_completed"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    .line 110
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->TAG:Ljava/lang/String;

    const-string v4, "\t htc_customization_completed: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.settings.action.CUSTOMIZATION_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, intentCustomizeCompleted:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void

    .line 94
    .end local v1           #intentCustomizeCompleted:Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string v3, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;

    invoke-direct {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;-><init>()V

    invoke-virtual {v3, p0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->onCustomizeForFota(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 125
    sget-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 64
    sget-object v1, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    move-object v0, p0

    .line 68
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomNotificationService$1;-><init>(Lcom/android/settings/framework/content/custom/HtcCustomNotificationService;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    const/4 v1, 0x3

    return v1
.end method

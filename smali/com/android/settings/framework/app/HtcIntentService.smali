.class public final Lcom/android/settings/framework/app/HtcIntentService;
.super Landroid/app/Service;
.source "HtcIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ID:I = 0x7f0c00a3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mServiceHandler:Lcom/android/settings/framework/app/HtcServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcIntentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcIntentService;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcIntentService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 147
    sget-object v0, Lcom/android/settings/framework/app/HtcIntentService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 84
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v2, 0x0

    .line 86
    .local v2, endTime:J
    sget-boolean v7, Lcom/android/settings/framework/app/HtcIntentService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 87
    const-string v7, ">>onCreate()"

    invoke-direct {p0, v7}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t startTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 92
    :cond_0
    new-instance v6, Landroid/os/HandlerThread;

    sget-object v7, Lcom/android/settings/framework/app/HtcIntentService;->TAG:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 93
    .local v6, thread:Landroid/os/HandlerThread;
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 94
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 95
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceLooper:Landroid/os/Looper;

    .line 96
    new-instance v7, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;

    iget-object v8, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v7, p0, p0, v8}, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;-><init>(Lcom/android/settings/framework/app/HtcIntentService;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceHandler:Lcom/android/settings/framework/app/HtcServiceHandler;

    .line 99
    sget-boolean v7, Lcom/android/settings/framework/app/HtcIntentService;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 101
    sub-long v0, v2, v4

    .line 102
    .local v0, elapsedTime:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t endTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t elapsedTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 104
    const-string v7, "<<onCreate()"

    invoke-direct {p0, v7}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 106
    .end local v0           #elapsedTime:J
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/settings/framework/app/HtcIntentService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, ">>onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 136
    sget-boolean v0, Lcom/android/settings/framework/app/HtcIntentService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "<<onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 139
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 110
    sget-boolean v1, Lcom/android/settings/framework/app/HtcIntentService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> onStartCommand("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 118
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcIntentService;->mServiceHandler:Lcom/android/settings/framework/app/HtcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/app/HtcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    sget-boolean v1, Lcom/android/settings/framework/app/HtcIntentService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< onStartCommand("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcIntentService;->log(Ljava/lang/String;)V

    .line 125
    :cond_1
    const/4 v1, 0x3

    return v1
.end method

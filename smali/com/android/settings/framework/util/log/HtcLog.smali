.class public Lcom/android/settings/framework/util/log/HtcLog;
.super Ljava/lang/Object;
.source "HtcLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/log/HtcLog$2;,
        Lcom/android/settings/framework/util/log/HtcLog$LogType;,
        Lcom/android/settings/framework/util/log/HtcLog$TagInfo;
    }
.end annotation


# static fields
.field public static final GLOBAL_TAG:Ljava/lang/String; = "Settings:"

.field public static final SST_TAG:Ljava/lang/String; = "\u3010SST\u3011"

.field public static final SUPPRESS_CRITICAL_LOG:Z

.field public static final SUPPRESS_DEBUG_LOG:Z

.field public static final SUPPRESS_INFO_LOG:Z

.field public static final SUPPRESS_VERBOSE_LOG:Z

.field public static final SUPPRESS_WARN_LOG:Z

.field private static sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressVerboseLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressDebugLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressInfoLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressWarnLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressCriticalLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const-string v0, "Settings:"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const-string p0, "Settings:"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "Settings:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static attachSstTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const-string p0, "\u3010SST\u3011Settings:"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "\u3010SST\u3011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Settings:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010SST\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010SST\u3011Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    sget-boolean v1, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->log(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->log(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static disableMessageLogging()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public static e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static enableMessageLogging()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->enableMessageLogging(Ljava/lang/String;)V

    return-void
.end method

.method public static enableMessageLogging(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/util/log/HtcLog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public static getCallStack()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "pid/tid: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x3

    array-length v5, v3

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v4, 0x3

    :goto_0
    if-ge v4, v0, :cond_0

    const-string v5, "\tat "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v5, v3

    if-lt p0, v5, :cond_1

    const-string v5, "\t<bottom of call stack>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getPidTidTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static log(C)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(D)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(F)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(I)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(J)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getRunningServiceInfoDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->dump(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static log(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getContextDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getIntentDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getConfigurationDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getUriDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getBundleDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Landroid/os/Handler;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Landroid/os/MessageQueue;)V

    return-void
.end method

.method public static log(Landroid/os/MessageQueue;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Landroid/os/MessageQueue;)V

    return-void
.end method

.method public static log(Landroid/util/TypedValue;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcTypedValueDumper;->dump(Landroid/util/TypedValue;)V

    return-void
.end method

.method public static log(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcWrapHeaderDumper;->dump(Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    return-void
.end method

.method public static log(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcHeaderDumper;->dump(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getRunningServiceInfoDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->dump(Ljava/lang/String;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getContextDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getIntentDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getConfigurationDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getUriDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getBundleDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Ljava/lang/String;Landroid/os/MessageQueue;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/os/MessageQueue;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Ljava/lang/String;Landroid/os/MessageQueue;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/util/TypedValue;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcTypedValueDumper;->dump(Ljava/lang/String;Landroid/util/TypedValue;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcWrapHeaderDumper;->dump(Ljava/lang/String;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcHeaderDumper;->dump(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    if-nez v0, :cond_0

    const-string v0, "Settings:"

    const-string v1, "There is a cycle when using HtcLog."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$2;->$SwitchMap$com$android$settings$framework$util$log$HtcLog$LogType:[I

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    if-nez v0, :cond_0

    const-string v0, "Settings:"

    const-string v1, "There is a cycle when using HtcLog."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$2;->$SwitchMap$com$android$settings$framework$util$log$HtcLog$LogType:[I

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getFieldDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;[C)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getBundleDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->appendIntrinsicInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getFieldDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log([C)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static logCallStack()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    return-void
.end method

.method public static logCallStack(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getCallStack()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logMainMessageQueue()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Landroid/os/MessageQueue;)V

    return-void
.end method

.method public static logMainMessageQueue(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Ljava/lang/String;Landroid/os/MessageQueue;)V

    return-void
.end method

.method public static logPidTid()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->logPidTid(Ljava/lang/String;)V

    return-void
.end method

.method public static logPidTid(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t pid/tid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logTimestamp()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->logTimestamp(Ljava/lang/String;)V

    return-void
.end method

.method public static logTimestamp(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogType(Lcom/android/settings/framework/util/log/HtcLog$LogType;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    :cond_0
    return-void
.end method

.method public static sleep(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->sleep(Ljava/lang/String;J)V

    return-void
.end method

.method public static sleep(Ljava/lang/String;J)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sleep for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/framework/util/log/HtcLog;->sst(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/framework/util/log/HtcLog;->sst(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "An interrupted exception happened."

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/util/log/HtcLog;->sst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sst(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->sst(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sst(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachSstTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachSstTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static ulog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    return-object v0
.end method

.method public static v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static wtf(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

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

    .prologue
    .line 66
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressVerboseLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    .line 70
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressDebugLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    .line 74
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressInfoLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    .line 78
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressWarnLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    .line 82
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressCriticalLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    .line 226
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method private static attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;
    .locals 3
    .parameter "tag"

    .prologue
    .line 259
    if-nez p0, :cond_1

    .line 260
    const-string v0, "Settings:"

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;->getFullTag()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, fullTag:Ljava/lang/String;
    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
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
    .parameter "tag"

    .prologue
    .line 244
    if-nez p0, :cond_1

    .line 245
    const-string p0, "Settings:"

    .line 249
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 246
    .restart local p0
    :cond_1
    const-string v0, "Settings:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
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
    .parameter "tag"

    .prologue
    .line 276
    if-nez p0, :cond_1

    .line 277
    const-string p0, "\u3010SST\u3011Settings:"

    .line 283
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 278
    .restart local p0
    :cond_1
    const-string v0, "\u3010SST\u3011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string v0, "Settings:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
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

    .line 283
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
    .parameter "msg"

    .prologue
    .line 473
    sget-boolean v1, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    if-eqz v1, :cond_0

    .line 474
    const/4 v1, 0x0

    .line 478
    :goto_0
    return v1

    .line 476
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, tag:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->log(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 493
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    .line 496
    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 497
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->log(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 515
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_CRITICAL_LOG:Z

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 520
    :goto_0
    return v0

    .line 518
    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 519
    invoke-static {p0, p1, p2}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 428
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 431
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 441
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 444
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
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 455
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
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

    .prologue
    .line 1180
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 1181
    return-void
.end method

.method public static e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 654
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 676
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 634
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 644
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 665
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static enableMessageLogging()V
    .locals 1

    .prologue
    .line 1146
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->enableMessageLogging(Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method public static enableMessageLogging(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 1162
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/settings/framework/util/log/HtcLog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 1169
    return-void
.end method

.method public static getCallStack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 305
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 306
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 308
    .local v0, pw:Ljava/io/PrintWriter;
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

    .line 311
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 312
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 313
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 7
    .parameter "depth"

    .prologue
    .line 326
    const/4 v1, 0x3

    .line 327
    .local v1, OFFSET:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 329
    .local v3, callStack:[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v2, builder:Ljava/lang/StringBuilder;
    add-int/lit8 p0, p0, 0x3

    .line 340
    array-length v5, v3

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    .local v0, N:I
    const/4 v4, 0x3

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 343
    const-string v5, "\tat "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    :cond_0
    array-length v5, v3

    if-lt p0, v5, :cond_1

    .line 348
    const-string v5, "\t<bottom of call stack>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getPidTidTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
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
    .parameter "msg"

    .prologue
    .line 529
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    .line 532
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 542
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 545
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
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 556
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 559
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
    .parameter "value"

    .prologue
    .line 825
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public static log(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 866
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method public static log(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 858
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method public static log(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 842
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public static log(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 850
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public static log(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1245
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getRunningServiceInfoDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    .line 1246
    return-void
.end method

.method public static log(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 1303
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->dump(Landroid/content/ComponentName;)V

    .line 1304
    return-void
.end method

.method public static log(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1221
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getContextDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    .line 1222
    return-void
.end method

.method public static log(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1237
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getIntentDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    .line 1238
    return-void
.end method

.method public static log(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 1213
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getConfigurationDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    .line 1214
    return-void
.end method

.method public static log(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 1253
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getUriDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    .line 1254
    return-void
.end method

.method public static log(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 1192
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getBundleDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    .line 1193
    return-void
.end method

.method public static log(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Landroid/os/MessageQueue;)V

    .line 1288
    return-void
.end method

.method public static log(Landroid/os/MessageQueue;)V
    .locals 0
    .parameter "messageQueue"

    .prologue
    .line 1295
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Landroid/os/MessageQueue;)V

    .line 1296
    return-void
.end method

.method public static log(Landroid/util/TypedValue;)V
    .locals 0
    .parameter "typedValue"

    .prologue
    .line 1263
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcTypedValueDumper;->dump(Landroid/util/TypedValue;)V

    .line 1264
    return-void
.end method

.method public static log(Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 0
    .parameter "wrapHeader"

    .prologue
    .line 1279
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcWrapHeaderDumper;->dump(Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    .line 1280
    return-void
.end method

.method public static log(Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 1271
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcHeaderDumper;->dump(Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 1272
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public static log(Ljava/lang/String;C)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 895
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public static log(Ljava/lang/String;D)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 941
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public static log(Ljava/lang/String;F)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 932
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public static log(Ljava/lang/String;I)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 914
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public static log(Ljava/lang/String;J)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 923
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/app/ActivityManager$RunningServiceInfo;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 1249
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getRunningServiceInfoDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1250
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "tag"
    .parameter "componentName"

    .prologue
    .line 1307
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcComponentNameDumper;->dump(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1308
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "tag"
    .parameter "Context"

    .prologue
    .line 1225
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getContextDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1226
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 1241
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getIntentDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1242
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "tag"
    .parameter "configuration"

    .prologue
    .line 1217
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getConfigurationDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "tag"
    .parameter "uri"

    .prologue
    .line 1257
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getUriDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1258
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "tag"
    .parameter "bundle"

    .prologue
    .line 1199
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getBundleDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1200
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "tag"
    .parameter "handler"

    .prologue
    .line 1291
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Ljava/lang/String;Landroid/os/MessageQueue;)V

    .line 1292
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/os/MessageQueue;)V
    .locals 0
    .parameter "tag"
    .parameter "messageQueue"

    .prologue
    .line 1299
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Ljava/lang/String;Landroid/os/MessageQueue;)V

    .line 1300
    return-void
.end method

.method public static log(Ljava/lang/String;Landroid/util/TypedValue;)V
    .locals 0
    .parameter "tag"
    .parameter "typedValue"

    .prologue
    .line 1267
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcTypedValueDumper;->dump(Ljava/lang/String;Landroid/util/TypedValue;)V

    .line 1268
    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/android/settings/framework/activity/HtcWrapHeader;)V
    .locals 0
    .parameter "tag"
    .parameter "wrapHeader"

    .prologue
    .line 1283
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcWrapHeaderDumper;->dump(Ljava/lang/String;Lcom/android/settings/framework/activity/HtcWrapHeader;)V

    .line 1284
    return-void
.end method

.method public static log(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceActivity$Header;)V
    .locals 0
    .parameter "tag"
    .parameter "header"

    .prologue
    .line 1275
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/log/HtcHeaderDumper;->dump(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceActivity$Header;)V

    .line 1276
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "string"

    .prologue
    .line 950
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 952
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    if-nez v0, :cond_0

    .line 953
    const-string v0, "Settings:"

    const-string v1, "There is a cycle when using HtcLog."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 958
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$2;->$SwitchMap$com$android$settings$framework$util$log$HtcLog$LogType:[I

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-virtual {v1}, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 982
    :cond_1
    :goto_0
    return-void

    .line 960
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-nez v0, :cond_1

    .line 961
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 964
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-nez v0, :cond_1

    .line 965
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-nez v0, :cond_1

    .line 969
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-nez v0, :cond_1

    .line 973
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 976
    :pswitch_4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 979
    :pswitch_5
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
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
    .parameter "tag"
    .parameter "string"
    .parameter "e"

    .prologue
    .line 991
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 993
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    if-nez v0, :cond_0

    .line 994
    const-string v0, "Settings:"

    const-string v1, "There is a cycle when using HtcLog."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 999
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$2;->$SwitchMap$com$android$settings$framework$util$log$HtcLog$LogType:[I

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-virtual {v1}, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1023
    :cond_1
    :goto_0
    return-void

    .line 1001
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-nez v0, :cond_1

    .line 1002
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1005
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_DEBUG_LOG:Z

    if-nez v0, :cond_1

    .line 1006
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1009
    :pswitch_2
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_INFO_LOG:Z

    if-nez v0, :cond_1

    .line 1010
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1013
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-nez v0, :cond_1

    .line 1014
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1017
    :pswitch_4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1020
    :pswitch_5
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 999
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
    .parameter "tag"
    .parameter "field"

    .prologue
    .line 1233
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getFieldDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1234
    return-void
.end method

.method public static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 885
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public static log(Ljava/lang/String;[C)V
    .locals 1
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 905
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public static log(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "builder"
    .parameter "PREFIX"
    .parameter "bundle"

    .prologue
    .line 1208
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getBundleDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->appendIntrinsicInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1210
    return-void
.end method

.method public static log(Ljava/lang/reflect/Field;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 1229
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getFieldDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->dump(Ljava/lang/Object;)V

    .line 1230
    return-void
.end method

.method public static log(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 816
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public static log([C)V
    .locals 1
    .parameter "data"

    .prologue
    .line 834
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method public static logCallStack()V
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->logCallStack(Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method public static logCallStack(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 1117
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getCallStack()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method public static logMainMessageQueue()V
    .locals 1

    .prologue
    .line 1124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Landroid/os/MessageQueue;)V

    .line 1125
    return-void
.end method

.method public static logMainMessageQueue(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 1132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcMessageQueueDumper;->dump(Ljava/lang/String;Landroid/os/MessageQueue;)V

    .line 1134
    return-void
.end method

.method public static logPidTid()V
    .locals 1

    .prologue
    .line 1093
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->logPidTid(Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public static logPidTid(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 1101
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

    .line 1103
    return-void
.end method

.method public static logTimestamp()V
    .locals 1

    .prologue
    .line 1077
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->logTimestamp(Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public static logTimestamp(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 1085
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

    .line 1087
    return-void
.end method

.method public static setLogType(Lcom/android/settings/framework/util/log/HtcLog$LogType;)V
    .locals 0
    .parameter "logType"

    .prologue
    .line 233
    if-eqz p0, :cond_0

    .line 234
    sput-object p0, Lcom/android/settings/framework/util/log/HtcLog;->sLogType:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 236
    :cond_0
    return-void
.end method

.method public static sleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->sleep(Ljava/lang/String;J)V

    .line 779
    return-void
.end method

.method public static sleep(Ljava/lang/String;J)V
    .locals 4
    .parameter "tag"
    .parameter "time"

    .prologue
    .line 794
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

    .line 796
    .local v0, SUFFIX:Ljava/lang/String;
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

    .line 798
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
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

    .line 804
    return-void

    .line 799
    :catch_0
    move-exception v1

    .line 800
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 801
    const-string v2, "An interrupted exception happened."

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/util/log/HtcLog;->sst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sst(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->sst(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sst(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 750
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
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 763
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
    .parameter "appId"
    .parameter "category"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1047
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 1053
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    invoke-virtual {v1, p0}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1059
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1060
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, message:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 1065
    return-object v0
.end method

.method public static v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 388
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    .line 391
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
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 416
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 419
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
    .parameter "msg"

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 365
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 378
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
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 402
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 405
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 594
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 597
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
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 622
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x0

    .line 625
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
    .parameter "msg"

    .prologue
    .line 568
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 571
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 581
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 584
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
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 608
    sget-boolean v0, Lcom/android/settings/framework/util/log/HtcLog;->SUPPRESS_WARN_LOG:Z

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x0

    .line 611
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 705
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 727
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 685
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
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 695
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 716
    invoke-static {p0}, Lcom/android/settings/framework/util/log/HtcLog;->attachGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

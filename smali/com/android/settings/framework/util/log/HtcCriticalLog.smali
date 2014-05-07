.class Lcom/android/settings/framework/util/log/HtcCriticalLog;
.super Ljava/lang/Object;
.source "HtcCriticalLog.java"


# static fields
.field private static final LOG_DIRECTORY:Ljava/io/File;

.field private static final TAG:Ljava/lang/String;

.field private static out:Ljava/io/BufferedWriter;

.field private static sDateFormat:Ljava/text/DateFormat;

.field private static sSuppress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/android/settings/framework/util/log/HtcCriticalLog;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->TAG:Ljava/lang/String;

    .line 30
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd H:mm:ss:SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->sDateFormat:Ljava/text/DateFormat;

    .line 33
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressCriticalLog()Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->sSuppress:Z

    .line 35
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.android.settings/cache"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->LOG_DIRECTORY:Ljava/io/File;

    .line 41
    sget-boolean v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->sSuppress:Z

    if-eqz v4, :cond_0

    .line 42
    const/4 v4, 0x0

    sput-object v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->out:Ljava/io/BufferedWriter;

    .line 56
    .local v3, file:Ljava/io/File;
    :goto_0
    return-void

    .line 44
    .end local v3           #file:Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    .line 45
    .local v0, bw:Ljava/io/BufferedWriter;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->LOG_DIRECTORY:Ljava/io/File;

    const-string v5, "settings.log"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .restart local v3       #file:Ljava/io/File;
    :try_start_0
    sget-object v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->LOG_DIRECTORY:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 49
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    sput-object v1, Lcom/android/settings/framework/util/log/HtcCriticalLog;->out:Ljava/io/BufferedWriter;

    goto :goto_0

    .line 50
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 51
    .local v2, e:Ljava/io/IOException;
    :try_start_1
    sget-object v4, Lcom/android/settings/framework/util/log/HtcCriticalLog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    sput-object v0, Lcom/android/settings/framework/util/log/HtcCriticalLog;->out:Ljava/io/BufferedWriter;

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    sput-object v0, Lcom/android/settings/framework/util/log/HtcCriticalLog;->out:Ljava/io/BufferedWriter;

    throw v4
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 100
    .local v0, now:Ljava/util/Date;
    sget-object v1, Lcom/android/settings/framework/util/log/HtcCriticalLog;->sDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "string"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .parameter "tag"
    .parameter "string"
    .parameter "tr"

    .prologue
    const/4 v2, 0x0

    .line 77
    sget-boolean v3, Lcom/android/settings/framework/util/log/HtcCriticalLog;->sSuppress:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/util/log/HtcCriticalLog;->out:Ljava/io/BufferedWriter;

    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcCriticalLog;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " C/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, log:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/util/log/HtcCriticalLog;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 90
    sget-object v3, Lcom/android/settings/framework/util/log/HtcCriticalLog;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/android/settings/framework/util/log/HtcCriticalLog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to output \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

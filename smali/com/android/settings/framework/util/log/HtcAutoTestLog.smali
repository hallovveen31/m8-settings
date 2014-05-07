.class public Lcom/android/settings/framework/util/log/HtcAutoTestLog;
.super Ljava/lang/Object;
.source "HtcAutoTestLog.java"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "Settings"

.field private static final AUTOTEST_LOG_FORMAT:Ljava/lang/String; = "%s[Settings][%s][%s]"

.field private static final DATA_READY:Ljava/lang/String; = "DATA_READY"

.field private static final FINISH:Ljava/lang/String; = "FINISH"

.field private static final FPS_END_HEADER:Ljava/lang/String; = "[AutoProf](2102) [FPS]"

.field private static final FPS_START_HEADER:Ljava/lang/String; = "[AutoProf](2101) [FPS]"

.field private static final LAUNCH_END_HEADER:Ljava/lang/String; = "[AutoProf](304) [LAUNCH_TIME]"

.field private static final LAUNCH_START_HEADER:Ljava/lang/String; = "[AutoProf](303) [LAUNCH_TIME]"

.field private static final OTHER_END_HEADER:Ljava/lang/String; = "[AutoProf](302) [OTHER]"

.field private static final OTHER_START_HEADER:Ljava/lang/String; = "[AutoProf](301) [OTHER]"

.field private static final START:Ljava/lang/String; = "START"

.field private static final TAG:Ljava/lang/String; = "AutoTest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "header"
    .parameter "itemName"
    .parameter "state"
    .parameter "extraLog"

    .prologue
    .line 185
    const-string v1, "%s[Settings][%s][%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, log:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    const-string v1, "AutoTest"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public static fpsFinish(Ljava/lang/String;)V
    .locals 1
    .parameter "itemName"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static fpsFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "itemName"
    .parameter "extraLog"

    .prologue
    .line 77
    const-string v0, "[AutoProf](2102) [FPS]"

    const-string v1, "FINISH"

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static fpsStart(Ljava/lang/String;)V
    .locals 1
    .parameter "itemName"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->fpsStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static fpsStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "itemName"
    .parameter "extraLog"

    .prologue
    .line 56
    const-string v0, "[AutoProf](2101) [FPS]"

    const-string v1, "START"

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static isEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-nez v2, :cond_0

    const-string v2, "profiler.performance"

    invoke-static {v2, v0}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static launchFinish(Ljava/lang/String;)V
    .locals 1
    .parameter "itemName"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->launchFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static launchFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "itemName"
    .parameter "extraLog"

    .prologue
    .line 123
    const-string v0, "[AutoProf](304) [LAUNCH_TIME]"

    const-string v1, "DATA_READY"

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static launchStart(Ljava/lang/String;)V
    .locals 1
    .parameter "itemName"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->launchStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static launchStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "itemName"
    .parameter "extraLog"

    .prologue
    .line 102
    const-string v0, "[AutoProf](303) [LAUNCH_TIME]"

    const-string v1, "START"

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static otherFinish(Ljava/lang/String;)V
    .locals 1
    .parameter "itemName"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static otherFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "itemName"
    .parameter "extraLog"

    .prologue
    .line 169
    const-string v0, "[AutoProf](302) [OTHER]"

    const-string v1, "FINISH"

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static otherStart(Ljava/lang/String;)V
    .locals 1
    .parameter "itemName"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static otherStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "itemName"
    .parameter "extraLog"

    .prologue
    .line 148
    const-string v0, "[AutoProf](301) [OTHER]"

    const-string v1, "START"

    invoke-static {v0, p0, v1, p1}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->dumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

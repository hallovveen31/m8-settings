.class public final Lcom/android/settings/framework/request/HtcCameraRequest;
.super Ljava/lang/Object;
.source "HtcCameraRequest.java"


# static fields
.field private static final BACKUP:Ljava/lang/String; = ":backup"

.field private static final DEFAULT_AUTOMATIC_MODE:I = 0x0

.field private static final DEFAULT_BRIGHTNESS:I = 0x8f

.field private static final DEFAULT_CAMERA_MODE:Z

.field private static final TAG:Ljava/lang/String;

.field private static sAutomaticMode:I

.field private static sBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/request/HtcCameraRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/request/HtcCameraRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupConfigs(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0x8f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode:backup"

    sget v2, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness:backup"

    sget v2, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backupConfigs()\n - sAutomaticMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - sBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->log(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method private static isCameraMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/request/HtcCameraRequest;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 237
    sget-object v0, Lcom/android/settings/framework/request/HtcCameraRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public static declared-synchronized requestForBrightness(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    const-class v2, Lcom/android/settings/framework/request/HtcCameraRequest;

    monitor-enter v2

    const/4 v0, 0x0

    .line 42
    .local v0, brightness:I
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 47
    :cond_1
    :try_start_1
    const-string v1, "EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 48
    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 49
    const/16 v0, 0x14

    .line 54
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcCameraRequest;->isCameraMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_3

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set to\n - sAutomaticMode: 0\n - sBrightness: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/request/HtcCameraRequest;->log(Ljava/lang/String;)V

    .line 82
    :cond_3
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncUnderlyingBrightness(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 50
    :cond_4
    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 51
    const/16 v0, 0xff

    goto :goto_1

    .line 59
    :cond_5
    const/4 v1, 0x1

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/settings/framework/request/HtcCameraRequest;->setCameraModeOn(Landroid/content/Context;Z)V

    .line 60
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcCameraRequest;->backupConfigs(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized requestForBrightnessMax(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 92
    const-class v1, Lcom/android/settings/framework/request/HtcCameraRequest;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcCameraRequest;->isCameraMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "set to\n - sAutomaticMode: 0\n - sBrightness: 255"

    invoke-static {v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->log(Ljava/lang/String;)V

    .line 121
    :cond_0
    const/16 v0, 0xff

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncUnderlyingBrightness(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v1

    return-void

    .line 97
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->setCameraModeOn(Landroid/content/Context;Z)V

    .line 98
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcCameraRequest;->backupConfigs(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized requestForBrightnessNormal(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 134
    const-class v1, Lcom/android/settings/framework/request/HtcCameraRequest;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcCameraRequest;->isCameraMode(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->setCameraModeOn(Landroid/content/Context;Z)V

    .line 138
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcCameraRequest;->restoreConfigs(Landroid/content/Context;)V

    .line 143
    sget v0, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 145
    sget v0, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncUnderlyingBrightness(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static restoreConfigs(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode:backup"

    sget v2, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness:backup"

    sget v2, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    sget v2, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    sget v2, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreConfigs()\n - sAutomaticMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/framework/request/HtcCameraRequest;->sAutomaticMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - sBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/framework/request/HtcCameraRequest;->sBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->log(Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method

.method private static setCameraModeOn(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isOn"

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/request/HtcCameraRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 160
    return-void
.end method

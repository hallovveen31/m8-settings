.class public Lcom/android/settings/framework/util/HtcKernelSynchronizer;
.super Ljava/lang/Object;
.source "HtcKernelSynchronizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/util/HtcKernelSynchronizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static syncAnimationScales([F)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static syncAutomaticBrightnessMode(Landroid/content/Context;I)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncAutomaticBrightnessMode(Landroid/content/Context;Z)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static syncAutomaticBrightnessMode(Landroid/content/Context;Z)Z
    .locals 3

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "SCREEN_BRIGHTNESS_MODE_AUTOMATIC"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Settings][display][automatic_mode][set][value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->Log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_1
    const-string v0, "SCREEN_BRIGHTNESS_MODE_MANUAL"

    goto :goto_0
.end method

.method public static syncUnderlyingBrightness(I)Z
    .locals 5

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Settings][display][brightness][set][value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->Log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    sget-object v3, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->TAG:Ljava/lang/String;

    const-string v4, "Set the backlight brightness failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->TAG:Ljava/lang/String;

    const-string v4, "Set the backlight brightness failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

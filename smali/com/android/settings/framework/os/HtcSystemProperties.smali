.class public final Lcom/android/settings/framework/os/HtcSystemProperties;
.super Landroid/os/SystemProperties;
.source "HtcSystemProperties.java"


# static fields
.field public static final BUILD_DATE_TIME:Ljava/lang/String; = "persist.sys.ui.hw"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final HARDWARE_ACCELERATION:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final HARDWARE_VERSION:Ljava/lang/String; = "ro.revision"

.field public static final IS_PHONE_STOARE_FUSE:Ljava/lang/String; = "persist.fuse_sdcard"

.field public static final PUBLIC_HARDWARE_VERSION:Ljava/lang/String; = "ro.devicerev"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/os/HtcSystemProperties;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/os/HtcSystemProperties;->TAG:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/os/HtcSystemProperties;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/SystemProperties;-><init>()V

    return-void
.end method

.method public static getBuildDateTimeValue()J
    .locals 4

    .prologue
    .line 83
    const-string v0, "persist.sys.ui.hw"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getHardwareAcceleration()Z
    .locals 2

    .prologue
    .line 92
    const-string v0, "persist.sys.ui.hw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHardwareVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "def"

    .prologue
    .line 113
    const-string v1, "ro.revision"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/os/HtcSystemProperties;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.revision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/os/HtcSystemProperties;->log(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-object v0
.end method

.method public static getPublicHardwareVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "def"

    .prologue
    .line 126
    const-string v1, "ro.devicerev"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/os/HtcSystemProperties;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.devicerev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/os/HtcSystemProperties;->log(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-object v0
.end method

.method public static isPhoneStorageFuse()Z
    .locals 2

    .prologue
    .line 153
    const-string v0, "persist.fuse_sdcard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 157
    sget-object v0, Lcom/android/settings/framework/os/HtcSystemProperties;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static setHardwareAcceleration(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 100
    const-string v1, "persist.sys.ui.hw"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 100
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.class public Lcom/android/settings/framework/app/HtcSettingsApplication;
.super Landroid/app/Application;
.source "HtcSettingsApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Landroid/app/Application;


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

    const-class v1, Lcom/android/settings/framework/app/HtcSettingsApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcSettingsApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/framework/app/HtcSettingsApplication;->sInstance:Landroid/app/Application;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/framework/app/HtcSettingsApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/app/HtcSettingsApplication;->log(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 81
    sput-object p0, Lcom/android/settings/framework/app/HtcSettingsApplication;->sInstance:Landroid/app/Application;

    .line 83
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 87
    const-string v0, "onCreate()"

    invoke-static {v0}, Lcom/android/settings/framework/app/HtcSettingsApplication;->log(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 104
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "onLowMemory()"

    invoke-static {v0}, Lcom/android/settings/framework/app/HtcSettingsApplication;->log(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 95
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "onTerminate()"

    invoke-static {v0}, Lcom/android/settings/framework/app/HtcSettingsApplication;->log(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

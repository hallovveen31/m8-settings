.class public Lcom/android/settings/srci/HtcSettingsCsrController;
.super Lcom/htc/lib1/autotest/middleware/CSRController;
.source "HtcSettingsCsrController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/srci/HtcSettingsCsrController$1;,
        Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EVENT_ENABLE_DISABLE_PACKAGE:Ljava/lang/String; = "enableDisablePackage"

.field private static final PARAMETER_DELIMITER:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockedSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSpy:Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/settings/srci/HtcSettingsCsrController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/srci/HtcSettingsCsrController;->TAG:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/srci/HtcSettingsCsrController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/autotest/middleware/CSRController;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/srci/HtcSettingsCsrController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/srci/HtcSettingsCsrController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/settings/srci/HtcSettingsCsrController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/srci/HtcSettingsCsrController;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mBlockedSet:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/srci/HtcSettingsCsrController;Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mBlockedSet:Ljava/util/TreeSet;

    return-object p1
.end method


# virtual methods
.method public enableDisablePackage(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-object v3, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-ne p2, v2, :cond_0

    .line 99
    .local v2, state:I
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    return-void

    .line 95
    .end local v2           #state:I
    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    .line 100
    .restart local v2       #state:I
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public genActionString(Lcom/htc/lib1/autotest/middleware/CSREvent;)[Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSpy()Lcom/htc/lib1/autotest/middleware/ISRSpy;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mSpy:Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;

    invoke-direct {v0, p0}, Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;-><init>(Lcom/android/settings/srci/HtcSettingsCsrController;)V

    iput-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mSpy:Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsCsrController;->mSpy:Lcom/android/settings/srci/HtcSettingsCsrController$HtcSettingsISRSpy;

    return-object v0
.end method

.method public injectEvent(Lcom/htc/lib1/autotest/middleware/CSREvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/htc/lib1/autotest/middleware/CSREvent;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, strEvent:[Ljava/lang/String;
    sget-object v3, Lcom/android/settings/srci/HtcSettingsCsrController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "injectEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v3, "enableDisablePackage"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 82
    .local v1, packageName:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 83
    .local v0, enabled:Z
    sget-boolean v3, Lcom/android/settings/srci/HtcSettingsCsrController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 84
    sget-object v3, Lcom/android/settings/srci/HtcSettingsCsrController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/srci/HtcSettingsCsrController;->enableDisablePackage(Ljava/lang/String;Z)V

    .line 88
    .end local v0           #enabled:Z
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    return-void
.end method

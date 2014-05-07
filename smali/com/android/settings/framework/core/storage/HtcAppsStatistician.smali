.class public Lcom/android/settings/framework/core/storage/HtcAppsStatistician;
.super Ljava/lang/Object;
.source "HtcAppsStatistician.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/HtcAppsStatistician$2;,
        Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;,
        Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ENDING_PACKAGE:Ljava/lang/String; = "x..y..z"

.field private static final LOCAL_DEBUG:Z

.field private static final PERFORMANCE_DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

.field private static sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

.field private static sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field private static sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

.field private static sSupportMoveAppOptions:Ljava/lang/Boolean;


# instance fields
.field private mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

.field private final mContext:Landroid/content/Context;

.field private final mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

.field private volatile mStop:Z

.field private final mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->TAG:Ljava/lang/String;

    .line 66
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    .line 79
    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    .line 80
    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    .line 81
    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    .line 82
    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 83
    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/os/response/HtcResponser;)V
    .locals 1
    .parameter "context"
    .parameter "volume"
    .parameter "responser"

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    .line 353
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mContext:Landroid/content/Context;

    .line 354
    iput-object p2, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 355
    iput-object p3, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->requestPackageSizeInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/os/response/HtcIResponser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method public static checkMoveAppTargetIsPhoneStorage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 209
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 223
    .local v1, volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :goto_0
    return v2

    .line 212
    .end local v1           #volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    .line 214
    .restart local v1       #volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    if-nez v1, :cond_1

    .line 215
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    .line 223
    :goto_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 218
    :cond_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 219
    .local v0, bValue:Z
    :cond_2
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static checkMoveAppTargetIsSdCard()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 227
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 228
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 242
    .local v1, volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :goto_0
    return v2

    .line 231
    .end local v1           #volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    .line 233
    .restart local v1       #volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    if-nez v1, :cond_1

    .line 234
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    .line 242
    :goto_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 237
    :cond_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 238
    .local v0, bValue:Z
    :cond_2
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    .locals 3
    .parameter "volume"

    .prologue
    .line 137
    if-eqz p0, :cond_6

    .line 138
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    .line 170
    .local v0, appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppsType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->log(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-object v0

    .line 143
    .end local v0           #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    :cond_1
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    .restart local v0       #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    :goto_1
    goto :goto_0

    .end local v0           #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_NON_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    goto :goto_1

    .line 152
    :cond_3
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NON_FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    .restart local v0       #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    goto :goto_0

    .line 158
    .end local v0           #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    :cond_4
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v1, v2, :cond_5

    .line 160
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    .restart local v0       #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    goto :goto_0

    .line 164
    .end local v0           #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    :cond_5
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    .restart local v0       #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    goto :goto_0

    .line 167
    .end local v0           #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    :cond_6
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    .restart local v0       #appType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    goto :goto_0
.end method

.method private static getInstalledPackages(Landroid/content/pm/PackageManager;Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;)Ljava/util/Iterator;
    .locals 3
    .parameter "pm"
    .parameter "appType"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
        averageTime = "301.96 (ms)"
        device = "EvitareUL"
        round = 0x190L
        totalTime = "120783 (ms)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const/4 v0, 0x0

    .line 446
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-eq p1, v2, :cond_0

    .line 447
    const/16 v2, 0x2200

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 457
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 451
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMoveAppTargetVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 272
    .local v0, volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :goto_0
    return-object v1

    .line 251
    .end local v0           #volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    .line 253
    .restart local v0       #volumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    if-nez v0, :cond_1

    .line 254
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 272
    :goto_1
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_0

    .line 257
    :cond_1
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$2;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 267
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 268
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMoveAppTargetVolume() doesn\'t support this type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_1

    .line 263
    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 340
    .local v0, primaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    :goto_0
    return-object v1

    .line 281
    .end local v0           #primaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPrimaryStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    .line 283
    .restart local v0       #primaryStorageVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    if-nez v0, :cond_1

    .line 284
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 340
    :goto_1
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_0

    .line 300
    :cond_1
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalSdCardStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    .line 310
    :cond_2
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    .line 316
    :cond_3
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$2;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 334
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    .line 319
    :pswitch_0
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    .line 324
    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 326
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    .line 329
    :cond_4
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 563
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method private requestPackageSizeInfo()V
    .locals 7

    .prologue
    .line 375
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    .line 377
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 378
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 379
    sget-object v5, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get the package manager!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-nez v5, :cond_2

    .line 384
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-static {v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    .line 388
    :cond_2
    const/4 v4, 0x0

    .line 389
    .local v4, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    new-instance v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;-><init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;)V

    .line 390
    .local v3, statsObserver:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;
    const/4 v0, 0x0

    .line 400
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    iget-boolean v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    if-nez v5, :cond_0

    .line 401
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    invoke-static {v2, v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getInstalledPackages(Landroid/content/pm/PackageManager;Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;)Ljava/util/Iterator;

    move-result-object v0

    .line 406
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    if-nez v5, :cond_3

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 408
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_1

    .line 412
    .end local v1           #packageName:Ljava/lang/String;
    :cond_3
    const-string v5, "x..y..z"

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_0
.end method

.method public static support(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z
    .locals 2
    .parameter "volume"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-eq v0, v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMoveAppOptions()Z
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    .line 203
    :goto_1
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    goto :goto_1
.end method


# virtual methods
.method public start()V
    .locals 2
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;-><init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 369
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    .line 467
    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "stop(): the apps-size statistics has been canceled."

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->log(Ljava/lang/String;)V

    .line 470
    :cond_0
    return-void
.end method

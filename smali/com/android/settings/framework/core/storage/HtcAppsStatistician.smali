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

    const/4 v2, 0x0

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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/os/response/HtcResponser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    iput-object p3, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->requestPackageSizeInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/os/response/HtcIResponser;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mResponser:Lcom/android/settings/framework/os/response/HtcIResponser;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method public static checkMoveAppTargetIsPhoneStorage()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    :goto_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsPhoneStorage:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static checkMoveAppTargetIsSdCard()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    :goto_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sCheckMoveAppTargetIsSdCard:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;
    .locals 3

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    if-eqz v1, :cond_0

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

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->FUSE_NON_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NON_FUSE_PRIMARY_STORAGE:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v1, v2, :cond_5

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    goto :goto_0
.end method

.method private static getInstalledPackages(Landroid/content/pm/PackageManager;Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;)Ljava/util/Iterator;
    .locals 3
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

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2200

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMoveAppTargetVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    if-nez v0, :cond_1

    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    :goto_1
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$2;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

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

    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getSdCardStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPhoneStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPrimaryStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    if-nez v0, :cond_1

    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    :goto_1
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalSdCardStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_2
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$2;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-interface {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sput-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_4
    sput-object v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sMoveAppTargetVolumeType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

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

    return-void
.end method

.method private requestPackageSizeInfo()V
    .locals 7

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v5, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get the package manager!"

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-static {v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    :cond_2
    const/4 v4, 0x0

    new-instance v3, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$StatsObserver;-><init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;)V

    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mAppsType:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    invoke-static {v2, v5}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getInstalledPackages(Landroid/content/pm/PackageManager;Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;)Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    if-nez v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_1

    :cond_3
    const-string v5, "x..y..z"

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_0
.end method

.method public static support(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getAppsType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;->NOT_SUPPORT:Lcom/android/settings/framework/core/storage/HtcAppsStatistician$AppsType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMoveAppOptions()Z
    .locals 2

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolumeType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    :goto_1
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->sSupportMoveAppOptions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

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

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician$1;-><init>(Lcom/android/settings/framework/core/storage/HtcAppsStatistician;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->mStop:Z

    sget-boolean v0, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "stop(): the apps-size statistics has been canceled."

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

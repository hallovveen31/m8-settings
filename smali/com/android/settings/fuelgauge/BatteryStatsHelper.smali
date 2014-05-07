.class public Lcom/android/settings/fuelgauge/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryStatsHelper$1;,
        Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;
    }
.end annotation


# static fields
.field private static final DBKEY_POWER_SHOW_DEBUG_LOG:Ljava/lang/String; = "power_show_debug_log"

.field private static DEBUG:Z = false

.field static final MSG_REPORT_FULLY_DRAWN:I = 0x2

.field static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppWifiRunning:J

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private mUm:Landroid/os/UserManager;

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerUsageSummary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addBluetoothUsage() === BEGIN ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    int-to-double v0, v9

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c10c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020250

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerProfile::POWER_BLUETOOTH_ON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerProfile::POWER_BLUETOOTH_AT_CMD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btOnTimeMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btPingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btPower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothPower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addBluetoothUsage() === END ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addIdleUsage() === BEGIN ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c10cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200a5

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerProfile::POWER_CPU_IDLE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenOnTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idleTimeMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addIdleUsage() === END ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addPhoneUsage() === BEGIN ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.talk"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c10cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200aa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[phoneOnTimeMs] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[POWER_RADIO_TALK] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "radio.talk"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneUsage power] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addPhoneUsage() === END ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addRadioUsage() === BEGIN ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v8, 0x0

    const/4 v10, 0x5

    const-wide/16 v5, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    add-long/2addr v5, v15

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerProfile::POWER_RADIO_ON["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strengthTimeMs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v13, v2, v17

    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c10ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0200a2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v11

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    long-to-double v2, v2

    const-wide/high16 v17, 0x4059

    mul-double v2, v2, v17

    long-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    iput-wide v2, v11, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    :cond_3
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerProfile.POWER_RADIO_SCANNING = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanningTimeMs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signalTimeMs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addRadioUsage() === END ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addScreenUsage() === BEGIN ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    const/4 v12, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_2

    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen bin power = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    double-to-int v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c10c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020253

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[screenOnTimeMs] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[POWER_SCREEN_ON] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[screenFullPower] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ScreenUsage power] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addScreenUsage() === END ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private addUserUsage()V
    .locals 15

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "addUserUsage() === BEGIN ==="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v2, v11, v3}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v11, :cond_3

    iget-object v1, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_1
    if-nez v1, :cond_1

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0fc4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :goto_3
    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    iput-object v10, v8, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    const-string v0, "User"

    invoke-direct {p0, v8, v12, v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0fc5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_6
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "addUserUsage() === END ==="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addWiFiUsage() === BEGIN ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v11, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI runningTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " app runningTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_2

    const-wide/16 v5, 0x0

    :cond_2
    const-wide/16 v2, 0x0

    mul-long/2addr v2, v11

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L

    div-double v13, v2, v7

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI power="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from procs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c10c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f02024f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerProfile::POWER_WIFI_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTimeMs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addWiFiUsage() === END ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adding sipper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cpu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpAppUsage(Z)V
    .locals 109

    new-instance v15, Ljava/lang/StringBuilder;

    const/high16 v104, 0x10

    move/from16 v0, v104

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v104, Ljava/lang/StringBuilder;

    invoke-direct/range {v104 .. v104}, Ljava/lang/StringBuilder;-><init>()V

    const-string v105, "\n>>> dumpAppUsage() === BEGIN ===, includeZeroConsumption = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v105

    if-eqz p1, :cond_0

    const-string v104, "true"

    :goto_0
    move-object/from16 v0, v105

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    invoke-virtual/range {v104 .. v104}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v104, v0

    const-string v105, "sensor"

    invoke-virtual/range {v104 .. v105}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    invoke-virtual/range {v104 .. v104}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v61

    move/from16 v0, v61

    new-array v0, v0, [D

    move-object/from16 v43, v0

    move/from16 v0, v61

    new-array v12, v0, [J

    const-string v104, "\n>>> PowerProfile::getNumSpeedSteps() = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v39, 0x0

    :goto_1
    move/from16 v0, v39

    move/from16 v1, v61

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "cpu.active"

    move-object/from16 v0, v104

    move-object/from16 v1, v105

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v104

    aput-wide v104, v43, v39

    const-string v104, "\n>>> PowerProfile::POWER_CPU_ACTIVE["

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "] = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    aget-wide v105, v43, v39

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\t (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v39, v39, 0x1

    goto :goto_1

    :cond_0
    const-string v104, "false"

    goto/16 :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMobilePowerPerByte()D

    move-result-wide v27

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getWifiPowerPerByte()D

    move-result-wide v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v104, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v105

    const-wide/16 v107, 0x3e8

    mul-long v105, v105, v107

    move-object/from16 v0, v104

    move-wide/from16 v1, v105

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v72

    const-wide/16 v6, 0x0

    const/16 v38, 0x0

    move-wide/from16 v0, v72

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v104, v0

    invoke-virtual/range {v104 .. v104}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-string v104, "\n>>> Num of UID = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    if-ge v0, v4, :cond_35

    const-string v104, "\n>>>>>> UID n-th = #"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v74

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Landroid/os/BatteryStats$Uid;

    const-wide/16 v41, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v21, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v46

    const-wide/16 v13, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v85, 0x0

    const-wide/16 v19, 0x0

    const-string v104, "\n>>> CPU power === BEGIN ==="

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->size()I

    move-result v104

    if-lez v104, :cond_13

    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v104

    invoke-interface/range {v104 .. v104}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    const-string v104, ">>> Process name = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v105

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Ljava/lang/String;

    move-object/from16 v0, v105

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v47

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v76

    const-wide/16 v104, 0x0

    cmp-long v104, v76, v104

    if-gez v104, :cond_2

    const-string v104, "\n>>> Error: userTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v76, 0x0

    :cond_2
    move-object/from16 v0, v47

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v63

    const-wide/16 v104, 0x0

    cmp-long v104, v63, v104

    if-gez v104, :cond_3

    const-string v104, "\n>>> Error: systemTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v63, 0x0

    :cond_3
    move-object/from16 v0, v47

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v17

    const-wide/16 v104, 0x0

    cmp-long v104, v17, v104

    if-gez v104, :cond_4

    const-string v104, "\n>>> Error: foregroundTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v17, 0x0

    :cond_4
    const-wide/16 v104, 0xa

    mul-long v104, v104, v17

    add-long v8, v8, v104

    add-long v104, v76, v63

    const-wide/16 v106, 0xa

    mul-long v66, v104, v106

    const-wide/16 v104, 0x0

    cmp-long v104, v76, v104

    if-lez v104, :cond_5

    const-string v104, "\n>>> userTime = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\t (100 micro seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-wide/16 v104, 0x0

    cmp-long v104, v63, v104

    if-lez v104, :cond_6

    const-string v104, "\n>>> systemTime = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\t (100 micro seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-wide/16 v104, 0x0

    cmp-long v104, v17, v104

    if-lez v104, :cond_7

    const-string v104, "\n>>> foregroundTime = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\t (100 micro seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v70, 0x0

    const/16 v62, 0x0

    :goto_4
    move/from16 v0, v62

    move/from16 v1, v61

    if-ge v0, v1, :cond_a

    move-object/from16 v0, v47

    move/from16 v1, v62

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v104

    aput-wide v104, v12, v62

    aget-wide v104, v12, v62

    const-wide/16 v106, 0x0

    cmp-long v104, v104, v106

    if-gez v104, :cond_8

    const-string v104, "\n>>> Error: cpuSpeedStepTimes["

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "] < 0 !! value = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    aget-wide v105, v12, v62

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v104, 0x0

    aput-wide v104, v12, v62

    :cond_8
    move/from16 v0, v70

    int-to-long v0, v0

    move-wide/from16 v104, v0

    aget-wide v106, v12, v62

    add-long v104, v104, v106

    move-wide/from16 v0, v104

    long-to-int v0, v0

    move/from16 v70, v0

    aget-wide v104, v12, v62

    const-wide/16 v106, 0x0

    cmp-long v104, v104, v106

    if-lez v104, :cond_9

    const-string v104, "\n>>> cpuSpeedStepTimes["

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "] = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    aget-wide v105, v12, v62

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\t (100 micro seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v62, v62, 0x1

    goto :goto_4

    :cond_a
    if-nez v70, :cond_b

    const/16 v70, 0x1

    :cond_b
    const-string v104, "\n>>> totalTimeAtSpeeds = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (100 micro seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v44, 0x0

    const/16 v62, 0x0

    :goto_5
    move/from16 v0, v62

    move/from16 v1, v61

    if-ge v0, v1, :cond_c

    aget-wide v104, v12, v62

    move-wide/from16 v0, v104

    long-to-double v0, v0

    move-wide/from16 v104, v0

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v106, v0

    div-double v48, v104, v106

    move-wide/from16 v0, v66

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v104, v104, v48

    aget-wide v106, v43, v62

    mul-double v104, v104, v106

    add-double v44, v44, v104

    add-int/lit8 v62, v62, 0x1

    goto :goto_5

    :cond_c
    add-long v13, v13, v66

    const-wide/16 v104, 0x0

    cmpl-double v104, v44, v104

    if-eqz v104, :cond_d

    const-string v104, "\n>>> CPU power = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-wide v105, 0x408f400000000000L

    div-double v105, v44, v105

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-double v41, v41, v44

    if-eqz v40, :cond_e

    const-string v104, "*"

    move-object/from16 v0, v40

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v104

    if-eqz v104, :cond_10

    :cond_e
    move-wide/from16 v21, v44

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    :cond_f
    :goto_6
    const-string v104, "\n"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_3

    :cond_10
    cmpg-double v104, v21, v44

    if-gez v104, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Ljava/lang/String;

    const-string v105, "*"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v104

    if-nez v104, :cond_f

    move-wide/from16 v21, v44

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    goto :goto_6

    :cond_11
    const-wide/16 v104, 0x0

    cmpl-double v104, v21, v104

    if-lez v104, :cond_12

    const-string v104, ">>> Max drain of CPU power = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-wide v105, 0x408f400000000000L

    div-double v105, v21, v105

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " by process = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_13
    const-string v104, ">>> cpuTime = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (milli seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> cpuFgTime = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (milli seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v104, v8, v13

    if-lez v104, :cond_15

    const-wide/16 v104, 0x2710

    add-long v104, v104, v13

    cmp-long v104, v8, v104

    if-lez v104, :cond_14

    const-string v104, "\n>>> WARNING! Cputime is more than 10 seconds behind Foreground time"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    move-wide v13, v8

    :cond_15
    const-wide v104, 0x408f400000000000L

    div-double v41, v41, v104

    move-wide/from16 v10, v41

    const-string v104, "\n>>> CPU power = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v104, "\n>>> CPU power === END ==="

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v78, 0x0

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v84

    invoke-interface/range {v84 .. v84}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v104

    invoke-interface/range {v104 .. v104}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_16
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_17

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Ljava/util/Map$Entry;

    invoke-interface/range {v83 .. v83}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/BatteryStats$Uid$Wakelock;

    const/16 v104, 0x0

    move-object/from16 v0, v82

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v65

    if-eqz v65, :cond_16

    move-object/from16 v0, v65

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v104

    add-long v85, v85, v104

    goto :goto_7

    :cond_17
    const-wide/16 v104, 0x3e8

    div-long v85, v85, v104

    const-wide/16 v104, 0x0

    cmp-long v104, v85, v104

    if-gez v104, :cond_18

    const-string v104, "\n>>> Error: wakelockTime < 0"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v85, 0x0

    :cond_18
    add-long v6, v6, v85

    move-wide/from16 v0, v85

    long-to-double v0, v0

    move-wide/from16 v104, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v106, v0

    const-string v107, "cpu.awake"

    invoke-virtual/range {v106 .. v107}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v106

    mul-double v104, v104, v106

    const-wide v106, 0x408f400000000000L

    div-double v78, v104, v106

    add-double v41, v41, v78

    const-wide/16 v104, 0x0

    cmp-long v104, v85, v104

    if-lez v104, :cond_19

    const-string v104, "\n>>> PowerProfile::POWER_CPU_AWAKE = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v106, "cpu.awake"

    invoke-virtual/range {v105 .. v106}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v105

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v104, "\n>>> wakelockTime = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v85

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (milli seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> wakeLockPower = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v78

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v31, 0x0

    const/16 v104, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v29

    const/16 v104, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v33

    add-long v104, v29, v33

    move-wide/from16 v0, v104

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v31, v104, v27

    add-double v41, v41, v31

    const-string v104, "\n>>> mobileRx = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (bytes)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> mobileTx = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (bytes)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> mobilePowerPerByte = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA/bytes)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> mobileTrafficPower = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v100, 0x0

    const/16 v104, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v94

    const/16 v104, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v102

    add-long v104, v94, v102

    move-wide/from16 v0, v104

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v100, v104, v88

    add-double v41, v41, v100

    const-string v104, "\n>>> wifiRx = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v94

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (bytes)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> wifiTx = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v102

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (bytes)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> wifiPowerPerByte = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA/bytes)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> wifiTrafficPower = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v100

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v90, 0x0

    move-object/from16 v0, v71

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v92, v104, v106

    const-wide/16 v104, 0x0

    cmp-long v104, v92, v104

    if-gez v104, :cond_1a

    const-string v104, "\n>>> Error: wifiRunningTimeMs < 0"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v92, 0x0

    :cond_1a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v104, v0

    add-long v104, v104, v92

    move-wide/from16 v0, v104

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v0, v92

    long-to-double v0, v0

    move-wide/from16 v104, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v106, v0

    const-string v107, "wifi.on"

    invoke-virtual/range {v106 .. v107}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v106

    mul-double v104, v104, v106

    const-wide v106, 0x408f400000000000L

    div-double v90, v104, v106

    add-double v41, v41, v90

    const-wide/16 v104, 0x0

    cmp-long v104, v92, v104

    if-lez v104, :cond_1b

    const-string v104, "\n>>> PowerProfile::POWER_WIFI_ON = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v106, "wifi.on"

    invoke-virtual/range {v105 .. v106}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v105

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v104, "\n>>> wifiRunningTimeMs = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v92

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (milli seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> wifiRunningPower = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v90

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v96, 0x0

    move-object/from16 v0, v71

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v98, v104, v106

    move-wide/from16 v0, v98

    long-to-double v0, v0

    move-wide/from16 v104, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v106, v0

    const-string v107, "wifi.scan"

    invoke-virtual/range {v106 .. v107}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v106

    mul-double v104, v104, v106

    const-wide v106, 0x408f400000000000L

    div-double v96, v104, v106

    add-double v41, v41, v96

    const-wide/16 v104, 0x0

    cmp-long v104, v98, v104

    if-lez v104, :cond_1c

    const-string v104, "\n>>> PowerProfile::POWER_WIFI_SCAN = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v106, "wifi.scan"

    invoke-virtual/range {v105 .. v106}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v105

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v104, "\n>>> wifiScanTimeMs = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v98

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (milli seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> wifiScanPower = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v96

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v56, 0x0

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v58

    invoke-interface/range {v58 .. v58}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v104

    invoke-interface/range {v104 .. v104}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1d
    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/Map$Entry;

    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual/range {v51 .. v51}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v53

    invoke-virtual/range {v51 .. v51}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v65

    move-object/from16 v0, v65

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v59, v104, v106

    const-string v104, "\n>>> sensor.toString() = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v35, 0x0

    const-wide/16 v68, 0x0

    packed-switch v53, :pswitch_data_0

    const/16 v104, -0x1

    move-object/from16 v0, v55

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_1e
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_1f

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/hardware/Sensor;

    invoke-virtual/range {v50 .. v50}, Landroid/hardware/Sensor;->getHandle()I

    move-result v104

    move/from16 v0, v104

    move/from16 v1, v53

    if-ne v0, v1, :cond_1e

    invoke-virtual/range {v50 .. v50}, Landroid/hardware/Sensor;->getPower()F

    move-result v104

    move/from16 v0, v104

    float-to-double v0, v0

    move-wide/from16 v35, v0

    const-string v104, "\n>>> Got sensor "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    invoke-virtual/range {v50 .. v50}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v105

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " with power = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    :goto_9
    const-wide/16 v104, 0x0

    cmp-long v104, v59, v104

    if-gez v104, :cond_20

    const-string v104, "\n>>> Error: sensorTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v59, 0x0

    :cond_20
    move-wide/from16 v0, v59

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v68, v35, v104

    add-double v56, v56, v68

    const-wide/16 v104, 0x0

    cmp-long v104, v59, v104

    if-lez v104, :cond_1d

    const-string v104, "\n>>> sensorTime = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (milli seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v104, "\n>>> the sensor power = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-wide v105, 0x408f400000000000L

    div-double v105, v68, v105

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "gps.on"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v35

    const-string v104, "\n>>> Got sensor: GPS"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, "\n>>> PowerProfile::POWER_GPS_ON = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v59

    goto :goto_9

    :cond_21
    const-wide v104, 0x408f400000000000L

    div-double v104, v56, v104

    add-double v41, v41, v104

    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v104, "\n>>> UID "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide/16 v104, 0x0

    cmpg-double v104, v41, v104

    if-gez v104, :cond_22

    const-string v104, "\n>>> Error: power < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-wide/16 v41, 0x0

    :cond_22
    const-wide/16 v104, 0x0

    cmpl-double v104, v41, v104

    if-lez v104, :cond_29

    const-wide/16 v104, 0x0

    cmpl-double v104, v10, v104

    if-lez v104, :cond_23

    const-string v104, "\n          CPU: "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-wide/16 v104, 0x0

    cmpl-double v104, v78, v104

    if-lez v104, :cond_24

    const-string v104, "\n         Wake: "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v78

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-wide/16 v104, 0x0

    cmpl-double v104, v31, v104

    if-lez v104, :cond_25

    const-string v104, "\n Data(mobile): "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const-wide/16 v104, 0x0

    cmpl-double v104, v100, v104

    if-lez v104, :cond_26

    const-string v104, "\n   Data(wifi): "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v100

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const-wide/16 v104, 0x0

    cmpl-double v104, v90, v104

    if-lez v104, :cond_27

    const-string v104, "\n  WifiRunning: "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v90

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    const-wide/16 v104, 0x0

    cmpl-double v104, v96, v104

    if-lez v104, :cond_28

    const-string v104, "\n     WifiScan: "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v96

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const-wide/16 v104, 0x0

    cmpl-double v104, v56, v104

    if-lez v104, :cond_29

    const-string v104, "\n       Sensor: "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-wide v105, 0x408f400000000000L

    div-double v105, v56, v105

    invoke-virtual/range {v104 .. v106}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v104, "\n>>>>>> TOTAL: "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v25, 0x0

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    invoke-static/range {v104 .. v104}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v75

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v37

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    invoke-static/range {v104 .. v104}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const-string v104, "\n>>> userId = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, ", myUserId = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, ", appId = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, ", Process.FIRST_APPLICATION_UID = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const/16 v105, 0x2710

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, ", packageWithHighestDrain = "

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v105

    if-nez v40, :cond_2f

    const-string v104, "null"

    :goto_a
    move-object/from16 v0, v105

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v104, 0x0

    cmpl-double v104, v41, v104

    if-nez v104, :cond_2a

    if-nez p1, :cond_2a

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    if-nez v104, :cond_2c

    :cond_2a
    if-eqz v40, :cond_2c

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3f2

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_30

    const-string v104, "\n>>> This is WIFI_UID"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    :goto_b
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    if-nez v104, :cond_2c

    const/16 v38, 0x1

    :cond_2c
    const-wide/16 v104, 0x0

    cmpl-double v104, v41, v104

    if-nez v104, :cond_2d

    if-eqz p1, :cond_2e

    :cond_2d
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3f2

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_32

    const-string v104, "\n>>> append power to mWifiPower"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    :goto_c
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    :cond_2f
    move-object/from16 v104, v40

    goto :goto_a

    :cond_30
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3ea

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_31

    const-string v104, "\n>>> This is BLUETOOTH_UID"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_31
    move/from16 v0, v75

    move/from16 v1, v37

    if-eq v0, v1, :cond_2b

    const/16 v104, 0x2710

    move/from16 v0, v104

    if-lt v5, v0, :cond_2b

    const/16 v25, 0x1

    const-string v104, "\n>>> isOtherUser = true"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, ", a battery sipper is added into mUserSippers with the userId"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_32
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3ea

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_33

    const-string v104, "\n>>> append power to mBluetoothPower"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_33
    if-eqz v25, :cond_34

    const-string v104, "\n>>> append power to mUserPower for userId"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_34
    const-string v104, "\n>>> append power to mTotalPower"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_35
    if-eqz v38, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v104, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v105

    const-wide/16 v107, 0x3e8

    mul-long v105, v105, v107

    move-object/from16 v0, v104

    move-wide/from16 v1, v105

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v80, v104, v106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v104, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v105

    move-object/from16 v0, v104

    move-wide/from16 v1, v105

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v104, v104, v106

    add-long v104, v104, v6

    sub-long v80, v80, v104

    const-wide/16 v104, 0x0

    cmp-long v104, v80, v104

    if-lez v104, :cond_36

    move-wide/from16 v0, v80

    long-to-double v0, v0

    move-wide/from16 v104, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v106, v0

    const-string v107, "cpu.awake"

    invoke-virtual/range {v106 .. v107}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v106

    mul-double v104, v104, v106

    const-wide v106, 0x408f400000000000L

    div-double v41, v104, v106

    const-string v104, "\n>>> OS wakeLockTime "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (milli seconds)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v104, "\n>>> mTotalPower += "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const-string v104, "\n>>> dumpAppUsage() === END ==="

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private getMobilePowerPerByte()D
    .locals 19

    const-wide/32 v1, 0x30d40

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "radio.active"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    const-wide v17, 0x40ac200000000000L

    div-double v3, v15, v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityCount(II)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityCount(II)J

    move-result-wide v11

    add-long v7, v9, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v13, v15, v17

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_1

    const-wide/16 v15, 0x8

    mul-long/2addr v15, v7

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    div-long v5, v15, v13

    :goto_0
    sget-boolean v15, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MOBILE_POWER = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mobileRx = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mobileTx = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "radioDataUptimeMs = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v15, 0x8

    div-long v15, v5, v15

    long-to-double v15, v15

    div-double v15, v3, v15

    return-wide v15

    :cond_1
    const-wide/32 v5, 0x30d40

    goto :goto_0
.end method

.method private getWifiPowerPerByte()D
    .locals 8

    const-wide/32 v0, 0xf4240

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x40ac200000000000L

    div-double v2, v4, v6

    sget-boolean v4, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIFI_POWER = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide v4, 0x40fe848000000000L

    div-double v4, v2, v4

    return-wide v4
.end method

.method private load()V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage(Z)V
    .locals 97

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v84, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v62

    move/from16 v0, v62

    new-array v0, v0, [D

    move-object/from16 v46, v0

    move/from16 v0, v62

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v42, 0x0

    :goto_0
    move/from16 v0, v42

    move/from16 v1, v62

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v42

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v46, v42

    add-int/lit8 v42, v42, 0x1

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMobilePowerPerByte()D

    move-result-wide v33

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getWifiPowerPerByte()D

    move-result-wide v85

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v84

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v70

    const-wide/16 v14, 0x0

    const/16 v41, 0x0

    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/16 v31, 0x0

    :goto_1
    move/from16 v0, v31

    if-ge v0, v13, :cond_26

    move-object/from16 v0, v72

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    const-wide/16 v44, 0x0

    const-wide/16 v26, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v49

    const-wide/16 v19, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v24, 0x0

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_9

    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v50

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v75

    move-object/from16 v0, v50

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v64

    move-object/from16 v0, v50

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v22

    const-wide/16 v5, 0xa

    mul-long v5, v5, v22

    add-long v16, v16, v5

    add-long v5, v75, v64

    const-wide/16 v9, 0xa

    mul-long v67, v5, v9

    const/16 v69, 0x0

    const/16 v63, 0x0

    :goto_3
    move/from16 v0, v63

    move/from16 v1, v62

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v50

    move/from16 v1, v63

    move/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v18, v63

    move/from16 v0, v69

    int-to-long v5, v0

    aget-wide v9, v18, v63

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v69, v0

    add-int/lit8 v63, v63, 0x1

    goto :goto_3

    :cond_3
    if-nez v69, :cond_4

    const/16 v69, 0x1

    :cond_4
    const-wide/16 v47, 0x0

    const/16 v63, 0x0

    :goto_4
    move/from16 v0, v63

    move/from16 v1, v62

    if-ge v0, v1, :cond_5

    aget-wide v5, v18, v63

    long-to-double v5, v5

    move/from16 v0, v69

    int-to-double v9, v0

    div-double v51, v5, v9

    move-wide/from16 v0, v67

    long-to-double v5, v0

    mul-double v5, v5, v51

    aget-wide v9, v46, v63

    mul-double/2addr v5, v9

    add-double v47, v47, v5

    add-int/lit8 v63, v63, 0x1

    goto :goto_4

    :cond_5
    add-long v19, v19, v67

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_6

    const-wide/16 v5, 0x0

    cmpl-double v5, v47, v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "process %s, cpu power=%.2f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-wide v95, 0x408f400000000000L

    div-double v95, v47, v95

    invoke-static/range {v95 .. v96}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-double v44, v44, v47

    if-eqz v8, :cond_7

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move-wide/from16 v26, v47

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    cmpg-double v5, v26, v47

    if-gez v5, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-wide/from16 v26, v47

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    cmp-long v5, v16, v19

    if-lez v5, :cond_b

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_a

    const-wide/16 v5, 0x2710

    add-long v5, v5, v19

    cmp-long v5, v16, v5

    if-lez v5, :cond_a

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-wide/from16 v19, v16

    :cond_b
    const-wide v5, 0x408f400000000000L

    div-double v44, v44, v5

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_c

    const-wide/16 v5, 0x0

    cmpl-double v5, v44, v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "total cpu power=%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v81

    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_d
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Ljava/util/Map$Entry;

    invoke-interface/range {v80 .. v80}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v5, 0x0

    move-object/from16 v0, v79

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v66

    if-eqz v66, :cond_d

    move-object/from16 v0, v66

    move-wide/from16 v1, v70

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v82, v82, v5

    goto :goto_5

    :cond_e
    const-wide/16 v5, 0x3e8

    div-long v82, v82, v5

    add-long v14, v14, v82

    move-wide/from16 v0, v82

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v42, v5, v9

    add-double v44, v44, v42

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_f

    const-wide/16 v5, 0x0

    cmpl-double v5, v42, v5

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "wakelock power=%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v35

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v37

    add-long v5, v35, v37

    long-to-double v5, v5

    mul-double v42, v5, v33

    add-double v44, v44, v42

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_10

    const-wide/16 v5, 0x0

    cmpl-double v5, v42, v5

    if-eqz v5, :cond_10

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "mobile power=%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v89

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v93

    add-long v5, v89, v93

    long-to-double v5, v5

    mul-double v42, v5, v85

    add-double v44, v44, v42

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    cmpl-double v5, v42, v5

    if-eqz v5, :cond_11

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "wifi power=%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-wide/from16 v0, v70

    move/from16 v2, v84

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v87, v5, v9

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    add-long v5, v5, v87

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v0, v87

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v42, v5, v9

    add-double v44, v44, v42

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_12

    const-wide/16 v5, 0x0

    cmpl-double v5, v42, v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "wifi running power=%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-wide/from16 v0, v70

    move/from16 v2, v84

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v91, v5, v9

    move-wide/from16 v0, v91

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.scan"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v42, v5, v9

    add-double v44, v44, v42

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_13

    const-wide/16 v5, 0x0

    cmpl-double v5, v42, v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "wifi scanning power=%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_14
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/Map$Entry;

    invoke-interface/range {v55 .. v55}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual/range {v54 .. v54}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v56

    invoke-virtual/range {v54 .. v54}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v66

    move-object/from16 v0, v66

    move-wide/from16 v1, v70

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v60, v5, v9

    const-wide/16 v39, 0x0

    packed-switch v56, :pswitch_data_0

    const/4 v5, -0x1

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_15
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/hardware/Sensor;

    invoke-virtual/range {v53 .. v53}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    move/from16 v0, v56

    if-ne v5, v0, :cond_15

    invoke-virtual/range {v53 .. v53}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v39, v0

    :cond_16
    :goto_7
    move-wide/from16 v0, v60

    long-to-double v5, v0

    mul-double v5, v5, v39

    const-wide v9, 0x408f400000000000L

    div-double v42, v5, v9

    add-double v44, v44, v42

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_14

    const-wide/16 v5, 0x0

    cmpl-double v5, v42, v5

    if-eqz v5, :cond_14

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "sensor %s power=%.2f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v39

    move-wide/from16 v24, v60

    goto :goto_7

    :cond_17
    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_18

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "UID %d total power=%.2f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v30, 0x0

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v73

    const-wide/16 v5, 0x0

    cmpl-double v5, v44, v5

    if-nez v5, :cond_19

    if-nez p1, :cond_19

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    new-instance v4, Lcom/android/settings/fuelgauge/BatterySipper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v95, 0x0

    aput-wide v44, v12, v95

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    move-wide/from16 v0, v24

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    move-wide/from16 v0, v87

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    move-wide/from16 v0, v82

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    move-wide/from16 v0, v35

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    move-wide/from16 v0, v37

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    move-wide/from16 v0, v89

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    move-wide/from16 v0, v93

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_1a

    move-object/from16 v41, v4

    :cond_1a
    const-wide/16 v5, 0x0

    cmpl-double v5, v44, v5

    if-nez v5, :cond_1b

    if-eqz p1, :cond_1c

    :cond_1b
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_21

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    :cond_1c
    :goto_9
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    :cond_1d
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, v73

    if-eq v0, v5, :cond_20

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_20

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v73

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/List;

    if-nez v32, :cond_1f

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v73

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_21
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_22

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_9

    :cond_22
    if-eqz v30, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v73

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/Double;

    if-nez v74, :cond_23

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v74

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v73

    move-object/from16 v1, v74

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    :cond_23
    invoke-virtual/range {v74 .. v74}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v44

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v74

    goto :goto_a

    :cond_24
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v5, v44, v5

    if-lez v5, :cond_25

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    :cond_25
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    goto/16 :goto_9

    :cond_26
    if-eqz v41, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v84

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v77, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v84

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    add-long/2addr v5, v14

    sub-long v77, v77, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v77, v5

    if-lez v5, :cond_29

    move-wide/from16 v0, v77

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v44, v5, v9

    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_27

    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OS wakeLockTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v77

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " power "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object/from16 v0, v41

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v77

    move-object/from16 v0, v41

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    move-object/from16 v0, v41

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v44

    move-object/from16 v0, v41

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v44

    aput-wide v9, v5, v6

    move-object/from16 v0, v41

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_28

    move-object/from16 v0, v41

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    :cond_28
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    :cond_29
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 12

    const-wide/16 v10, 0x3e8

    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long v4, v7, v10

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    move-wide v0, v2

    sget-boolean v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uptime since last unplugged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v0, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addUserUsage()V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addPhoneUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addScreenUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addWiFiUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addBluetoothUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addIdleUsage(J)V

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addRadioUsage(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "power_show_debug_log"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getMaxPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->load()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getTotalPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->abort()V

    :cond_0
    return-void
.end method

.method public refreshStats(Z)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->processAppUsage(Z)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->processMiscUsage()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->abort()V

    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;-><init>(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->dumpAppUsage(Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startBatteryDetailPage(Lcom/htc/preference/HtcPreferenceActivity;Lcom/android/settings/fuelgauge/BatterySipper;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "title"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "percent"

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "gauge"

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "duration"

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "iconPackage"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "iconId"

    iget v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "noCoverage"

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v7, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v7, :cond_0

    const-string v7, "uid"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v7, "drainType"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "showLocationButton"

    invoke-virtual {v0, v7, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper$1;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x1

    new-array v4, v7, [I

    const/4 v7, 0x0

    const v8, 0x7f0c10d9

    aput v8, v4, v7

    const/4 v7, 0x1

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    :cond_1
    :goto_0
    const-string v7, "types"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v7, "values"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-boolean v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v8, "startBatteryDetailPage"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.htc.htcpowermanager"

    const-string v8, "com.htc.htcpowermanager.battery.PowerUsageDetailActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/16 v7, 0xb

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    const/16 v7, 0xb

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x4

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x5

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x6

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x7

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/16 v7, 0x8

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/16 v7, 0x9

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    iget-object v7, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v8, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v7, v8, :cond_1

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v8, ""

    iget v9, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    const-string v7, "report_details"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    const-string v7, "report_checkin_details"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v7, 0x2

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    const/4 v7, 0x2

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v8, v6, v7

    goto/16 :goto_0

    :pswitch_2
    const/16 v7, 0x8

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    const/16 v7, 0x8

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x4

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x5

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x6

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x7

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    goto/16 :goto_0

    :pswitch_3
    const/16 v7, 0x8

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    const/16 v7, 0x8

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x4

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x5

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x6

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x7

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 0x4
        0xcdt 0x10t 0xct 0x7ft
        0xcet 0x10t 0xct 0x7ft
        0xcft 0x10t 0xct 0x7ft
        0xd0t 0x10t 0xct 0x7ft
        0xd1t 0x10t 0xct 0x7ft
        0xd4t 0x10t 0xct 0x7ft
        0xd3t 0x10t 0xct 0x7ft
        0xd6t 0x10t 0xct 0x7ft
        0xd5t 0x10t 0xct 0x7ft
        0xd7t 0x10t 0xct 0x7ft
        0xd8t 0x10t 0xct 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xd9t 0x10t 0xct 0x7ft
        0xdat 0x10t 0xct 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xd1t 0x10t 0xct 0x7ft
        0xcdt 0x10t 0xct 0x7ft
        0xcet 0x10t 0xct 0x7ft
        0xcft 0x10t 0xct 0x7ft
        0xd4t 0x10t 0xct 0x7ft
        0xd3t 0x10t 0xct 0x7ft
        0xd6t 0x10t 0xct 0x7ft
        0xd5t 0x10t 0xct 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xd9t 0x10t 0xct 0x7ft
        0xcdt 0x10t 0xct 0x7ft
        0xcet 0x10t 0xct 0x7ft
        0xcft 0x10t 0xct 0x7ft
        0xd4t 0x10t 0xct 0x7ft
        0xd3t 0x10t 0xct 0x7ft
        0xd6t 0x10t 0xct 0x7ft
        0xd5t 0x10t 0xct 0x7ft
    .end array-data
.end method

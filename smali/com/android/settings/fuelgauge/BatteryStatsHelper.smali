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

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    .line 75
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
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    .line 95
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    .line 139
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    .line 140
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12
    .parameter "uSecNow"

    .prologue
    .line 770
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addBluetoothUsage() === BEGIN ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 773
    .local v3, btOnTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    .line 775
    .local v10, btPower:D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    .line 776
    .local v9, btPingCount:I
    int-to-double v0, v9

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    .line 778
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c10c9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020250

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 781
    .local v8, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 783
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 784
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

    .line 785
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

    .line 786
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

    .line 787
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

    .line 788
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

    .line 789
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

    .line 792
    :cond_1
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addBluetoothUsage() === END ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_2
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 897
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 898
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    .line 899
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

    .line 901
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 902
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 903
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 752
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addIdleUsage() === BEGIN ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 755
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 757
    .local v6, idlePower:D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c10cc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200a5

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 760
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 761
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

    .line 762
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

    .line 763
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

    .line 766
    :cond_1
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addIdleUsage() === END ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 628
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addPhoneUsage() === BEGIN ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 630
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.talk"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 632
    .local v6, phoneOnPower:D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c10cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0200aa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 635
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 636
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

    .line 637
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

    .line 638
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

    .line 640
    :cond_1
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "addPhoneUsage() === END ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 675
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addRadioUsage() === BEGIN ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    const-wide/16 v8, 0x0

    .line 678
    .local v8, power:D
    const/4 v10, 0x5

    .line 679
    .local v10, BINS:I
    const-wide/16 v5, 0x0

    .line 680
    .local v5, signalTimeMs:J
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_2

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    .line 682
    .local v15, strengthTimeMs:J
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

    .line 684
    add-long/2addr v5, v15

    .line 686
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 687
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

    .line 688
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

    .line 680
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 691
    .end local v15           #strengthTimeMs:J
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

    .line 692
    .local v13, scanningTimeMs:J
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

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c10ca

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0200a2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v11

    .line 697
    .local v11, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    .line 698
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

    .line 701
    :cond_3
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 702
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

    .line 703
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

    .line 704
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

    .line 707
    :cond_4
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addRadioUsage() === END ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_5
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 644
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addScreenUsage() === BEGIN ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    const-wide/16 v8, 0x0

    .line 647
    .local v8, power:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    .line 648
    .local v5, screenOnTimeMs:J
    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    .line 651
    .local v15, screenFullPower:D
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_2

    .line 652
    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    .line 654
    .local v13, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    .line 655
    .local v10, brightnessTime:J
    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    .line 656
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 657
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

    .line 651
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 661
    .end local v10           #brightnessTime:J
    .end local v13           #screenBinPower:D
    :cond_2
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c10c7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020253

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 665
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 666
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

    .line 667
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

    .line 668
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

    .line 669
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

    .line 671
    :cond_3
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addScreenUsage() === END ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_4
    return-void
.end method

.method private addUserUsage()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 796
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "addUserUsage() === BEGIN ==="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    .line 799
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 800
    .local v13, userId:I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 801
    .local v12, sippers:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 804
    .local v11, info:Landroid/content/pm/UserInfo;
    if-eqz v11, :cond_4

    .line 805
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v2, v11, v3}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 806
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_3

    iget-object v1, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 807
    .local v1, name:Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_1

    .line 808
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0fc4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 817
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    .line 818
    .local v14, userPower:Ljava/lang/Double;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 819
    .local v6, power:D
    :goto_3
    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 820
    .local v8, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iput-object v10, v8, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 821
    const-string v0, "User"

    invoke-direct {p0, v8, v12, v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 823
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 824
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

    .line 825
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

    .line 826
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

    .line 798
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 806
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #power:D
    .end local v8           #bs:Lcom/android/settings/fuelgauge/BatterySipper;
    .end local v14           #userPower:Ljava/lang/Double;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 813
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v10, 0x0

    .line 814
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0fc5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 818
    .restart local v14       #userPower:Ljava/lang/Double;
    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 830
    .end local v1           #name:Ljava/lang/String;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #info:Landroid/content/pm/UserInfo;
    .end local v12           #sippers:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    .end local v13           #userId:I
    .end local v14           #userPower:Ljava/lang/Double;
    :cond_6
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "addUserUsage() === END ==="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_7
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17
    .parameter "uSecNow"

    .prologue
    .line 727
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addWiFiUsage() === BEGIN ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
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

    .line 730
    .local v11, onTimeMs:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 731
    .local v5, runningTimeMs:J
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

    .line 733
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    .line 734
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_2

    const-wide/16 v5, 0x0

    .line 735
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

    .line 738
    .local v13, wifiPower:D
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

    .line 739
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c10c8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f02024f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v10

    .line 741
    .local v10, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 743
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 744
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

    .line 745
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

    .line 748
    :cond_4
    sget-boolean v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "addWiFiUsage() === END ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_5
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
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

    .prologue
    .line 711
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 712
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 713
    .local v1, wbs:Lcom/android/settings/fuelgauge/BatterySipper;
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

    .line 714
    :cond_0
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 715
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 716
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 717
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 718
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 719
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    .line 720
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    .line 721
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    .line 722
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    .end local v1           #wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_1
    return-void
.end method

.method private dumpAppUsage(Z)V
    .locals 109
    .parameter "includeZeroConsumption"

    .prologue
    .line 937
    new-instance v15, Ljava/lang/StringBuilder;

    const/high16 v104, 0x10

    move/from16 v0, v104

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 939
    .local v15, dumpStr:Ljava/lang/StringBuilder;
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

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v104, v0

    const-string v105, "sensor"

    invoke-virtual/range {v104 .. v105}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/hardware/SensorManager;

    .line 945
    .local v55, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v87, v0

    .line 946
    .local v87, which:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    invoke-virtual/range {v104 .. v104}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v61

    .line 947
    .local v61, speedSteps:I
    move/from16 v0, v61

    new-array v0, v0, [D

    move-object/from16 v43, v0

    .line 948
    .local v43, powerCpuNormal:[D
    move/from16 v0, v61

    new-array v12, v0, [J

    .line 950
    .local v12, cpuSpeedStepTimes:[J
    const-string v104, "\n>>> PowerProfile::getNumSpeedSteps() = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 951
    const/16 v39, 0x0

    .local v39, p:I
    :goto_1
    move/from16 v0, v39

    move/from16 v1, v61

    if-ge v0, v1, :cond_1

    .line 952
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

    .line 953
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

    .line 951
    add-int/lit8 v39, v39, 0x1

    goto :goto_1

    .line 939
    .end local v12           #cpuSpeedStepTimes:[J
    .end local v39           #p:I
    .end local v43           #powerCpuNormal:[D
    .end local v55           #sensorManager:Landroid/hardware/SensorManager;
    .end local v61           #speedSteps:I
    .end local v87           #which:I
    :cond_0
    const-string v104, "false"

    goto/16 :goto_0

    .line 957
    .restart local v12       #cpuSpeedStepTimes:[J
    .restart local v39       #p:I
    .restart local v43       #powerCpuNormal:[D
    .restart local v55       #sensorManager:Landroid/hardware/SensorManager;
    .restart local v61       #speedSteps:I
    .restart local v87       #which:I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMobilePowerPerByte()D

    move-result-wide v27

    .line 958
    .local v27, mobilePowerPerByte:D
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getWifiPowerPerByte()D

    move-result-wide v88

    .line 959
    .local v88, wifiPowerPerByte:D
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

    .line 960
    .local v72, uSecTime:J
    const-wide/16 v6, 0x0

    .line 961
    .local v6, appWakelockTime:J
    const/16 v38, 0x0

    .line 962
    .local v38, osAppFlag:Z
    move-wide/from16 v0, v72

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v104, v0

    invoke-virtual/range {v104 .. v104}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v74

    .line 965
    .local v74, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v74 .. v74}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 969
    .local v4, NU:I
    const-string v104, "\n>>> Num of UID = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 971
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 974
    const/16 v26, 0x0

    .local v26, iu:I
    :goto_2
    move/from16 v0, v26

    if-ge v0, v4, :cond_35

    .line 975
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

    .line 977
    move-object/from16 v0, v74

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Landroid/os/BatteryStats$Uid;

    .line 979
    .local v71, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v41, 0x0

    .line 980
    .local v41, power:D
    const-wide/16 v10, 0x0

    .line 981
    .local v10, cpuPower:D
    const-wide/16 v21, 0x0

    .line 982
    .local v21, highestDrain:D
    const/16 v40, 0x0

    .line 984
    .local v40, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v46

    .line 985
    .local v46, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v13, 0x0

    .line 986
    .local v13, cpuTime:J
    const-wide/16 v8, 0x0

    .line 987
    .local v8, cpuFgTime:J
    const-wide/16 v85, 0x0

    .line 988
    .local v85, wakelockTime:J
    const-wide/16 v19, 0x0

    .line 990
    .local v19, gpsTime:J
    const-string v104, "\n>>> CPU power === BEGIN ==="

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->size()I

    move-result v104

    if-lez v104, :cond_13

    .line 995
    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v104

    invoke-interface/range {v104 .. v104}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 996
    .local v16, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
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

    .line 998
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/os/BatteryStats$Uid$Proc;

    .line 999
    .local v47, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v47

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v76

    .line 1000
    .local v76, userTime:J
    const-wide/16 v104, 0x0

    cmp-long v104, v76, v104

    if-gez v104, :cond_2

    .line 1001
    const-string v104, "\n>>> Error: userTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1002
    const-wide/16 v76, 0x0

    .line 1004
    :cond_2
    move-object/from16 v0, v47

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v63

    .line 1005
    .local v63, systemTime:J
    const-wide/16 v104, 0x0

    cmp-long v104, v63, v104

    if-gez v104, :cond_3

    .line 1006
    const-string v104, "\n>>> Error: systemTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v63

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1007
    const-wide/16 v63, 0x0

    .line 1009
    :cond_3
    move-object/from16 v0, v47

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v17

    .line 1010
    .local v17, foregroundTime:J
    const-wide/16 v104, 0x0

    cmp-long v104, v17, v104

    if-gez v104, :cond_4

    .line 1011
    const-string v104, "\n>>> Error: foregroundTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1012
    const-wide/16 v17, 0x0

    .line 1015
    :cond_4
    const-wide/16 v104, 0xa

    mul-long v104, v104, v17

    add-long v8, v8, v104

    .line 1016
    add-long v104, v76, v63

    const-wide/16 v106, 0xa

    mul-long v66, v104, v106

    .line 1018
    .local v66, tmpCpuTime:J
    const-wide/16 v104, 0x0

    cmp-long v104, v76, v104

    if-lez v104, :cond_5

    .line 1019
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

    .line 1020
    :cond_5
    const-wide/16 v104, 0x0

    cmp-long v104, v63, v104

    if-lez v104, :cond_6

    .line 1021
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

    .line 1022
    :cond_6
    const-wide/16 v104, 0x0

    cmp-long v104, v17, v104

    if-lez v104, :cond_7

    .line 1023
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

    .line 1026
    :cond_7
    const/16 v70, 0x0

    .line 1028
    .local v70, totalTimeAtSpeeds:I
    const/16 v62, 0x0

    .local v62, step:I
    :goto_4
    move/from16 v0, v62

    move/from16 v1, v61

    if-ge v0, v1, :cond_a

    .line 1029
    move-object/from16 v0, v47

    move/from16 v1, v62

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v104

    aput-wide v104, v12, v62

    .line 1031
    aget-wide v104, v12, v62

    const-wide/16 v106, 0x0

    cmp-long v104, v104, v106

    if-gez v104, :cond_8

    .line 1032
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

    .line 1033
    const-wide/16 v104, 0x0

    aput-wide v104, v12, v62

    .line 1035
    :cond_8
    move/from16 v0, v70

    int-to-long v0, v0

    move-wide/from16 v104, v0

    aget-wide v106, v12, v62

    add-long v104, v104, v106

    move-wide/from16 v0, v104

    long-to-int v0, v0

    move/from16 v70, v0

    .line 1037
    aget-wide v104, v12, v62

    const-wide/16 v106, 0x0

    cmp-long v104, v104, v106

    if-lez v104, :cond_9

    .line 1038
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

    .line 1028
    :cond_9
    add-int/lit8 v62, v62, 0x1

    goto :goto_4

    .line 1045
    :cond_a
    if-nez v70, :cond_b

    const/16 v70, 0x1

    .line 1047
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

    .line 1050
    const-wide/16 v44, 0x0

    .line 1051
    .local v44, processPower:D
    const/16 v62, 0x0

    :goto_5
    move/from16 v0, v62

    move/from16 v1, v61

    if-ge v0, v1, :cond_c

    .line 1052
    aget-wide v104, v12, v62

    move-wide/from16 v0, v104

    long-to-double v0, v0

    move-wide/from16 v104, v0

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v106, v0

    div-double v48, v104, v106

    .line 1053
    .local v48, ratio:D
    move-wide/from16 v0, v66

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v104, v104, v48

    aget-wide v106, v43, v62

    mul-double v104, v104, v106

    add-double v44, v44, v104

    .line 1051
    add-int/lit8 v62, v62, 0x1

    goto :goto_5

    .line 1055
    .end local v48           #ratio:D
    :cond_c
    add-long v13, v13, v66

    .line 1057
    const-wide/16 v104, 0x0

    cmpl-double v104, v44, v104

    if-eqz v104, :cond_d

    .line 1058
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

    .line 1061
    :cond_d
    add-double v41, v41, v44

    .line 1062
    if-eqz v40, :cond_e

    const-string v104, "*"

    move-object/from16 v0, v40

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v104

    if-eqz v104, :cond_10

    .line 1064
    :cond_e
    move-wide/from16 v21, v44

    .line 1065
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 1072
    .restart local v40       #packageWithHighestDrain:Ljava/lang/String;
    :cond_f
    :goto_6
    const-string v104, "\n"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_3

    .line 1066
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

    .line 1068
    move-wide/from16 v21, v44

    .line 1069
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .restart local v40       #packageWithHighestDrain:Ljava/lang/String;
    goto :goto_6

    .line 1077
    .end local v16           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v17           #foregroundTime:J
    .end local v44           #processPower:D
    .end local v47           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v62           #step:I
    .end local v63           #systemTime:J
    .end local v66           #tmpCpuTime:J
    .end local v70           #totalTimeAtSpeeds:I
    .end local v76           #userTime:J
    :cond_11
    const-wide/16 v104, 0x0

    cmpl-double v104, v21, v104

    if-lez v104, :cond_12

    .line 1078
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

    .line 1082
    :cond_12
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1086
    .end local v23           #i$:Ljava/util/Iterator;
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

    .line 1089
    cmp-long v104, v8, v13

    if-lez v104, :cond_15

    .line 1090
    const-wide/16 v104, 0x2710

    add-long v104, v104, v13

    cmp-long v104, v8, v104

    if-lez v104, :cond_14

    .line 1091
    const-string v104, "\n>>> WARNING! Cputime is more than 10 seconds behind Foreground time"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_14
    move-wide v13, v8

    .line 1096
    :cond_15
    const-wide v104, 0x408f400000000000L

    div-double v41, v41, v104

    .line 1097
    move-wide/from16 v10, v41

    .line 1098
    const-string v104, "\n>>> CPU power = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mA)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    const-string v104, "\n>>> CPU power === END ==="

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1198
    const-wide/16 v78, 0x0

    .line 1199
    .local v78, wakeLockPower:D
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v84

    .line 1201
    .local v84, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v104

    invoke-interface/range {v104 .. v104}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_16
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_17

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Ljava/util/Map$Entry;

    .line 1202
    .local v83, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 1205
    .local v82, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v104, 0x0

    move-object/from16 v0, v82

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v65

    .line 1206
    .local v65, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v65, :cond_16

    .line 1207
    move-object/from16 v0, v65

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v104

    add-long v85, v85, v104

    goto :goto_7

    .line 1210
    .end local v65           #timer:Landroid/os/BatteryStats$Timer;
    .end local v82           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v83           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_17
    const-wide/16 v104, 0x3e8

    div-long v85, v85, v104

    .line 1211
    const-wide/16 v104, 0x0

    cmp-long v104, v85, v104

    if-gez v104, :cond_18

    .line 1212
    const-string v104, "\n>>> Error: wakelockTime < 0"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-wide/16 v85, 0x0

    .line 1215
    :cond_18
    add-long v6, v6, v85

    .line 1217
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

    .line 1221
    add-double v41, v41, v78

    .line 1223
    const-wide/16 v104, 0x0

    cmp-long v104, v85, v104

    if-lez v104, :cond_19

    .line 1224
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

    .line 1226
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

    .line 1232
    :cond_19
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1239
    const-wide/16 v31, 0x0

    .line 1241
    .local v31, mobileTrafficPower:D
    const/16 v104, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v29

    .line 1242
    .local v29, mobileRx:J
    const/16 v104, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v33

    .line 1243
    .local v33, mobileTx:J
    add-long v104, v29, v33

    move-wide/from16 v0, v104

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v31, v104, v27

    .line 1244
    add-double v41, v41, v31

    .line 1247
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

    .line 1253
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1260
    const-wide/16 v100, 0x0

    .line 1262
    .local v100, wifiTrafficPower:D
    const/16 v104, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v94

    .line 1263
    .local v94, wifiRx:J
    const/16 v104, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v71

    move/from16 v1, v104

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v102

    .line 1264
    .local v102, wifiTx:J
    add-long v104, v94, v102

    move-wide/from16 v0, v104

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v100, v104, v88

    .line 1265
    add-double v41, v41, v100

    .line 1268
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

    .line 1274
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1281
    const-wide/16 v90, 0x0

    .line 1283
    .local v90, wifiRunningPower:D
    move-object/from16 v0, v71

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v92, v104, v106

    .line 1284
    .local v92, wifiRunningTimeMs:J
    const-wide/16 v104, 0x0

    cmp-long v104, v92, v104

    if-gez v104, :cond_1a

    .line 1285
    const-string v104, "\n>>> Error: wifiRunningTimeMs < 0"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-wide/16 v92, 0x0

    .line 1288
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v104, v0

    add-long v104, v104, v92

    move-wide/from16 v0, v104

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    .line 1290
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

    .line 1292
    add-double v41, v41, v90

    .line 1294
    const-wide/16 v104, 0x0

    cmp-long v104, v92, v104

    if-lez v104, :cond_1b

    .line 1295
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

    .line 1297
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

    .line 1302
    :cond_1b
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1309
    const-wide/16 v96, 0x0

    .line 1311
    .local v96, wifiScanPower:D
    move-object/from16 v0, v71

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v98, v104, v106

    .line 1312
    .local v98, wifiScanTimeMs:J
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

    .line 1314
    add-double v41, v41, v96

    .line 1316
    const-wide/16 v104, 0x0

    cmp-long v104, v98, v104

    if-lez v104, :cond_1c

    .line 1317
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

    .line 1319
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

    .line 1325
    :cond_1c
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1332
    const-wide/16 v56, 0x0

    .line 1334
    .local v56, sensorPower:D
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v58

    .line 1336
    .local v58, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v58 .. v58}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v104

    invoke-interface/range {v104 .. v104}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23           #i$:Ljava/util/Iterator;
    :cond_1d
    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/Map$Entry;

    .line 1337
    .local v52, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/BatteryStats$Uid$Sensor;

    .line 1338
    .local v51, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v51 .. v51}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v53

    .line 1339
    .local v53, sensorHandle:I
    invoke-virtual/range {v51 .. v51}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v65

    .line 1340
    .restart local v65       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v65

    move-wide/from16 v1, v72

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v104

    const-wide/16 v106, 0x3e8

    div-long v59, v104, v106

    .line 1342
    .local v59, sensorTime:J
    const-string v104, "\n>>> sensor.toString() = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-wide/16 v35, 0x0

    .line 1345
    .local v35, multiplier:D
    const-wide/16 v68, 0x0

    .line 1346
    .local v68, tmpSensorPower:D
    packed-switch v53, :pswitch_data_0

    .line 1358
    const/16 v104, -0x1

    move-object/from16 v0, v55

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v54

    .line 1360
    .local v54, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v104

    if-eqz v104, :cond_1f

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/hardware/Sensor;

    .line 1361
    .local v50, s:Landroid/hardware/Sensor;
    invoke-virtual/range {v50 .. v50}, Landroid/hardware/Sensor;->getHandle()I

    move-result v104

    move/from16 v0, v104

    move/from16 v1, v53

    if-ne v0, v1, :cond_1e

    .line 1362
    invoke-virtual/range {v50 .. v50}, Landroid/hardware/Sensor;->getPower()F

    move-result v104

    move/from16 v0, v104

    float-to-double v0, v0

    move-wide/from16 v35, v0

    .line 1364
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

    .line 1371
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v50           #s:Landroid/hardware/Sensor;
    .end local v54           #sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1f
    :goto_9
    const-wide/16 v104, 0x0

    cmp-long v104, v59, v104

    if-gez v104, :cond_20

    .line 1372
    const-string v104, "\n>>> Error: sensorTime < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1373
    const-wide/16 v59, 0x0

    .line 1376
    :cond_20
    move-wide/from16 v0, v59

    long-to-double v0, v0

    move-wide/from16 v104, v0

    mul-double v68, v35, v104

    .line 1377
    add-double v56, v56, v68

    .line 1379
    const-wide/16 v104, 0x0

    cmp-long v104, v59, v104

    if-lez v104, :cond_1d

    .line 1380
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

    .line 1381
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

    .line 1348
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v104, v0

    const-string v105, "gps.on"

    invoke-virtual/range {v104 .. v105}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v35

    .line 1350
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

    .line 1355
    move-wide/from16 v19, v59

    .line 1356
    goto :goto_9

    .line 1385
    .end local v35           #multiplier:D
    .end local v51           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v52           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v53           #sensorHandle:I
    .end local v59           #sensorTime:J
    .end local v65           #timer:Landroid/os/BatteryStats$Timer;
    .end local v68           #tmpSensorPower:D
    :cond_21
    const-wide v104, 0x408f400000000000L

    div-double v104, v56, v104

    add-double v41, v41, v104

    .line 1389
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1395
    const-string v104, "\n>>> UID "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1396
    const-wide/16 v104, 0x0

    cmpg-double v104, v41, v104

    if-gez v104, :cond_22

    .line 1397
    const-string v104, "\n>>> Error: power < 0 !! value = "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1398
    const-wide/16 v41, 0x0

    .line 1400
    :cond_22
    const-wide/16 v104, 0x0

    cmpl-double v104, v41, v104

    if-lez v104, :cond_29

    .line 1401
    const-wide/16 v104, 0x0

    cmpl-double v104, v10, v104

    if-lez v104, :cond_23

    .line 1402
    const-string v104, "\n          CPU: "

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    move-object/from16 v0, v104

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, " (mAs)"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    :cond_23
    const-wide/16 v104, 0x0

    cmpl-double v104, v78, v104

    if-lez v104, :cond_24

    .line 1408
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

    .line 1409
    :cond_24
    const-wide/16 v104, 0x0

    cmpl-double v104, v31, v104

    if-lez v104, :cond_25

    .line 1410
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

    .line 1411
    :cond_25
    const-wide/16 v104, 0x0

    cmpl-double v104, v100, v104

    if-lez v104, :cond_26

    .line 1412
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

    .line 1413
    :cond_26
    const-wide/16 v104, 0x0

    cmpl-double v104, v90, v104

    if-lez v104, :cond_27

    .line 1414
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

    .line 1415
    :cond_27
    const-wide/16 v104, 0x0

    cmpl-double v104, v96, v104

    if-lez v104, :cond_28

    .line 1416
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

    .line 1417
    :cond_28
    const-wide/16 v104, 0x0

    cmpl-double v104, v56, v104

    if-lez v104, :cond_29

    .line 1418
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

    .line 1420
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

    .line 1423
    const/16 v25, 0x0

    .line 1425
    .local v25, isOtherUser:Z
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    invoke-static/range {v104 .. v104}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v75

    .line 1426
    .local v75, userId:I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v37

    .line 1427
    .local v37, myUserId:I
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    invoke-static/range {v104 .. v104}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 1429
    .local v5, appId:I
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

    .line 1436
    const-wide/16 v104, 0x0

    cmpl-double v104, v41, v104

    if-nez v104, :cond_2a

    if-nez p1, :cond_2a

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    if-nez v104, :cond_2c

    :cond_2a
    if-eqz v40, :cond_2c

    .line 1446
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3f2

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_30

    .line 1447
    const-string v104, "\n>>> This is WIFI_UID"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    :cond_2b
    :goto_b
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    if-nez v104, :cond_2c

    .line 1458
    const/16 v38, 0x1

    .line 1462
    :cond_2c
    const-wide/16 v104, 0x0

    cmpl-double v104, v41, v104

    if-nez v104, :cond_2d

    if-eqz p1, :cond_2e

    .line 1463
    :cond_2d
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3f2

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_32

    .line 1464
    const-string v104, "\n>>> append power to mWifiPower"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :cond_2e
    :goto_c
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 974
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    :cond_2f
    move-object/from16 v104, v40

    .line 1429
    goto :goto_a

    .line 1448
    :cond_30
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3ea

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_31

    .line 1449
    const-string v104, "\n>>> This is BLUETOOTH_UID"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1450
    :cond_31
    move/from16 v0, v75

    move/from16 v1, v37

    if-eq v0, v1, :cond_2b

    const/16 v104, 0x2710

    move/from16 v0, v104

    if-lt v5, v0, :cond_2b

    .line 1451
    const/16 v25, 0x1

    .line 1452
    const-string v104, "\n>>> isOtherUser = true"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v104

    const-string v105, ", a battery sipper is added into mUserSippers with the userId"

    invoke-virtual/range {v104 .. v105}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1465
    :cond_32
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v104

    const/16 v105, 0x3ea

    move/from16 v0, v104

    move/from16 v1, v105

    if-ne v0, v1, :cond_33

    .line 1466
    const-string v104, "\n>>> append power to mBluetoothPower"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1467
    :cond_33
    if-eqz v25, :cond_34

    .line 1468
    const-string v104, "\n>>> append power to mUserPower for userId"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1470
    :cond_34
    const-string v104, "\n>>> append power to mTotalPower"

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1483
    .end local v5           #appId:I
    .end local v8           #cpuFgTime:J
    .end local v10           #cpuPower:D
    .end local v13           #cpuTime:J
    .end local v19           #gpsTime:J
    .end local v21           #highestDrain:D
    .end local v25           #isOtherUser:Z
    .end local v29           #mobileRx:J
    .end local v31           #mobileTrafficPower:D
    .end local v33           #mobileTx:J
    .end local v37           #myUserId:I
    .end local v40           #packageWithHighestDrain:Ljava/lang/String;
    .end local v41           #power:D
    .end local v46           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v56           #sensorPower:D
    .end local v58           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v71           #u:Landroid/os/BatteryStats$Uid;
    .end local v75           #userId:I
    .end local v78           #wakeLockPower:D
    .end local v84           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v85           #wakelockTime:J
    .end local v90           #wifiRunningPower:D
    .end local v92           #wifiRunningTimeMs:J
    .end local v94           #wifiRx:J
    .end local v96           #wifiScanPower:D
    .end local v98           #wifiScanTimeMs:J
    .end local v100           #wifiTrafficPower:D
    .end local v102           #wifiTx:J
    :cond_35
    if-eqz v38, :cond_36

    .line 1484
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

    .line 1487
    .local v80, wakeTimeMillis:J
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

    .line 1490
    const-wide/16 v104, 0x0

    cmp-long v104, v80, v104

    if-lez v104, :cond_36

    .line 1491
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

    .line 1494
    .restart local v41       #power:D
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

    .line 1495
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

    .line 1499
    .end local v41           #power:D
    .end local v80           #wakeTimeMillis:J
    :cond_36
    const-string v104, "\n>>> dumpAppUsage() === END ==="

    move-object/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    sget-object v104, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v105

    invoke-static/range {v104 .. v105}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/16 v104, 0x0

    move/from16 v0, v104

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1504
    return-void

    .line 1346
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private getMobilePowerPerByte()D
    .locals 19

    .prologue
    .line 837
    const-wide/32 v1, 0x30d40

    .line 838
    .local v1, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "radio.active"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    const-wide v17, 0x40ac200000000000L

    div-double v3, v15, v17

    .line 840
    .local v3, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityCount(II)J

    move-result-wide v9

    .line 841
    .local v9, mobileRx:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityCount(II)J

    move-result-wide v11

    .line 842
    .local v11, mobileTx:J
    add-long v7, v9, v11

    .line 844
    .local v7, mobileData:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v13, v15, v17

    .line 845
    .local v13, radioDataUptimeMs:J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_1

    const-wide/16 v15, 0x8

    mul-long/2addr v15, v7

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    div-long v5, v15, v13

    .line 849
    .local v5, mobileBps:J
    :goto_0
    sget-boolean v15, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 850
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

    .line 851
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

    .line 852
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

    .line 853
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

    .line 856
    :cond_0
    const-wide/16 v15, 0x8

    div-long v15, v5, v15

    long-to-double v15, v15

    div-double v15, v3, v15

    return-wide v15

    .line 845
    .end local v5           #mobileBps:J
    :cond_1
    const-wide/32 v5, 0x30d40

    goto :goto_0
.end method

.method private getWifiPowerPerByte()D
    .locals 8

    .prologue
    .line 863
    const-wide/32 v0, 0xf4240

    .line 864
    .local v0, WIFI_BPS:J
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x40ac200000000000L

    div-double v2, v4, v6

    .line 867
    .local v2, WIFI_POWER:D
    sget-boolean v4, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 868
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

    .line 871
    :cond_0
    const-wide v4, 0x40fe848000000000L

    div-double v4, v2, v4

    return-wide v4
.end method

.method private load()V
    .locals 5

    .prologue
    .line 924
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 925
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 926
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 927
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 928
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 930
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v1

    .line 932
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage(Z)V
    .locals 97
    .parameter "includeZeroConsumption"

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/hardware/SensorManager;

    .line 390
    .local v58, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v84, v0

    .line 391
    .local v84, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v62

    .line 392
    .local v62, speedSteps:I
    move/from16 v0, v62

    new-array v0, v0, [D

    move-object/from16 v46, v0

    .line 393
    .local v46, powerCpuNormal:[D
    move/from16 v0, v62

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 394
    .local v18, cpuSpeedStepTimes:[J
    const/16 v42, 0x0

    .local v42, p:I
    :goto_0
    move/from16 v0, v42

    move/from16 v1, v62

    if-ge v0, v1, :cond_0

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v42

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v46, v42

    .line 394
    add-int/lit8 v42, v42, 0x1

    goto :goto_0

    .line 397
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMobilePowerPerByte()D

    move-result-wide v33

    .line 398
    .local v33, mobilePowerPerByte:D
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getWifiPowerPerByte()D

    move-result-wide v85

    .line 399
    .local v85, wifiPowerPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v84

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v70

    .line 400
    .local v70, uSecTime:J
    const-wide/16 v14, 0x0

    .line 401
    .local v14, appWakelockTime:J
    const/16 v41, 0x0

    .line 402
    .local v41, osApp:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v70

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    .line 403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v72

    .line 404
    .local v72, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v72 .. v72}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 405
    .local v13, NU:I
    const/16 v31, 0x0

    .end local v42           #p:I
    .local v31, iu:I
    :goto_1
    move/from16 v0, v31

    if-ge v0, v13, :cond_26

    .line 406
    move-object/from16 v0, v72

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 408
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v44, 0x0

    .line 409
    .local v44, power:D
    const-wide/16 v26, 0x0

    .line 410
    .local v26, highestDrain:D
    const/4 v8, 0x0

    .line 412
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v49

    .line 413
    .local v49, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v19, 0x0

    .line 414
    .local v19, cpuTime:J
    const-wide/16 v16, 0x0

    .line 415
    .local v16, cpuFgTime:J
    const-wide/16 v82, 0x0

    .line 416
    .local v82, wakelockTime:J
    const-wide/16 v24, 0x0

    .line 417
    .local v24, gpsTime:J
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

    .line 418
    :cond_1
    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 421
    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 422
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid$Proc;

    .line 423
    .local v50, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v50

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v75

    .line 424
    .local v75, userTime:J
    move-object/from16 v0, v50

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v64

    .line 425
    .local v64, systemTime:J
    move-object/from16 v0, v50

    move/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v22

    .line 426
    .local v22, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v22

    add-long v16, v16, v5

    .line 427
    add-long v5, v75, v64

    const-wide/16 v9, 0xa

    mul-long v67, v5, v9

    .line 428
    .local v67, tmpCpuTime:J
    const/16 v69, 0x0

    .line 430
    .local v69, totalTimeAtSpeeds:I
    const/16 v63, 0x0

    .local v63, step:I
    :goto_3
    move/from16 v0, v63

    move/from16 v1, v62

    if-ge v0, v1, :cond_3

    .line 431
    move-object/from16 v0, v50

    move/from16 v1, v63

    move/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v18, v63

    .line 432
    move/from16 v0, v69

    int-to-long v5, v0

    aget-wide v9, v18, v63

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v69, v0

    .line 430
    add-int/lit8 v63, v63, 0x1

    goto :goto_3

    .line 434
    :cond_3
    if-nez v69, :cond_4

    const/16 v69, 0x1

    .line 436
    :cond_4
    const-wide/16 v47, 0x0

    .line 437
    .local v47, processPower:D
    const/16 v63, 0x0

    :goto_4
    move/from16 v0, v63

    move/from16 v1, v62

    if-ge v0, v1, :cond_5

    .line 438
    aget-wide v5, v18, v63

    long-to-double v5, v5

    move/from16 v0, v69

    int-to-double v9, v0

    div-double v51, v5, v9

    .line 439
    .local v51, ratio:D
    move-wide/from16 v0, v67

    long-to-double v5, v0

    mul-double v5, v5, v51

    aget-wide v9, v46, v63

    mul-double/2addr v5, v9

    add-double v47, v47, v5

    .line 437
    add-int/lit8 v63, v63, 0x1

    goto :goto_4

    .line 441
    .end local v51           #ratio:D
    :cond_5
    add-long v19, v19, v67

    .line 442
    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_6

    const-wide/16 v5, 0x0

    cmpl-double v5, v47, v5

    if-eqz v5, :cond_6

    .line 443
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

    .line 446
    :cond_6
    add-double v44, v44, v47

    .line 447
    if-eqz v8, :cond_7

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 449
    :cond_7
    move-wide/from16 v26, v47

    .line 450
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 451
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

    .line 453
    move-wide/from16 v26, v47

    .line 454
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 458
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v22           #foregroundTime:J
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v47           #processPower:D
    .end local v50           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v63           #step:I
    .end local v64           #systemTime:J
    .end local v67           #tmpCpuTime:J
    .end local v69           #totalTimeAtSpeeds:I
    .end local v75           #userTime:J
    :cond_9
    cmp-long v5, v16, v19

    if-lez v5, :cond_b

    .line 459
    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_a

    const-wide/16 v5, 0x2710

    add-long v5, v5, v19

    cmp-long v5, v16, v5

    if-lez v5, :cond_a

    .line 460
    sget-object v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v6, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_a
    move-wide/from16 v19, v16

    .line 464
    :cond_b
    const-wide v5, 0x408f400000000000L

    div-double v44, v44, v5

    .line 465
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

    .line 468
    :cond_c
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v81

    .line 470
    .local v81, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Ljava/util/Map$Entry;

    .line 471
    .local v80, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v80 .. v80}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 474
    .local v79, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v79

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v66

    .line 475
    .local v66, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v66, :cond_d

    .line 476
    move-object/from16 v0, v66

    move-wide/from16 v1, v70

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v82, v82, v5

    goto :goto_5

    .line 479
    .end local v66           #timer:Landroid/os/BatteryStats$Timer;
    .end local v79           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v80           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_e
    const-wide/16 v5, 0x3e8

    div-long v82, v82, v5

    .line 480
    add-long v14, v14, v82

    .line 483
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

    .line 485
    .local v42, p:D
    add-double v44, v44, v42

    .line 486
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

    .line 489
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v35

    .line 490
    .local v35, mobileRx:J
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v37

    .line 491
    .local v37, mobileTx:J
    add-long v5, v35, v37

    long-to-double v5, v5

    mul-double v42, v5, v33

    .line 492
    add-double v44, v44, v42

    .line 493
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

    .line 496
    :cond_10
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v89

    .line 497
    .local v89, wifiRx:J
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v93

    .line 498
    .local v93, wifiTx:J
    add-long v5, v89, v93

    long-to-double v5, v5

    mul-double v42, v5, v85

    .line 499
    add-double v44, v44, v42

    .line 500
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

    .line 503
    :cond_11
    move-wide/from16 v0, v70

    move/from16 v2, v84

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v87, v5, v9

    .line 504
    .local v87, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    add-long v5, v5, v87

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    .line 505
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

    .line 507
    add-double v44, v44, v42

    .line 508
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

    .line 511
    :cond_12
    move-wide/from16 v0, v70

    move/from16 v2, v84

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v91, v5, v9

    .line 512
    .local v91, wifiScanTimeMs:J
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

    .line 514
    add-double v44, v44, v42

    .line 515
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

    .line 518
    :cond_13
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v59

    .line 520
    .local v59, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v59 .. v59}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v28           #i$:Ljava/util/Iterator;
    :cond_14
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/util/Map$Entry;

    .line 521
    .local v55, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v55 .. v55}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/BatteryStats$Uid$Sensor;

    .line 522
    .local v54, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v54 .. v54}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v56

    .line 523
    .local v56, sensorHandle:I
    invoke-virtual/range {v54 .. v54}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v66

    .line 524
    .restart local v66       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v66

    move-wide/from16 v1, v70

    move/from16 v3, v84

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v60, v5, v9

    .line 525
    .local v60, sensorTime:J
    const-wide/16 v39, 0x0

    .line 526
    .local v39, multiplier:D
    packed-switch v56, :pswitch_data_0

    .line 532
    const/4 v5, -0x1

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v57

    .line 534
    .local v57, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/hardware/Sensor;

    .line 535
    .local v53, s:Landroid/hardware/Sensor;
    invoke-virtual/range {v53 .. v53}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    move/from16 v0, v56

    if-ne v5, v0, :cond_15

    .line 536
    invoke-virtual/range {v53 .. v53}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v39, v0

    .line 541
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v53           #s:Landroid/hardware/Sensor;
    .end local v57           #sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_16
    :goto_7
    move-wide/from16 v0, v60

    long-to-double v5, v0

    mul-double v5, v5, v39

    const-wide v9, 0x408f400000000000L

    div-double v42, v5, v9

    .line 542
    add-double v44, v44, v42

    .line 543
    sget-boolean v5, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v5, :cond_14

    const-wide/16 v5, 0x0

    cmpl-double v5, v42, v5

    if-eqz v5, :cond_14

    .line 544
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

    .line 528
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v39

    .line 529
    move-wide/from16 v24, v60

    .line 530
    goto :goto_7

    .line 548
    .end local v39           #multiplier:D
    .end local v54           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v55           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v56           #sensorHandle:I
    .end local v60           #sensorTime:J
    .end local v66           #timer:Landroid/os/BatteryStats$Timer;
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

    .line 551
    :cond_18
    const/16 v30, 0x0

    .line 552
    .local v30, isOtherUser:Z
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v73

    .line 553
    .local v73, userId:I
    const-wide/16 v5, 0x0

    cmpl-double v5, v44, v5

    if-nez v5, :cond_19

    if-nez p1, :cond_19

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_1a

    .line 554
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

    .line 557
    .local v4, app:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 558
    move-wide/from16 v0, v24

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 559
    move-wide/from16 v0, v87

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 560
    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 561
    move-wide/from16 v0, v82

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 562
    move-wide/from16 v0, v35

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    .line 563
    move-wide/from16 v0, v37

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    .line 564
    move-wide/from16 v0, v89

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    .line 565
    move-wide/from16 v0, v93

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    .line 566
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_1d

    .line 567
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_1a

    .line 583
    move-object/from16 v41, v4

    .line 586
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_1a
    const-wide/16 v5, 0x0

    cmpl-double v5, v44, v5

    if-nez v5, :cond_1b

    if-eqz p1, :cond_1c

    .line 587
    :cond_1b
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_21

    .line 588
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    .line 405
    :cond_1c
    :goto_9
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 568
    .restart local v4       #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_1d
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_1e

    .line 569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 570
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

    .line 572
    const/16 v30, 0x1

    .line 573
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v73

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/List;

    .line 574
    .local v32, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    if-nez v32, :cond_1f

    .line 575
    new-instance v32, Ljava/util/ArrayList;

    .end local v32           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .restart local v32       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v73

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    :cond_1f
    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 580
    .end local v32           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 589
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_21
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_22

    .line 590
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_9

    .line 591
    :cond_22
    if-eqz v30, :cond_24

    .line 592
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v73

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/Double;

    .line 593
    .local v74, userPower:Ljava/lang/Double;
    if-nez v74, :cond_23

    .line 594
    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v74

    .line 598
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v73

    move-object/from16 v1, v74

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 596
    :cond_23
    invoke-virtual/range {v74 .. v74}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v44

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v74

    goto :goto_a

    .line 600
    .end local v74           #userPower:Ljava/lang/Double;
    :cond_24
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v5, v44, v5

    if-lez v5, :cond_25

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 601
    :cond_25
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    goto/16 :goto_9

    .line 609
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v16           #cpuFgTime:J
    .end local v19           #cpuTime:J
    .end local v24           #gpsTime:J
    .end local v26           #highestDrain:D
    .end local v30           #isOtherUser:Z
    .end local v35           #mobileRx:J
    .end local v37           #mobileTx:J
    .end local v42           #p:D
    .end local v44           #power:D
    .end local v49           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v59           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v73           #userId:I
    .end local v81           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v82           #wakelockTime:J
    .end local v87           #wifiRunningTimeMs:J
    .end local v89           #wifiRx:J
    .end local v91           #wifiScanTimeMs:J
    .end local v93           #wifiTx:J
    :cond_26
    if-eqz v41, :cond_29

    .line 610
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

    .line 612
    .local v77, wakeTimeMillis:J
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

    .line 614
    const-wide/16 v5, 0x0

    cmp-long v5, v77, v5

    if-lez v5, :cond_29

    .line 615
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

    .line 617
    .restart local v44       #power:D
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

    .line 618
    :cond_27
    move-object/from16 v0, v41

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v77

    move-object/from16 v0, v41

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 619
    move-object/from16 v0, v41

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v44

    move-object/from16 v0, v41

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 620
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v44

    aput-wide v9, v5, v6

    .line 621
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

    .line 622
    :cond_28
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double v5, v5, v44

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    .line 625
    .end local v44           #power:D
    .end local v77           #wakeTimeMillis:J
    :cond_29
    return-void

    .line 526
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 875
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    .line 876
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long v4, v7, v10

    .line 877
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 878
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 879
    .local v0, timeSinceUnplugged:J
    sget-boolean v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 880
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

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addUserUsage()V

    .line 884
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addPhoneUsage(J)V

    .line 885
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addScreenUsage(J)V

    .line 886
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addWiFiUsage(J)V

    .line 887
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addBluetoothUsage(J)V

    .line 888
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addIdleUsage(J)V

    .line 890
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 891
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addRadioUsage(J)V

    .line 893
    :cond_1
    return-void
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 146
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    .line 160
    if-eqz p1, :cond_0

    .line 161
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 163
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 165
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    .line 166
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 168
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "power_show_debug_log"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    .line 170
    return-void

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getMaxPower()D
    .locals 2

    .prologue
    .line 915
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->load()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getTotalPower()D
    .locals 2

    .prologue
    .line 919
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

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->abort()V

    .line 176
    :cond_0
    return-void
.end method

.method public refreshStats(Z)V
    .locals 3
    .parameter "includeZeroConsumption"

    .prologue
    const-wide/16 v0, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    .line 353
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 354
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    .line 355
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    .line 356
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    .line 357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    .line 359
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 363
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 365
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->processAppUsage(Z)V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->processMiscUsage()V

    .line 368
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 371
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->abort()V

    .line 376
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;-><init>(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    .line 377
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->setPriority(I)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->start()V

    .line 379
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 381
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_2
    sget-boolean v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->dumpAppUsage(Z)V

    .line 385
    :cond_3
    return-void

    .line 381
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
    .parameter "caller"
    .parameter "sipper"
    .parameter "showLocationButton"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "title"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
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

    .line 195
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

    .line 197
    const-string v7, "duration"

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    const-string v7, "iconPackage"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v7, "iconId"

    iget v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v7, "noCoverage"

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 201
    iget-object v7, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v7, :cond_0

    .line 202
    const-string v7, "uid"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_0
    const-string v7, "drainType"

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v7, "showLocationButton"

    invoke-virtual {v0, v7, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    sget-object v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper$1;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 322
    const/4 v7, 0x1

    new-array v4, v7, [I

    const/4 v7, 0x0

    const v8, 0x7f0c10d9

    aput v8, v4, v7

    .line 325
    .local v4, types:[I
    const/4 v7, 0x1

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    .line 331
    .local v6, values:[D
    :cond_1
    :goto_0
    const-string v7, "types"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 332
    const-string v7, "values"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 336
    sget-boolean v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v8, "startBatteryDetailPage"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "com.htc.htcpowermanager"

    const-string v8, "com.htc.htcpowermanager.battery.PowerUsageDetailActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const/high16 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void

    .line 218
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #types:[I
    .end local v6           #values:[D
    :pswitch_0
    iget-object v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 219
    .local v5, uid:Landroid/os/BatteryStats$Uid;
    const/16 v7, 0xb

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    .line 232
    .restart local v4       #types:[I
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

    .line 246
    .restart local v6       #values:[D
    iget-object v7, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v8, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v7, v8, :cond_1

    .line 247
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 248
    .local v3, result:Ljava/io/Writer;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 249
    .local v2, printWriter:Ljava/io/PrintWriter;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v8, ""

    iget v9, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 250
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 251
    const-string v7, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v3, Ljava/io/StringWriter;

    .end local v3           #result:Ljava/io/Writer;
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 254
    .restart local v3       #result:Ljava/io/Writer;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    .end local v2           #printWriter:Ljava/io/PrintWriter;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 255
    .restart local v2       #printWriter:Ljava/io/PrintWriter;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 256
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 257
    const-string v7, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v2           #printWriter:Ljava/io/PrintWriter;
    .end local v3           #result:Ljava/io/Writer;
    .end local v4           #types:[I
    .end local v5           #uid:Landroid/os/BatteryStats$Uid;
    .end local v6           #values:[D
    :pswitch_1
    const/4 v7, 0x2

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    .line 268
    .restart local v4       #types:[I
    const/4 v7, 0x2

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p2, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v8, v6, v7

    .line 273
    .restart local v6       #values:[D
    goto/16 :goto_0

    .line 276
    .end local v4           #types:[I
    .end local v6           #values:[D
    :pswitch_2
    const/16 v7, 0x8

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    .line 286
    .restart local v4       #types:[I
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

    .line 296
    .restart local v6       #values:[D
    goto/16 :goto_0

    .line 299
    .end local v4           #types:[I
    .end local v6           #values:[D
    :pswitch_3
    const/16 v7, 0x8

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    .line 309
    .restart local v4       #types:[I
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

    .line 319
    .restart local v6       #values:[D
    goto/16 :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 219
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

    .line 264
    :array_1
    .array-data 0x4
        0xd9t 0x10t 0xct 0x7ft
        0xdat 0x10t 0xct 0x7ft
    .end array-data

    .line 276
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

    .line 299
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

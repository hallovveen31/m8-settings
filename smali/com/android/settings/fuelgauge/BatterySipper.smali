.class public Lcom/android/settings/fuelgauge/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatterySipper"

.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field gpsTime:J

.field icon:Landroid/graphics/drawable/Drawable;

.field iconId:I

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mPackages:[Ljava/lang/String;

.field final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mobileRxBytes:J

.field mobileTxBytes:J

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field percent:D

.field processName:Ljava/lang/String;

.field uidObj:Landroid/os/BatteryStats$Uid;

.field usageTime:J

.field value:D

.field values:[D

.field wakeLockTime:J

.field wifiRunningTime:J

.field wifiRxBytes:J

.field wifiTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "handler"
    .parameter "label"
    .parameter "drainType"
    .parameter "iconId"
    .parameter "uid"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;",
            "I",
            "Landroid/os/BatteryStats$Uid;",
            "[D)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, requestQueue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    .line 82
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p8, p0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    .line 84
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 86
    if-lez p6, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 89
    :cond_0
    if-eqz p8, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p8, v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 90
    :cond_1
    if-eqz p4, :cond_2

    if-nez p6, :cond_3

    :cond_2
    if-eqz p7, :cond_3

    .line 91
    invoke-virtual {p0, p7}, Lcom/android/settings/fuelgauge/BatterySipper;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 93
    :cond_3
    iput-object p7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 94
    return-void
.end method

.method public static clearUidCache()V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Lcom/android/settings/fuelgauge/BatterySipper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .locals 6
    .parameter "uidObj"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    .line 138
    .local v2, uid:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, uidString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 148
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, packages:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 150
    if-nez v0, :cond_3

    .line 152
    if-nez v2, :cond_1

    .line 153
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c10f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 159
    :goto_0
    const v4, 0x7f0200a0

    iput v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 160
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_0
    :goto_1
    return-void

    .line 154
    :cond_1
    const-string v4, "mediaserver"

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c10f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_3
    array-length v4, v0

    if-lez v4, :cond_4

    .line 163
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 167
    :goto_2
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 168
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 169
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 165
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method getSortValue()D
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    goto :goto_0
.end method

.method getValues()[D
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    return-object v0
.end method

.method public loadNameAndIcon()V
    .locals 22

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 188
    .local v15, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v16

    .line 190
    .local v16, uid:I
    const/4 v5, 0x0

    .line 191
    .local v5, appLabelString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 194
    .local v4, appIconDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 196
    .local v13, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 198
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->processName:Ljava/lang/String;

    .line 200
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, includedPackages:[Ljava/lang/String;
    if-nez v8, :cond_3

    .line 202
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 276
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 277
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, uidString:Ljava/lang/String;
    new-instance v18, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;

    invoke-direct/range {v18 .. v18}, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;-><init>()V

    .line 280
    .local v18, utd:Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    .line 281
    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 282
    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    .line 283
    sget-object v19, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 206
    .end local v17           #uidString:Ljava/lang/String;
    .end local v18           #utd:Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, nameSplitStr:[Ljava/lang/String;
    if-eqz v10, :cond_a

    const/16 v19, 0x0

    aget-object v13, v10, v19

    .line 211
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 212
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_4

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): includedPackages["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v8, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_4
    :try_start_0
    aget-object v19, v8, v7

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 216
    .local v14, pi:Landroid/content/pm/PackageInfo;
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 217
    aget-object v19, v8, v7

    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v20, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 218
    .local v11, nm:Ljava/lang/CharSequence;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 219
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 220
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_5

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): sharedUserLabel found. icon = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_5
    if-eqz v11, :cond_b

    .line 223
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_6

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): sharedUserLabel found. label = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v11           #nm:Ljava/lang/CharSequence;
    .end local v14           #pi:Landroid/content/pm/PackageInfo;
    :cond_6
    if-nez v5, :cond_8

    .line 254
    const/16 v19, 0x0

    :try_start_1
    aget-object v19, v8, v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 255
    .local v3, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 256
    .local v9, label:Ljava/lang/CharSequence;
    if-eqz v9, :cond_7

    .line 257
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_7

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): == fall-back == label: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_7
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 261
    invoke-virtual {v3, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 262
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_8

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): == fall-back == icon = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 270
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v9           #label:Ljava/lang/CharSequence;
    :cond_8
    :goto_4
    if-nez v5, :cond_9

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->processName:Ljava/lang/String;

    .line 272
    :cond_9
    if-nez v4, :cond_2

    .line 273
    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_1

    .line 208
    .end local v7           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatterySipper;->processName:Ljava/lang/String;

    goto/16 :goto_2

    .line 228
    .restart local v7       #i:I
    :catch_0
    move-exception v19

    .line 229
    :cond_b
    aget-object v19, v8, v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 211
    :cond_c
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 233
    :cond_d
    :try_start_2
    aget-object v19, v8, v7

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 234
    .restart local v3       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 235
    .restart local v9       #label:Ljava/lang/CharSequence;
    if-eqz v9, :cond_e

    .line 236
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_e

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): loadLabel: label = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_e
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 240
    invoke-virtual {v3, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 241
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_c

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): ai.icon = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 244
    .end local v3           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v9           #label:Ljava/lang/CharSequence;
    :catch_1
    move-exception v6

    .line 245
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_c

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): NameNotFoundException includedPackages["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v8, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 264
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v6

    .line 265
    .restart local v6       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v19, Lcom/android/settings/fuelgauge/BatterySipper;->LOG_DEBUG:Z

    if-eqz v19, :cond_8

    const-string v19, "BatterySipper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadNameAndIcon(): NameNotFoundException == fall-back == includedPackages[0] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v8, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

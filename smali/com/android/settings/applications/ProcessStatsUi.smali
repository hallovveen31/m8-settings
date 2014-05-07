.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "ProcessStatsUi.java"

# interfaces
.implements Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I = null

.field public static final CACHED_PROC_STATES:[I = null

.field static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DURATION_QUANTUM:J = 0x0L

.field public static final FOREGROUND_PROC_STATES:[I = null

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_MEM_STATUS:Ljava/lang/String; = "mem_status"

.field static final MAX_ITEMS_TO_LIST:I = 0x3c

.field private static final MENU_DURATION:I = 0x2

.field private static final MENU_HELP:I = 0xb

.field private static final MENU_SHOW_SYSTEM:I = 0x6

.field private static final MENU_STATS_REFRESH:I = 0x1

.field private static final MENU_TYPE_BACKGROUND:I = 0x8

.field private static final MENU_TYPE_CACHED:I = 0xa

.field private static final MENU_TYPE_FOREGROUND:I = 0x9

.field private static final MENU_USE_USS:I = 0x7

.field private static final NUM_DURATIONS:I = 0x4

.field public static final RED_MEM_STATES:[I = null

.field static final TAG:Ljava/lang/String; = "ProcessStatsUi"

.field public static final YELLOW_MEM_STATES:[I

.field private static sDurationLabels:[I

.field private static sDurations:[J

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/ProcessStats;


# instance fields
.field private mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field private mDuration:J

.field private mDurationMenus:[Landroid/view/MenuItem;

.field private mLastDuration:J

.field mMaxWeight:J

.field private mMemRegion:I

.field mMemState:I

.field private mMemStatusPref:Lcom/htc/preference/HtcPreference;

.field mProcessStats:Lcom/android/internal/app/IProcessStats;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;

.field mStats:Lcom/android/internal/app/ProcessStats;

.field private mStatsType:I

.field mTotalTime:J

.field private mTypeBackgroundMenu:Landroid/view/MenuItem;

.field private mTypeCachedMenu:Landroid/view/MenuItem;

.field private mTypeForegroundMenu:Landroid/view/MenuItem;

.field mUm:Landroid/os/UserManager;

.field private mUseUss:Z

.field private mUseUssMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 73
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    .line 121
    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    .line 122
    new-array v0, v11, [J

    const-wide/32 v1, 0xa4cb80

    sget-wide v3, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v3, v8

    sub-long/2addr v1, v3

    aput-wide v1, v0, v10

    const-wide/32 v1, 0x1499700

    sget-wide v3, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v3, v8

    sub-long/2addr v1, v3

    aput-wide v1, v0, v6

    const/4 v1, 0x2

    const-wide/32 v2, 0x2932e00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const-wide/32 v1, 0x5265c00

    sget-wide v3, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v3, v8

    sub-long/2addr v1, v3

    aput-wide v1, v0, v7

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    .line 126
    new-array v0, v11, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    .line 325
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 332
    new-array v0, v6, [I

    aput v6, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 336
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 341
    new-array v0, v6, [I

    aput v7, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    .line 345
    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    return-void

    .line 126
    nop

    :array_0
    .array-data 0x4
        0x4t 0x11t 0xct 0x7ft
        0x5t 0x11t 0xct 0x7ft
        0x6t 0x11t 0xct 0x7ft
        0x7t 0x11t 0xct 0x7ft
    .end array-data

    .line 325
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 336
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 345
    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, notAvailable:Lcom/htc/preference/HtcPreference;
    const v1, 0x7f0c10b1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 323
    return-void
.end method

.method private load()V
    .locals 6

    .prologue
    .line 599
    :try_start_0
    iget-wide v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iput-wide v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    .line 600
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    invoke-interface {v3}, Lcom/android/internal/app/IProcessStats;->getCurrentMemoryState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    .line 601
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 602
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 603
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 604
    .local v1, is:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 609
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 610
    const-string v3, "ProcessStatsUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading process stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v5, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 615
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ProcessStatsUi"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 607
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private makeDuration(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 352
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshStats()V
    .locals 56

    .prologue
    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    .line 359
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    cmp-long v7, v9, v15

    if-eqz v7, :cond_1

    .line 360
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->load()V

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0x9

    if-ne v7, v9, :cond_2

    .line 366
    sget-object v53, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    .line 367
    .local v53, stats:[I
    const v54, 0x7f0c10fc

    .line 377
    .local v54, statsLabel:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 378
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    const/4 v9, -0x2

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v9, v9, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v15, v13, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v9, v15

    long-to-double v9, v9

    const/4 v13, 0x0

    invoke-static {v7, v9, v10, v13}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v23

    .line 385
    .local v23, durationString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f080062

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v37

    .line 386
    .local v37, memStatesStr:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    if-ltz v7, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    move-object/from16 v0, v37

    array-length v9, v0

    if-ge v7, v9, :cond_5

    .line 387
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    aget-object v38, v37, v7

    .line 391
    .local v38, memString:Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c10fa

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x1

    aput-object v23, v13, v15

    invoke-virtual {v9, v10, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c10fe

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v38, v13, v15

    invoke-virtual {v9, v10, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 408
    .local v11, now:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 410
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v8, v9, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v9, v9, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    invoke-static/range {v5 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v9

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    .line 414
    const/4 v7, 0x4

    new-array v0, v7, [J

    move-object/from16 v39, v0

    .line 415
    .local v39, memTimes:[J
    const/16 v32, 0x0

    .local v32, iscreen:I
    :goto_2
    const/16 v7, 0x8

    move/from16 v0, v32

    if-ge v0, v7, :cond_7

    .line 416
    const/16 v27, 0x0

    .local v27, imem:I
    :goto_3
    const/4 v7, 0x4

    move/from16 v0, v27

    if-ge v0, v7, :cond_6

    .line 417
    add-int v52, v27, v32

    .line 418
    .local v52, state:I
    aget-wide v9, v39, v27

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v15, v7, v52

    add-long/2addr v9, v15

    aput-wide v9, v39, v27

    .line 416
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 368
    .end local v11           #now:J
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v23           #durationString:Ljava/lang/String;
    .end local v27           #imem:I
    .end local v32           #iscreen:I
    .end local v37           #memStatesStr:[Ljava/lang/CharSequence;
    .end local v38           #memString:Ljava/lang/CharSequence;
    .end local v39           #memTimes:[J
    .end local v52           #state:I
    .end local v53           #stats:[I
    .end local v54           #statsLabel:I
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_3

    .line 369
    sget-object v53, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    .line 370
    .restart local v53       #stats:[I
    const v54, 0x7f0c10fd

    .restart local v54       #statsLabel:I
    goto/16 :goto_0

    .line 372
    .end local v53           #stats:[I
    .end local v54           #statsLabel:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz v7, :cond_4

    sget-object v53, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    .line 374
    .restart local v53       #stats:[I
    :goto_4
    const v54, 0x7f0c10fb

    .restart local v54       #statsLabel:I
    goto/16 :goto_0

    .line 372
    .end local v53           #stats:[I
    .end local v54           #statsLabel:I
    :cond_4
    sget-object v53, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    goto :goto_4

    .line 389
    .restart local v23       #durationString:Ljava/lang/String;
    .restart local v37       #memStatesStr:[Ljava/lang/CharSequence;
    .restart local v53       #stats:[I
    .restart local v54       #statsLabel:I
    :cond_5
    const-string v38, "?"

    .restart local v38       #memString:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 415
    .restart local v11       #now:J
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    .restart local v27       #imem:I
    .restart local v32       #iscreen:I
    .restart local v39       #memTimes:[J
    :cond_6
    add-int/lit8 v32, v32, 0x4

    goto :goto_2

    .line 425
    .end local v27           #imem:I
    :cond_7
    new-instance v22, Lcom/android/settings/applications/LinearColorPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;-><init>(Landroid/content/Context;)V

    .line 426
    .local v22, colors:Lcom/android/settings/applications/LinearColorPreference;
    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;->setOrder(I)V

    .line 429
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    packed-switch v7, :pswitch_data_0

    .line 444
    const/4 v7, 0x7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    .line 445
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    move-wide/from16 v40, v0

    .line 446
    .local v40, memTotalTime:J
    sget-object v36, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 449
    .local v36, memStates:[I
    :goto_5
    const/4 v7, 0x3

    aget-wide v9, v39, v7

    long-to-float v7, v9

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v9, v9

    div-float/2addr v7, v9

    const/4 v9, 0x2

    aget-wide v9, v39, v9

    const/4 v13, 0x1

    aget-wide v15, v39, v13

    add-long/2addr v9, v15

    long-to-float v9, v9

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v10, v15

    div-float/2addr v9, v10

    const/4 v10, 0x0

    aget-wide v15, v39, v10

    long-to-float v10, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v13, v15

    div-float/2addr v10, v13

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v9, v10}, Lcom/android/settings/applications/LinearColorPreference;->setRatios(FFF)V

    .line 453
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 455
    new-instance v8, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    invoke-direct {v8, v7, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 458
    .local v8, totals:Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v24, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    new-instance v25, Lcom/android/internal/app/ProcessMap;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 472
    .local v25, entriesMap:Lcom/android/internal/app/ProcessMap;,"Lcom/android/internal/app/ProcessMap<Lcom/android/settings/applications/ProcStatsEntry;>;"
    const/16 v29, 0x0

    .local v29, ipkg:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v20

    .local v20, N:I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 473
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SparseArray;

    .line 475
    .local v47, pkgUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    .local v33, iu:I
    :goto_7
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    move-result v7

    move/from16 v0, v33

    if-ge v0, v7, :cond_d

    .line 476
    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 477
    .local v51, st:Lcom/android/internal/app/ProcessStats$PackageState;
    const/16 v30, 0x0

    .local v30, iproc:I
    :goto_8
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move/from16 v0, v30

    if-ge v0, v7, :cond_c

    .line 478
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 479
    .local v46, pkgProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v46

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 481
    .local v6, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v6, :cond_9

    .line 482
    const-string v7, "ProcessStatsUi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No process found for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v51

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v51

    iget v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " proc name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_8
    :goto_9
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 431
    .end local v6           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8           #totals:Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .end local v20           #N:I
    .end local v24           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .end local v25           #entriesMap:Lcom/android/internal/app/ProcessMap;,"Lcom/android/internal/app/ProcessMap<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .end local v29           #ipkg:I
    .end local v30           #iproc:I
    .end local v33           #iu:I
    .end local v36           #memStates:[I
    .end local v40           #memTotalTime:J
    .end local v46           #pkgProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v47           #pkgUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    .end local v51           #st:Lcom/android/internal/app/ProcessStats$PackageState;
    :pswitch_0
    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    .line 432
    const/4 v7, 0x3

    aget-wide v40, v39, v7

    .line 433
    .restart local v40       #memTotalTime:J
    sget-object v36, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    .line 434
    .restart local v36       #memStates:[I
    goto/16 :goto_5

    .line 436
    .end local v36           #memStates:[I
    .end local v40           #memTotalTime:J
    :pswitch_1
    const/4 v7, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    .line 438
    const/4 v7, 0x3

    aget-wide v9, v39, v7

    const/4 v7, 0x2

    aget-wide v15, v39, v7

    add-long/2addr v9, v15

    const/4 v7, 0x1

    aget-wide v15, v39, v7

    add-long v40, v9, v15

    .line 441
    .restart local v40       #memTotalTime:J
    sget-object v36, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    .line 442
    .restart local v36       #memStates:[I
    goto/16 :goto_5

    .line 486
    .restart local v6       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v8       #totals:Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .restart local v20       #N:I
    .restart local v24       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .restart local v25       #entriesMap:Lcom/android/internal/app/ProcessMap;,"Lcom/android/internal/app/ProcessMap<Lcom/android/settings/applications/ProcStatsEntry;>;"
    .restart local v29       #ipkg:I
    .restart local v30       #iproc:I
    .restart local v33       #iu:I
    .restart local v46       #pkgProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v47       #pkgUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    .restart local v51       #st:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_9
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    .line 487
    .local v5, ent:Lcom/android/settings/applications/ProcStatsEntry;
    if-nez v5, :cond_b

    .line 488
    new-instance v5, Lcom/android/settings/applications/ProcStatsEntry;

    .end local v5           #ent:Lcom/android/settings/applications/ProcStatsEntry;
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v13, 0x8

    if-ne v10, v13, :cond_a

    const/4 v10, 0x1

    :goto_a
    invoke-direct/range {v5 .. v10}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;ZZ)V

    .line 490
    .restart local v5       #ent:Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v9, v5, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    const-wide/16 v15, 0x0

    cmp-long v7, v9, v15

    if-lez v7, :cond_8

    .line 495
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v9, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 496
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 488
    .end local v5           #ent:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_a
    const/4 v10, 0x0

    goto :goto_a

    .line 499
    .restart local v5       #ent:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_b
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_9

    .line 475
    .end local v5           #ent:Lcom/android/settings/applications/ProcStatsEntry;
    .end local v6           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v46           #pkgProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_c
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_7

    .line 472
    .end local v30           #iproc:I
    .end local v51           #st:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    .line 508
    .end local v33           #iu:I
    .end local v47           #pkgUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0x8

    if-ne v7, v9, :cond_13

    .line 509
    const/16 v28, 0x0

    .local v28, ip:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v20

    :goto_b
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    .line 510
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/SparseArray;

    .line 511
    .local v55, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    .restart local v33       #iu:I
    :goto_c
    invoke-virtual/range {v55 .. v55}, Landroid/util/SparseArray;->size()I

    move-result v7

    move/from16 v0, v33

    if-ge v0, v7, :cond_12

    .line 512
    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 513
    .local v49, ps:Lcom/android/internal/app/ProcessStats$PackageState;
    const/16 v31, 0x0

    .local v31, is:I
    move-object/from16 v0, v49

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v21

    .local v21, NS:I
    :goto_d
    move/from16 v0, v31

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    .line 514
    move-object/from16 v0, v49

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 515
    .local v50, ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v50

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 516
    move-object/from16 v0, v50

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    .line 517
    .restart local v5       #ent:Lcom/android/settings/applications/ProcStatsEntry;
    if-eqz v5, :cond_10

    .line 521
    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 513
    .end local v5           #ent:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_f
    :goto_e
    add-int/lit8 v31, v31, 0x1

    goto :goto_d

    .line 523
    .restart local v5       #ent:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_10
    const-string v7, "ProcessStatsUi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No process "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v50

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 511
    .end local v5           #ent:Lcom/android/settings/applications/ProcStatsEntry;
    .end local v50           #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_11
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_c

    .line 509
    .end local v21           #NS:I
    .end local v31           #is:I
    .end local v49           #ps:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_12
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_b

    .line 557
    .end local v28           #ip:I
    .end local v33           #iu:I
    .end local v55           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_13
    sget-object v7, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 559
    const-wide/16 v34, 0x1

    .line 560
    .local v34, maxWeight:J
    const/16 v26, 0x0

    .local v26, i:I
    if-eqz v24, :cond_15

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v20

    :goto_f
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 561
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    .line 562
    .local v6, proc:Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v9, v6, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v7, v34, v9

    if-gez v7, :cond_14

    .line 563
    iget-wide v0, v6, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    move-wide/from16 v34, v0

    .line 560
    :cond_14
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .end local v6           #proc:Lcom/android/settings/applications/ProcStatsEntry;
    :cond_15
    const/16 v20, 0x0

    goto :goto_f

    .line 566
    :cond_16
    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    .line 570
    const/16 v26, 0x0

    if-eqz v24, :cond_18

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v20

    :goto_10
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    .line 571
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    .line 572
    .restart local v6       #proc:Lcom/android/settings/applications/ProcStatsEntry;
    iget-wide v9, v6, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v9, v9

    move-wide/from16 v0, v34

    long-to-double v15, v0

    div-double/2addr v9, v15

    const-wide/high16 v15, 0x4059

    mul-double v44, v9, v15

    .line 573
    .local v44, percentOfWeight:D
    iget-wide v9, v6, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v9, v9

    move-wide/from16 v0, v40

    long-to-double v15, v0

    div-double/2addr v9, v15

    const-wide/high16 v15, 0x4059

    mul-double v42, v9, v15

    .line 574
    .local v42, percentOfTime:D
    const-wide/high16 v9, 0x3ff0

    cmpg-double v7, v44, v9

    if-gez v7, :cond_19

    const-wide v9, 0x4040800000000000L

    cmpg-double v7, v42, v9

    if-gez v7, :cond_19

    .line 570
    :cond_17
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .end local v6           #proc:Lcom/android/settings/applications/ProcStatsEntry;
    .end local v42           #percentOfTime:D
    .end local v44           #percentOfWeight:D
    :cond_18
    const/16 v20, 0x0

    goto :goto_10

    .line 579
    .restart local v6       #proc:Lcom/android/settings/applications/ProcStatsEntry;
    .restart local v42       #percentOfTime:D
    .restart local v44       #percentOfWeight:D
    :cond_19
    new-instance v48, Lcom/android/settings/applications/HtcProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v0, v48

    invoke-direct {v0, v7, v9, v6}, Lcom/android/settings/applications/HtcProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 580
    .local v48, pref:Lcom/android/settings/applications/HtcProcessStatsPreference;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v17, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0x8

    if-ne v7, v9, :cond_1c

    const/16 v19, 0x1

    :goto_11
    move-object v13, v6

    move-object/from16 v16, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;ZZ)V

    .line 582
    invoke-virtual {v6, v14}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    .line 583
    iget-object v7, v6, Lcom/android/settings/applications/ProcStatsEntry;->mUiLabel:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v7, v6, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_1a

    .line 585
    iget-object v7, v6, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 587
    :cond_1a
    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setOrder(I)V

    .line 588
    move-object/from16 v0, v48

    move-wide/from16 v1, v44

    move-wide/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setPercent(DD)V

    .line 589
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v7

    const/16 v9, 0x3d

    if-le v7, v9, :cond_17

    .line 595
    .end local v6           #proc:Lcom/android/settings/applications/ProcStatsEntry;
    .end local v42           #percentOfTime:D
    .end local v44           #percentOfWeight:D
    .end local v48           #pref:Lcom/android/settings/applications/HtcProcessStatsPreference;
    :cond_1b
    return-void

    .line 580
    .restart local v6       #proc:Lcom/android/settings/applications/ProcStatsEntry;
    .restart local v42       #percentOfTime:D
    .restart local v44       #percentOfWeight:D
    .restart local v48       #pref:Lcom/android/settings/applications/HtcProcessStatsPreference;
    :cond_1c
    const/16 v19, 0x0

    goto :goto_11

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    const-class v0, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 624
    const v0, 0x7f0c1029

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 139
    :cond_0
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 140
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUm:Landroid/os/UserManager;

    .line 143
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    const-string v1, "mem_status"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    .line 145
    if-eqz p1, :cond_2

    const-string v0, "duration"

    sget-object v1, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v5, v1, v2

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 146
    if-eqz p1, :cond_3

    const-string v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    .line 147
    if-eqz p1, :cond_1

    const-string v0, "use_uss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    .line 148
    if-eqz p1, :cond_4

    const-string v0, "stats_type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    .line 150
    if-eqz p1, :cond_5

    const-string v0, "mem_region"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    .line 153
    return-void

    .line 145
    :cond_2
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v0, v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 146
    goto :goto_1

    :cond_4
    move v0, v3

    .line 148
    goto :goto_2

    :cond_5
    move v0, v4

    .line 150
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    const v3, 0x7f0c10f4

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 211
    .local v1, refresh:Landroid/view/MenuItem;
    const v3, 0x7f0c1103

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 212
    .local v2, subMenu:Landroid/view/SubMenu;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    aget v5, v5, v0

    invoke-interface {v2, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v3, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    const/4 v3, 0x6

    const v4, 0x7f0c1108

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x73

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    .line 219
    const/4 v3, 0x7

    const v4, 0x7f0c1109

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x75

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    .line 222
    const v3, 0x7f0c110a

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    .line 223
    const/16 v3, 0x8

    const v4, 0x7f0c110b

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x62

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    .line 227
    const/16 v3, 0x9

    const v4, 0x7f0c110c

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x66

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    .line 231
    const/16 v3, 0xa

    const v4, 0x7f0c110d

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    .line 244
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    .line 182
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 283
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 303
    :pswitch_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 304
    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    add-int/lit8 v3, v0, -0x2

    aget-wide v2, v2, v3

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 305
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    :cond_0
    move v2, v1

    .line 307
    :goto_0
    return v2

    .line 285
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 286
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    .line 290
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 293
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    .line 294
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 299
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    .line 300
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 164
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 186
    instance-of v0, p2, Lcom/android/settings/applications/HtcProcessStatsPreference;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return v6

    :cond_0
    move-object v7, p2

    .line 190
    check-cast v7, Lcom/android/settings/applications/HtcProcessStatsPreference;

    .line 191
    .local v7, pgp:Lcom/android/settings/applications/HtcProcessStatsPreference;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "entry"

    invoke-virtual {v7}, Lcom/android/settings/applications/HtcProcessStatsPreference;->getEntry()Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v0, "max_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    const-class v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c10c3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onRegionTapped(I)V
    .locals 1
    .parameter "region"

    .prologue
    .line 313
    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    .line 315
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    .line 317
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    .line 159
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    const-string v0, "duration"

    iget-wide v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string v0, "stats_type"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v0, "mem_region"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method updateMenus()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, closestIndex:I
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v8

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 249
    .local v0, closestDelta:J
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    if-ge v5, v13, :cond_1

    .line 250
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v5

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 251
    .local v3, delta:J
    cmp-long v6, v3, v0

    if-gez v6, :cond_0

    .line 252
    move-wide v0, v3

    .line 253
    move v2, v5

    .line 249
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 256
    .end local v3           #delta:J
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_4

    .line 257
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 258
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v9, v6, v5

    if-ne v5, v2, :cond_3

    move v6, v7

    :goto_2
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 256
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v6, v8

    .line 258
    goto :goto_2

    .line 261
    :cond_4
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v2

    iput-wide v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 262
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_5

    .line 263
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 264
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-ne v6, v14, :cond_a

    move v6, v7

    :goto_3
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 266
    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_6

    .line 267
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 269
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_7

    .line 270
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-ne v6, v14, :cond_b

    move v6, v7

    :goto_4
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 272
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_8

    .line 273
    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x9

    if-ne v6, v10, :cond_c

    move v6, v7

    :goto_5
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 275
    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_9

    .line 276
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    iget v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_d

    :goto_6
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 278
    :cond_9
    return-void

    :cond_a
    move v6, v8

    .line 264
    goto :goto_3

    :cond_b
    move v6, v8

    .line 270
    goto :goto_4

    :cond_c
    move v6, v8

    .line 273
    goto :goto_5

    :cond_d
    move v7, v8

    .line 276
    goto :goto_6
.end method

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

    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

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

    new-array v0, v11, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    new-array v0, v6, [I

    aput v6, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    new-array v0, v6, [I

    aput v7, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4t 0x11t 0xct 0x7ft
        0x5t 0x11t 0xct 0x7ft
        0x6t 0x11t 0xct 0x7ft
        0x7t 0x11t 0xct 0x7ft
    .end array-data

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

    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c10b1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    return-void
.end method

.method private load()V
    .locals 6

    :try_start_0
    iget-wide v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iput-wide v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    invoke-interface {v3}, Lcom/android/internal/app/IProcessStats;->getCurrentMemoryState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

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

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "ProcessStatsUi"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private makeDuration(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private refreshStats()V
    .locals 56

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    cmp-long v7, v9, v15

    if-eqz v7, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->load()V

    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0x9

    if-ne v7, v9, :cond_2

    sget-object v53, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    const v54, 0x7f0c10fc

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->setOrderingAsAdded(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    const/4 v9, -0x2

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f080062

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    if-ltz v7, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    move-object/from16 v0, v37

    array-length v9, v0

    if-ge v7, v9, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    aget-object v38, v37, v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c10fa

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x1

    aput-object v23, v13, v15

    invoke-virtual {v9, v10, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c10fe

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v38, v13, v15

    invoke-virtual {v9, v10, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

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

    const/4 v7, 0x4

    new-array v0, v7, [J

    move-object/from16 v39, v0

    const/16 v32, 0x0

    :goto_2
    const/16 v7, 0x8

    move/from16 v0, v32

    if-ge v0, v7, :cond_7

    const/16 v27, 0x0

    :goto_3
    const/4 v7, 0x4

    move/from16 v0, v27

    if-ge v0, v7, :cond_6

    add-int v52, v27, v32

    aget-wide v9, v39, v27

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v15, v7, v52

    add-long/2addr v9, v15

    aput-wide v9, v39, v27

    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_3

    sget-object v53, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    const v54, 0x7f0c10fd

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz v7, :cond_4

    sget-object v53, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    :goto_4
    const v54, 0x7f0c10fb

    goto/16 :goto_0

    :cond_4
    sget-object v53, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    goto :goto_4

    :cond_5
    const-string v38, "?"

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v32, v32, 0x4

    goto :goto_2

    :cond_7
    new-instance v22, Lcom/android/settings/applications/LinearColorPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;-><init>(Landroid/content/Context;)V

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    move-wide/from16 v40, v0

    sget-object v36, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

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

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v8, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    invoke-direct {v8, v7, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Lcom/android/internal/app/ProcessMap;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v20

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SparseArray;

    const/16 v33, 0x0

    :goto_7
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    move-result v7

    move/from16 v0, v33

    if-ge v0, v7, :cond_d

    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/internal/app/ProcessStats$PackageState;

    const/16 v30, 0x0

    :goto_8
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move/from16 v0, v30

    if-ge v0, v7, :cond_c

    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v46

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, v46

    iget v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    if-nez v6, :cond_9

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

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_9
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    :pswitch_0
    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    const/4 v7, 0x3

    aget-wide v40, v39, v7

    sget-object v36, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    goto/16 :goto_5

    :pswitch_1
    const/4 v7, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    const/4 v7, 0x3

    aget-wide v9, v39, v7

    const/4 v7, 0x2

    aget-wide v15, v39, v7

    add-long/2addr v9, v15

    const/4 v7, 0x1

    aget-wide v15, v39, v7

    add-long v40, v9, v15

    sget-object v36, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    goto/16 :goto_5

    :cond_9
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    if-nez v5, :cond_b

    new-instance v5, Lcom/android/settings/applications/ProcStatsEntry;

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

    iget-wide v9, v5, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    const-wide/16 v15, 0x0

    cmp-long v7, v9, v15

    if-lez v7, :cond_8

    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    iget v9, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v9, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    goto :goto_a

    :cond_b
    move-object/from16 v0, v51

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v9, 0x8

    if-ne v7, v9, :cond_13

    const/16 v28, 0x0

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

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/SparseArray;

    const/16 v33, 0x0

    :goto_c
    invoke-virtual/range {v55 .. v55}, Landroid/util/SparseArray;->size()I

    move-result v7

    move/from16 v0, v33

    if-ge v0, v7, :cond_12

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/internal/app/ProcessStats$PackageState;

    const/16 v31, 0x0

    move-object/from16 v0, v49

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v21

    :goto_d
    move/from16 v0, v31

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    move-object/from16 v0, v49

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v50

    iget-object v7, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v7, :cond_f

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

    if-eqz v5, :cond_10

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    :cond_f
    :goto_e
    add-int/lit8 v31, v31, 0x1

    goto :goto_d

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

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_11
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_c

    :cond_12
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_b

    :cond_13
    sget-object v7, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-wide/16 v34, 0x1

    const/16 v26, 0x0

    if-eqz v24, :cond_15

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v20

    :goto_f
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v9, v6, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v7, v34, v9

    if-gez v7, :cond_14

    iget-wide v0, v6, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    move-wide/from16 v34, v0

    :cond_14
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    :cond_15
    const/16 v20, 0x0

    goto :goto_f

    :cond_16
    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    const/16 v26, 0x0

    if-eqz v24, :cond_18

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v20

    :goto_10
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v9, v6, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v9, v9

    move-wide/from16 v0, v34

    long-to-double v15, v0

    div-double/2addr v9, v15

    const-wide/high16 v15, 0x4059

    mul-double v44, v9, v15

    iget-wide v9, v6, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v9, v9

    move-wide/from16 v0, v40

    long-to-double v15, v0

    div-double/2addr v9, v15

    const-wide/high16 v15, 0x4059

    mul-double v42, v9, v15

    const-wide/high16 v9, 0x3ff0

    cmpg-double v7, v44, v9

    if-gez v7, :cond_19

    const-wide v9, 0x4040800000000000L

    cmpg-double v7, v42, v9

    if-gez v7, :cond_19

    :cond_17
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    :cond_18
    const/16 v20, 0x0

    goto :goto_10

    :cond_19
    new-instance v48, Lcom/android/settings/applications/HtcProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v0, v48

    invoke-direct {v0, v7, v9, v6}, Lcom/android/settings/applications/HtcProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V

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

    invoke-virtual {v6, v14}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    iget-object v7, v6, Lcom/android/settings/applications/ProcStatsEntry;->mUiLabel:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v6, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_1a

    iget-object v7, v6, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v14}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    move-object/from16 v0, v48

    move-wide/from16 v1, v44

    move-wide/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/HtcProcessStatsPreference;->setPercent(DD)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v7

    const/16 v9, 0x3d

    if-le v7, v9, :cond_17

    :cond_1b
    return-void

    :cond_1c
    const/16 v19, 0x0

    goto :goto_11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c1029

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    :cond_0
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUm:Landroid/os/UserManager;

    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    const-string v1, "mem_status"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Lcom/htc/preference/HtcPreference;

    if-eqz p1, :cond_2

    const-string v0, "duration"

    sget-object v1, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v5, v1, v2

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    if-eqz p1, :cond_3

    const-string v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz p1, :cond_1

    const-string v0, "use_uss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    if-eqz p1, :cond_4

    const-string v0, "stats_type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-eqz p1, :cond_5

    const-string v0, "mem_region"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v0, v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v3, 0x7f0c10f4

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f0c1103

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    aget v5, v5, v0

    invoke-interface {v2, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    const v3, 0x7f0c110a

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

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

    const/16 v3, 0xa

    const v4, 0x7f0c110d

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    add-int/lit8 v3, v0, -0x2

    aget-wide v2, v2, v3

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    :pswitch_2
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    :pswitch_3
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

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

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v6, 0x0

    instance-of v0, p2, Lcom/android/settings/applications/HtcProcessStatsPreference;

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    move-object v7, p2

    check-cast v7, Lcom/android/settings/applications/HtcProcessStatsPreference;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "entry"

    invoke-virtual {v7}, Lcom/android/settings/applications/HtcProcessStatsPreference;->getEntry()Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "max_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    const-class v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c10c3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onRegionTapped(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "duration"

    iget-wide v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "stats_type"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mem_region"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method updateMenus()V
    .locals 15

    const/16 v14, 0x8

    const/4 v13, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v8

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v13, :cond_1

    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v5

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v6, v3, v0

    if-gez v6, :cond_0

    move-wide v0, v3

    move v2, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v9, v6, v5

    if-ne v5, v2, :cond_3

    move v6, v7

    :goto_2
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v9, v6, v2

    iput-wide v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-ne v6, v14, :cond_a

    move v6, v7

    :goto_3
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-ne v6, v14, :cond_b

    move v6, v7

    :goto_4
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_8

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x9

    if-ne v6, v10, :cond_c

    move v6, v7

    :goto_5
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    iget v9, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_d

    :goto_6
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_9
    return-void

    :cond_a
    move v6, v8

    goto :goto_3

    :cond_b
    move v6, v8

    goto :goto_4

    :cond_c
    move v6, v8

    goto :goto_5

    :cond_d
    move v7, v8

    goto :goto_6
.end method

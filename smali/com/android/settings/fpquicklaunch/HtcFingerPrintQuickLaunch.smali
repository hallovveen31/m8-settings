.class public Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcFingerPrintQuickLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_KEY_FINGER_ID:Ljava/lang/String; = "finger_id"

.field private static final FINGERPRINT_SHARED_PREFERENCES:Ljava/lang/String; = "fingerprint_shared_preferences"

.field private static final KEY_DIRTY_BIT:Ljava/lang/String; = "dirty_bit"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

.field private mApply:Lcom/htc/widget/HtcFooterButton;

.field private mBasicItems:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

.field private mFingerId:I

.field private mList:Lcom/htc/widget/HtcListView;

.field private mOnListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mQuickLaunchItemChooseAppilcation:Ljava/lang/String;

.field private mSelection:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mVoiceAssistant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    const-class v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mQuickLaunchItemChooseAppilcation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/htc/widget/HtcListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->sendQuickLaunchAppRecord(I)V

    return-void
.end method

.method private dumpEnrolledFingerRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump record content:  \nName:                 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Id:                   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FingerIndex:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getFingerIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ComponentRawData:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentRawData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ComponentDisplayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private indexOfApps(Landroid/content/ComponentName;)I
    .locals 13

    const/4 v6, -0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v2

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v8, v0, v5

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v10, v11}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    array-length v10, v3

    if-ge v5, v10, :cond_3

    aget-object v10, v3, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    add-int/2addr v5, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    iget-object v10, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Check point#1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v5, v6

    goto :goto_1
.end method

.method private isEnrolledFingerRecordExisted()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v3, "saveQuickLaunchAppByPosition, enrolled manager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    iget v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record get by finger id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveQuickLaunchAppByPosition(I)V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v1

    if-gez p1, :cond_1

    sget-boolean v5, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveQuickLaunchAppByPosition, error position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    iget v6, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    if-eqz v5, :cond_2

    if-ge p1, v1, :cond_2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->dumpEnrolledFingerRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {v5, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v5, v6}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    if-eqz v5, :cond_3

    sub-int/2addr v3, v1

    :cond_3
    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->dumpEnrolledFingerRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {v5, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    goto :goto_0
.end method

.method private sendQuickLaunchAppRecord(I)V
    .locals 9

    sget-boolean v7, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v8, "sendQuickLaunchAppRecord()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v7

    if-ge p1, v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_3

    const-string v0, "Unlock"

    :cond_1
    :goto_0
    if-nez v0, :cond_8

    sget-boolean v7, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v8, "Can not get component."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    const-string v0, "Home"

    goto :goto_0

    :cond_4
    :try_start_0
    aget-object v7, v1, p1

    invoke-static {v7}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v7, 0x3

    if-ne p1, v7, :cond_6

    if-nez v2, :cond_5

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "GoogleVoiceSearch"

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v7

    sub-int v7, p1, v7

    aget-object v0, v3, v7

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/htc/report/ulog/WrapReusableULogData;->obtain()Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v6

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Lcom/htc/report/ulog/WrapReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v7

    const-string v8, "fp_quicklaunch"

    invoke-virtual {v7, v8}, Lcom/htc/report/ulog/WrapReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v0}, Lcom/htc/report/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    invoke-static {v6}, Lcom/htc/report/ulog/WrapULog;->log(Lcom/htc/report/ulog/WrapReusableULogData;)V

    invoke-virtual {v6}, Lcom/htc/report/ulog/WrapReusableULogData;->recycle()V

    goto :goto_1
.end method

.method private updateList()V
    .locals 23

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    array-length v0, v8

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    aget-object v9, v8, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mVoiceAssistant:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const-string v20, "customize_settings_voice_assistant"

    invoke-static/range {v20 .. v20}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getACCValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mVoiceAssistant:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    :try_start_0
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object v8, v7

    array-length v0, v8

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    aget-object v5, v8, v15

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    const/16 v20, 0x80

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mQuickLaunchItemChooseAppilcation:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    aput-object v20, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    new-instance v20, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f04007d

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "component_name"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-direct {p0, v3}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->indexOfApps(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v7, -0x1

    if-le v4, v7, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getSelection(Landroid/content/Context;I)I

    move-result v7

    if-eq v4, v7, :cond_0

    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->sendQuickLaunchAppRecord(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v4, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "dirty_bit"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v0, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveCustomApplications(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v7, -0x1

    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v5, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    invoke-direct {p0, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    invoke-direct {p0, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->sendQuickLaunchAppRecord(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    iget-object v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "finger_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v3, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveCurrentFingerId(Landroid/content/Context;I)Z

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    const v4, 0x7f0c023a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mQuickLaunchItemChooseAppilcation:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mVoiceAssistant:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v3, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getSelection(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    iget v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iput v6, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    iget v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v3, v4, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    iget v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    invoke-direct {p0, v3}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0238

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "fingerprint_shared_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dirty_bit"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    new-instance v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v2, 0x7f0400f8

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V

    iput-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mOnListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mOnListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v2, 0x7f090225

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mApply:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mApply:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->updateList()V

    return-void
.end method

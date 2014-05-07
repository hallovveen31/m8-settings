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

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 67
    const-class v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    .line 324
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mQuickLaunchItemChooseAppilcation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->sendQuickLaunchAppRecord(I)V

    return-void
.end method

.method private dumpEnrolledFingerRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V
    .locals 3
    .parameter "record"

    .prologue
    .line 424
    sget-boolean v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 425
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

    .line 432
    :cond_0
    return-void
.end method

.method private indexOfApps(Landroid/content/ComponentName;)I
    .locals 13
    .parameter "component"

    .prologue
    .line 231
    const/4 v6, -0x1

    .line 232
    .local v6, index:I
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, target:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v2

    .line 236
    .local v2, basicItemNum:I
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, basic:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 238
    aget-object v8, v0, v5

    .line 239
    .local v8, item:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 240
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 241
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 242
    .local v1, basicComponent:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 260
    .end local v0           #basic:[Ljava/lang/String;
    .end local v1           #basicComponent:Landroid/content/ComponentName;
    .end local v5           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #item:Ljava/lang/String;
    :goto_1
    return v5

    .line 237
    .restart local v0       #basic:[Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #item:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #item:Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v10, v11}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, custom:[Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    array-length v10, v3

    if-ge v5, v10, :cond_3

    .line 252
    aget-object v10, v3, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    .line 253
    add-int/2addr v5, v2

    goto :goto_1

    .line 251
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 256
    .end local v0           #basic:[Ljava/lang/String;
    .end local v3           #custom:[Ljava/lang/String;
    .end local v5           #i:I
    :catch_0
    move-exception v4

    .line 257
    .local v4, e:Ljava/lang/Exception;
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

    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    move v5, v6

    .line 260
    goto :goto_1
.end method

.method private isEnrolledFingerRecordExisted()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    if-nez v2, :cond_1

    .line 371
    sget-boolean v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v3, "saveQuickLaunchAppByPosition, enrolled manager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    :goto_0
    return v1

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    iget v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v0

    .line 379
    .local v0, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    if-nez v0, :cond_2

    .line 380
    sget-boolean v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 381
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

    .line 386
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveQuickLaunchAppByPosition(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 391
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v1

    .line 392
    .local v1, basicItemNum:I
    if-gez p1, :cond_1

    .line 393
    sget-boolean v5, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 394
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

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    .local v2, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    iget v6, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v4

    .line 402
    .local v4, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    if-eqz v5, :cond_2

    if-ge p1, v1, :cond_2

    .line 403
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->dumpEnrolledFingerRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V

    .line 407
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {v5, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    goto :goto_0

    .line 409
    :cond_2
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v5, v6}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, apps:[Ljava/lang/String;
    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move v3, p1

    .line 413
    .local v3, idx:I
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 414
    sub-int/2addr v3, v1

    .line 416
    :cond_3
    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->dumpEnrolledFingerRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)V

    .line 419
    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {v5, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z

    goto :goto_0
.end method

.method private sendQuickLaunchAppRecord(I)V
    .locals 9
    .parameter "position"

    .prologue
    .line 438
    sget-boolean v7, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 439
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v8, "sendQuickLaunchAppRecord()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    const/4 v0, 0x0

    .line 443
    .local v0, app:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v7

    if-ge p1, v7, :cond_7

    .line 444
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicApplications(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, basic:[Ljava/lang/String;
    if-nez p1, :cond_3

    .line 451
    const-string v0, "Unlock"

    .line 481
    .end local v1           #basic:[Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_8

    .line 482
    sget-boolean v7, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 483
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v8, "Can not get component."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_2
    :goto_1
    return-void

    .line 452
    .restart local v1       #basic:[Ljava/lang/String;
    :cond_3
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    .line 453
    const-string v0, "Home"

    goto :goto_0

    .line 456
    :cond_4
    :try_start_0
    aget-object v7, v1, p1

    invoke-static {v7}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 457
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 459
    .local v2, componentName:Landroid/content/ComponentName;
    const/4 v7, 0x3

    if-ne p1, v7, :cond_6

    .line 460
    if-nez v2, :cond_5

    .line 461
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 462
    const-string v0, "GoogleVoiceSearch"

    goto :goto_0

    .line 465
    :cond_5
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_6
    if-eqz v2, :cond_1

    .line 469
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 472
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 473
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 477
    .end local v1           #basic:[Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, custom:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v7

    sub-int v7, p1, v7

    aget-object v0, v3, v7

    goto :goto_0

    .line 489
    .end local v3           #custom:[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/htc/report/ulog/WrapReusableULogData;->obtain()Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v6

    .line 492
    .local v6, uLogData:Lcom/htc/report/ulog/WrapReusableULogData;
    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Lcom/htc/report/ulog/WrapReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v7

    const-string v8, "fp_quicklaunch"

    invoke-virtual {v7, v8}, Lcom/htc/report/ulog/WrapReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8, v0}, Lcom/htc/report/ulog/WrapReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/report/ulog/WrapReusableULogData;

    .line 496
    invoke-static {v6}, Lcom/htc/report/ulog/WrapULog;->log(Lcom/htc/report/ulog/WrapReusableULogData;)V

    .line 499
    invoke-virtual {v6}, Lcom/htc/report/ulog/WrapReusableULogData;->recycle()V

    goto :goto_1
.end method

.method private updateList()V
    .locals 23

    .prologue
    .line 269
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v18, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 272
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    aget-object v9, v8, v15

    .line 273
    .local v9, basicItem:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mVoiceAssistant:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 274
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const-string v20, "customize_settings_voice_assistant"

    invoke-static/range {v20 .. v20}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getACCValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, accValue:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mVoiceAssistant:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 284
    .local v19, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 285
    .local v11, customVoiceAssistant:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 286
    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    .line 287
    .local v16, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 288
    .local v6, appLabel:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 290
    .end local v6           #appLabel:Ljava/lang/String;
    .end local v11           #customVoiceAssistant:Landroid/content/ComponentName;
    .end local v16           #info:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v12

    .line 291
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v4           #accValue:Ljava/lang/String;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #basicItem:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, apps:[Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 301
    .restart local v19       #pm:Landroid/content/pm/PackageManager;
    move-object v8, v7

    .restart local v8       #arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    aget-object v5, v8, v15

    .line 302
    .local v5, app:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 304
    .local v10, component:Landroid/content/ComponentName;
    const/16 v20, 0x80

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    .line 305
    .restart local v16       #info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 306
    .restart local v6       #appLabel:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    .end local v6           #appLabel:Ljava/lang/String;
    .end local v16           #info:Landroid/content/pm/ActivityInfo;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 307
    :catch_1
    move-exception v12

    .line 308
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 312
    .end local v5           #app:Ljava/lang/String;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #component:Landroid/content/ComponentName;
    .end local v12           #e:Ljava/lang/Exception;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mQuickLaunchItemChooseAppilcation:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    .line 315
    .local v13, entries:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 316
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    aput-object v20, v13, v14

    .line 315
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 319
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

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanseState"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    if-eqz p3, :cond_1

    .line 196
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 197
    .local v2, b:Landroid/os/Bundle;
    const-string v7, "component_name"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 199
    .local v3, component:Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->indexOfApps(Landroid/content/ComponentName;)I

    move-result v4

    .line 200
    .local v4, componentIndex:I
    const/4 v7, -0x1

    if-le v4, v7, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getSelection(Landroid/content/Context;I)I

    move-result v7

    if-eq v4, v7, :cond_0

    .line 203
    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->sendQuickLaunchAppRecord(I)V

    .line 205
    :cond_0
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v4, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    .line 206
    invoke-direct {p0, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    .line 222
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v4           #componentIndex:I
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

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 224
    return-void

    .line 209
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v3       #component:Landroid/content/ComponentName;
    .restart local v4       #componentIndex:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 210
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, application:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v0, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveCustomApplications(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    .line 212
    .local v6, saveSucceed:Z
    if-eqz v6, :cond_1

    .line 213
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getCustomApplications(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, apps:[Ljava/lang/String;
    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getBasicAppNumber(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v7, -0x1

    .line 215
    .local v5, position:I
    iget-object v7, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v7, v5, v8}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    .line 216
    invoke-direct {p0, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    .line 217
    invoke-direct {p0, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->sendQuickLaunchAppRecord(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    .line 98
    new-instance v3, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    iget-object v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mEnrolledMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 101
    .local v2, mainIntent:Landroid/content/Intent;
    const-string v3, "finger_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    .line 102
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v3, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveCurrentFingerId(Landroid/content/Context;I)Z

    .line 104
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    const v4, 0x7f0c023a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mQuickLaunchItemChooseAppilcation:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mBasicItems:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mVoiceAssistant:Ljava/lang/String;

    .line 112
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v3, v4}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->getSelection(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    .line 113
    iget v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 114
    iput v6, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    .line 115
    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->isEnrolledFingerRecordExisted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    iget v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mFingerId:I

    invoke-static {v3, v4, v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunchManager;->saveSelection(Landroid/content/Context;II)V

    .line 117
    iget v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I

    invoke-direct {p0, v3}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->saveQuickLaunchAppByPosition(I)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0238

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "fingerprint_shared_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 125
    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dirty_bit"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v1

    .line 129
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 130
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$1;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 151
    const v2, 0x7f0400f8

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, v:Landroid/view/View;
    const v2, 0x7f090223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcOverlapLayout;

    .line 154
    .local v0, layout:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    .line 156
    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    .line 157
    new-instance v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V

    iput-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mOnListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 170
    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mOnListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    const v2, 0x7f090225

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mApply:Lcom/htc/widget/HtcFooterButton;

    .line 173
    iget-object v2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mApply:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$3;-><init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->updateList()V

    .line 145
    return-void
.end method

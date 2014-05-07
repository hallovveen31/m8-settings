.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final DEBUG_COMPARE:Z = false

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field private static final TAG:Ljava/lang/String; = null

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 142
    iput v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 144
    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 749
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 750
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 751
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 752
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 753
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 754
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 755
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 756
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 757
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 758
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .parameter "newItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local p3, userItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 835
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 836
    .local v3, userItem:Lcom/android/settings/applications/RunningState$MergedItem;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v7, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v4, v7, :cond_5

    :cond_0
    move v0, v6

    .line 837
    .local v0, first:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 838
    if-nez v3, :cond_6

    .line 839
    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v3           #userItem:Lcom/android/settings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v3, v4}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 840
    .restart local v3       #userItem:Lcom/android/settings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 844
    :goto_1
    iget v4, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 845
    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    iget v7, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$UserState;

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-nez v4, :cond_3

    .line 846
    new-instance v4, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v4}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    .line 847
    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v7, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 848
    .local v1, info:Landroid/content/pm/UserInfo;
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, v4, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 849
    if-eqz v1, :cond_1

    .line 850
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v7, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {p1, v7, v1, v8}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 853
    :cond_1
    if-eqz v1, :cond_7

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 854
    .local v2, name:Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_2

    .line 855
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 857
    :cond_2
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0fc4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-virtual {v7, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 860
    .end local v1           #info:Landroid/content/pm/UserInfo;
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_4
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    return-void

    .end local v0           #first:Z
    :cond_5
    move v0, v5

    .line 836
    goto :goto_0

    .line 842
    .restart local v0       #first:Z
    :cond_6
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 853
    .restart local v1       #info:Landroid/content/pm/UserInfo;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 740
    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 741
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 744
    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 810
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v0

    .line 813
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 820
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 723
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 725
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 726
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 736
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 731
    :cond_2
    move-object v0, p1

    .line 732
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 733
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 734
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 825
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 826
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 827
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 828
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 829
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 830
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 831
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 65
    .parameter "context"
    .parameter "am"

    .prologue
    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

    move-object/from16 v61, v0

    if-nez v61, :cond_0

    .line 868
    new-instance v61, Lcom/android/settings/applications/HtcHideServiceSet;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/HtcHideServiceSet;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

    .line 871
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v46

    .line 873
    .local v46, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    add-int/lit8 v61, v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 875
    const/16 v18, 0x0

    .line 879
    .local v18, changed:Z
    const/16 v61, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v53

    .line 881
    .local v53, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v53, :cond_2

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v10

    .line 882
    .local v10, NS:I
    :goto_0
    const/16 v26, 0x0

    .local v26, i:I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v10, :cond_4

    .line 883
    move-object/from16 v0, v53

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 887
    .local v54, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v61, v0

    if-nez v61, :cond_3

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v61, v0

    if-nez v61, :cond_3

    .line 888
    move-object/from16 v0, v53

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 889
    add-int/lit8 v26, v26, -0x1

    .line 890
    add-int/lit8 v10, v10, -0x1

    .line 882
    :cond_1
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 881
    .end local v10           #NS:I
    .end local v26           #i:I
    .end local v54           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 895
    .restart local v10       #NS:I
    .restart local v26       #i:I
    .restart local v54       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v61, v0

    and-int/lit8 v61, v61, 0x8

    if-eqz v61, :cond_1

    .line 897
    move-object/from16 v0, v53

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 898
    add-int/lit8 v26, v26, -0x1

    .line 899
    add-int/lit8 v10, v10, -0x1

    .line 900
    goto :goto_2

    .line 906
    .end local v54           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v48

    .line 908
    .local v48, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v48, :cond_5

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v8

    .line 909
    .local v8, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 910
    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    if-ge v0, v8, :cond_6

    .line 911
    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 912
    .local v42, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    new-instance v63, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v63

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v61 .. v63}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 910
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 908
    .end local v8           #NP:I
    .end local v42           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 917
    .restart local v8       #NP:I
    :cond_6
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    if-ge v0, v10, :cond_8

    .line 918
    move-object/from16 v0, v53

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 919
    .restart local v54       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v61, v0

    const-wide/16 v63, 0x0

    cmp-long v61, v61, v63

    if-nez v61, :cond_7

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    if-lez v61, :cond_7

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 921
    .local v13, ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_7

    .line 922
    const/16 v61, 0x1

    move/from16 v0, v61

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 923
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v61, v0

    if-eqz v61, :cond_7

    .line 924
    const/16 v61, 0x1

    move/from16 v0, v61

    iput-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 917
    .end local v13           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 931
    .end local v54           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_8
    const/16 v26, 0x0

    :goto_6
    move/from16 v0, v26

    if-ge v0, v10, :cond_14

    .line 932
    move-object/from16 v0, v53

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 939
    .restart local v54       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v61, v0

    const-wide/16 v63, 0x0

    cmp-long v61, v61, v63

    if-nez v61, :cond_c

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    if-lez v61, :cond_c

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 941
    .restart local v13       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_c

    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v61, v0

    if-nez v61, :cond_c

    .line 947
    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0x12c

    move/from16 v0, v61

    move/from16 v1, v62

    if-ge v0, v1, :cond_c

    .line 951
    const/16 v56, 0x0

    .line 952
    .local v56, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 953
    .restart local v13       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v13, :cond_a

    .line 954
    iget-boolean v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v61, v0

    if-nez v61, :cond_9

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v61

    if-eqz v61, :cond_b

    .line 955
    :cond_9
    const/16 v56, 0x1

    .line 960
    :cond_a
    if-eqz v56, :cond_c

    .line 931
    .end local v13           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v56           #skip:Z
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6

    .line 958
    .restart local v13       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .restart local v56       #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    iget-object v0, v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .restart local v13       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    goto :goto_7

    .line 967
    .end local v13           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v56           #skip:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 968
    .local v49, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v49, :cond_d

    .line 969
    new-instance v49, Ljava/util/HashMap;

    .end local v49           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 970
    .restart local v49       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v62, v0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 972
    :cond_d
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 973
    .local v47, proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_e

    .line 974
    const/16 v18, 0x1

    .line 975
    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v61

    move-object/from16 v3, v62

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 976
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v61

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_e
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_12

    .line 980
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v61, v0

    const-wide/16 v63, 0x0

    cmp-long v61, v61, v63

    if-nez v61, :cond_13

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v43, v0

    .line 981
    .local v43, pid:I
    :goto_9
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    move/from16 v0, v43

    move/from16 v1, v61

    if-eq v0, v1, :cond_11

    .line 982
    const/16 v18, 0x1

    .line 983
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    move/from16 v0, v61

    move/from16 v1, v43

    if-eq v0, v1, :cond_11

    .line 984
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-eqz v61, :cond_f

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->remove(I)V

    .line 987
    :cond_f
    if-eqz v43, :cond_10

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v43

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 990
    :cond_10
    move/from16 v0, v43

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 993
    :cond_11
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 994
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 996
    .end local v43           #pid:I
    :cond_12
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v61

    or-int v18, v18, v61

    goto/16 :goto_8

    .line 980
    :cond_13
    const/16 v43, 0x0

    goto :goto_9

    .line 1001
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v49           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v54           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_14
    const/16 v26, 0x0

    :goto_a
    move/from16 v0, v26

    if-ge v0, v8, :cond_19

    .line 1002
    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1003
    .restart local v42       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1004
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_16

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1009
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_15

    .line 1010
    const/16 v18, 0x1

    .line 1011
    new-instance v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v61, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v61

    move-object/from16 v3, v62

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1012
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v62, v0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1015
    :cond_15
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 1018
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v61

    if-eqz v61, :cond_18

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_17

    .line 1020
    const/16 v18, 0x1

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1024
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1025
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1030
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1031
    move-object/from16 v0, v42

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1001
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 1027
    :cond_18
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1036
    .end local v42           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1037
    .local v9, NRP:I
    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v9, :cond_1f

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1040
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v47, :cond_1b

    .line 1037
    :cond_1a
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 1044
    :cond_1b
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_1e

    .line 1045
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    .line 1046
    .local v20, clientPid:I
    if-eqz v20, :cond_1d

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1048
    .local v19, client:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v19, :cond_1c

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v19, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1051
    .restart local v19       #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1c
    if-eqz v19, :cond_1a

    .line 1052
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    move-object/from16 v0, v61

    move/from16 v1, v62

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 1058
    .end local v19           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1d
    const/16 v61, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1061
    .end local v20           #clientPid:I
    :cond_1e
    const/16 v18, 0x1

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d

    .line 1067
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1068
    .local v7, NHP:I
    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    if-ge v0, v7, :cond_22

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1070
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v61, v0

    if-eqz v61, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v61

    if-nez v61, :cond_21

    .line 1071
    :cond_20
    const/16 v18, 0x1

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1073
    add-int/lit8 v26, v26, -0x1

    .line 1074
    add-int/lit8 v7, v7, -0x1

    .line 1068
    :cond_21
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1081
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1082
    .local v5, NAP:I
    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    if-ge v0, v5, :cond_24

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1084
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_23

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v61

    or-int v18, v18, v61

    .line 1082
    :cond_23
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 1090
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_24
    const/16 v59, 0x0

    .line 1091
    .local v59, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_2c

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 1093
    .restart local v49       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 1094
    .local v45, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_25
    :goto_11
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_2b

    .line 1095
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1096
    .local v42, pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_28

    .line 1097
    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1098
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-nez v61, :cond_26

    .line 1101
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->clear()V

    .line 1117
    :cond_26
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v55

    .line 1118
    .local v55, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_27
    :goto_12
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_25

    .line 1119
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1120
    .local v54, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_27

    .line 1121
    const/16 v18, 0x1

    .line 1122
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1104
    .end local v54           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    .end local v55           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_28
    const/16 v18, 0x1

    .line 1105
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->remove()V

    .line 1106
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->size()I

    move-result v61

    if-nez v61, :cond_2a

    .line 1107
    if-nez v59, :cond_29

    .line 1108
    new-instance v59, Ljava/util/ArrayList;

    .end local v59           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    .restart local v59       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_2a
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-eqz v61, :cond_25

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1091
    .end local v42           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_2b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_10

    .line 1128
    .end local v45           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v49           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_2c
    if-eqz v59, :cond_2d

    .line 1129
    const/16 v26, 0x0

    :goto_13
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_2d

    .line 1130
    move-object/from16 v0, v59

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Integer;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v58

    .line 1131
    .local v58, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1129
    add-int/lit8 v26, v26, 0x1

    goto :goto_13

    .line 1135
    .end local v58           #uid:I
    :cond_2d
    if-eqz v18, :cond_46

    .line 1137
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v57, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/16 v26, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_32

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/util/HashMap;

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_15
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_31

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1140
    .restart local v42       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1141
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1142
    const-wide v61, 0x7fffffffffffffffL

    move-wide/from16 v0, v61

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1143
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_16
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_30

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1144
    .restart local v54       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v61, v0

    if-eqz v61, :cond_2f

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v61, v0

    and-int/lit8 v61, v61, 0x1

    if-eqz v61, :cond_2f

    .line 1147
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1149
    :cond_2f
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v61, v0

    if-eqz v61, :cond_2e

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v61, v0

    if-eqz v61, :cond_2e

    .line 1151
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1152
    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v61, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v63, v0

    cmp-long v61, v61, v63

    if-lez v61, :cond_2e

    .line 1153
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v61, v0

    move-wide/from16 v0, v61

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1157
    .end local v54           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_30
    move-object/from16 v0, v57

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1138
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v42           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_31
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_14

    .line 1161
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v61, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1163
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v34, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v35, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v41, 0x0

    .line 1166
    .local v41, otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->clear()V

    .line 1167
    const/16 v26, 0x0

    :goto_17
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_3d

    .line 1168
    move-object/from16 v0, v57

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1169
    .restart local v42       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1173
    .local v22, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1175
    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    if-lez v61, :cond_33

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_33
    const/16 v29, 0x0

    .line 1182
    .local v29, mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    const/16 v25, 0x0

    .line 1183
    .local v25, haveAllMerged:Z
    const/16 v31, 0x0

    .line 1184
    .local v31, needDivider:Z
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_36

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1185
    .restart local v54       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move/from16 v0, v31

    move-object/from16 v1, v54

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1186
    const/16 v31, 0x1

    .line 1187
    move-object/from16 v0, v34

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    if-eqz v61, :cond_35

    .line 1189
    if-eqz v29, :cond_34

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_34

    .line 1190
    const/16 v25, 0x0

    .line 1192
    :cond_34
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v29, v0

    goto :goto_18

    .line 1194
    :cond_35
    const/16 v25, 0x0

    goto :goto_18

    .line 1198
    .end local v54           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_36
    if-eqz v25, :cond_37

    if-eqz v29, :cond_37

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljava/util/HashMap;->size()I

    move-result v62

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_39

    .line 1201
    :cond_37
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, v29

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1202
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_38

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1203
    .restart local v54       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    move-object/from16 v0, v29

    move-object/from16 v1, v54

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1206
    .end local v54           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_38
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1207
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->clear()V

    .line 1208
    move/from16 v30, v22

    .local v30, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    add-int/lit8 v61, v61, -0x1

    move/from16 v0, v30

    move/from16 v1, v61

    if-ge v0, v1, :cond_39

    .line 1209
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    add-int/lit8 v30, v30, 0x1

    goto :goto_1a

    .line 1213
    .end local v30           #mpi:I
    :cond_39
    const/16 v61, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1215
    const/4 v12, 0x0

    .line 1217
    .local v12, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v12

    .line 1222
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

    move-object/from16 v61, v0

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Lcom/android/settings/applications/HtcHideServiceSet;->contains(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_3b

    .line 1223
    sget-boolean v61, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v61, :cond_3a

    .line 1224
    sget-object v61, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "packageName: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    sget-object v61, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    const-string v62, "hide service from SIE list"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_3a
    :goto_1c
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_17

    .line 1231
    :cond_3b
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_3c

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v61

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_1c

    .line 1234
    :cond_3c
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1240
    .end local v12           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v22           #firstProc:I
    .end local v25           #haveAllMerged:Z
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31           #needDivider:Z
    .end local v42           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1241
    const/16 v26, 0x0

    :goto_1d
    move/from16 v0, v26

    if-ge v0, v7, :cond_43

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1243
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v61, v0

    if-nez v61, :cond_3f

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->size()I

    move-result v61

    if-gtz v61, :cond_3f

    .line 1244
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    if-nez v61, :cond_3e

    .line 1245
    new-instance v61, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v62, v0

    invoke-direct/range {v61 .. v62}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1246
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1248
    :cond_3e
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1250
    const/4 v12, 0x0

    .line 1252
    .restart local v12       #ai:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 1260
    :goto_1e
    if-nez v12, :cond_40

    .line 1241
    .end local v12           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_3f
    :goto_1f
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1d

    .line 1266
    .restart local v12       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceSet:Lcom/android/settings/applications/HtcHideServiceSet;

    move-object/from16 v61, v0

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Lcom/android/settings/applications/HtcHideServiceSet;->contains(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_41

    .line 1267
    sget-boolean v61, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v61, :cond_3f

    .line 1268
    sget-object v61, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "packageName: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    sget-object v61, Lcom/android/settings/applications/RunningState;->TAG:Ljava/lang/String;

    const-string v62, "hide service from SIE list"

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1275
    :cond_41
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_42

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v61

    move-object/from16 v4, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1281
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1279
    :cond_42
    const/16 v61, 0x0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v62, v0

    move-object/from16 v0, v35

    move/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_20

    .line 1287
    .end local v12           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1288
    .local v11, NU:I
    const/16 v26, 0x0

    :goto_21
    move/from16 v0, v26

    if-ge v0, v11, :cond_45

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1290
    .local v60, user:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_44

    .line 1291
    const/16 v61, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1288
    :cond_44
    add-int/lit8 v26, v26, 0x1

    goto :goto_21

    .line 1295
    .end local v60           #user:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v62, v0

    monitor-enter v62

    .line 1296
    :try_start_2
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1297
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1298
    monitor-exit v62
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1303
    .end local v11           #NU:I
    .end local v34           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v35           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v41           #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v57           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->clear()V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1305
    const/16 v37, 0x0

    .line 1306
    .local v37, numBackgroundProcesses:I
    const/16 v38, 0x0

    .line 1307
    .local v38, numForegroundProcesses:I
    const/16 v40, 0x0

    .line 1308
    .local v40, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1309
    const/16 v26, 0x0

    :goto_22
    move/from16 v0, v26

    if-ge v0, v9, :cond_4a

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1311
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_49

    .line 1314
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0x190

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_47

    .line 1316
    add-int/lit8 v37, v37, 0x1

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    :goto_23
    add-int/lit8 v26, v26, 0x1

    goto :goto_22

    .line 1298
    .end local v37           #numBackgroundProcesses:I
    .end local v38           #numForegroundProcesses:I
    .end local v40           #numServiceProcesses:I
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v11       #NU:I
    .restart local v34       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v35       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v41       #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v57       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v61

    :try_start_3
    monitor-exit v62
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v61

    .line 1318
    .end local v11           #NU:I
    .end local v34           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v35           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v41           #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v57           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v37       #numBackgroundProcesses:I
    .restart local v38       #numForegroundProcesses:I
    .restart local v40       #numServiceProcesses:I
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_47
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0xc8

    move/from16 v0, v61

    move/from16 v1, v62

    if-gt v0, v1, :cond_48

    .line 1320
    add-int/lit8 v38, v38, 0x1

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1323
    :cond_48
    const-string v61, "RunningState"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Unknown non-service process: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, " #"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1327
    :cond_49
    add-int/lit8 v40, v40, 0x1

    goto :goto_23

    .line 1331
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_4a
    const-wide/16 v14, 0x0

    .line 1332
    .local v14, backgroundProcessMemory:J
    const-wide/16 v23, 0x0

    .line 1333
    .local v23, foregroundProcessMemory:J
    const-wide/16 v51, 0x0

    .line 1334
    .local v51, serviceProcessMemory:J
    const/16 v32, 0x0

    .line 1335
    .local v32, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v36, 0x0

    .line 1336
    .local v36, newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v21, 0x0

    .line 1338
    .local v21, diffUsers:Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 1339
    .local v39, numProc:I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v44, v0

    .line 1340
    .local v44, pids:[I
    const/16 v26, 0x0

    :goto_24
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_4b

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    aput v61, v44, v26

    .line 1340
    add-int/lit8 v26, v26, 0x1

    goto :goto_24

    .line 1343
    :cond_4b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v50

    .line 1345
    .local v50, pss:[J
    const/16 v16, 0x0

    .line 1346
    .local v16, bgIndex:I
    const/16 v26, 0x0

    move-object/from16 v33, v32

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v33, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_25
    :try_start_5
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v61, v0

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_55

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1348
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    aget-wide v61, v50, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-wide/from16 v2, v61

    move/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v61

    or-int v18, v18, v61

    .line 1349
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_4c

    .line 1350
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v61, v0

    add-long v51, v51, v61

    move-object/from16 v32, v33

    .line 1346
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_26
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v33, v32

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_25

    .line 1351
    :cond_4c
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0x190

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_54

    .line 1353
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v61, v0

    add-long v14, v14, v61

    .line 1355
    if-eqz v33, :cond_4e

    .line 1356
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, v29

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1357
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1358
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_4d

    const/16 v61, 0x1

    :goto_27
    or-int v21, v21, v61

    .line 1359
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v32, v33

    .line 1377
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_28
    const/16 v61, 0x1

    :try_start_6
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1378
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1379
    add-int/lit8 v16, v16, 0x1

    .line 1380
    goto :goto_26

    .line 1358
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4d
    const/16 v61, 0x0

    goto :goto_27

    .line 1361
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_4e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v16

    move/from16 v1, v61

    if-ge v0, v1, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_53

    .line 1363
    :cond_4f
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1364
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .local v17, bgi:I
    :goto_29
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_51

    .line 1365
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1366
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_50

    const/16 v61, 0x1

    :goto_2a
    or-int v21, v21, v61

    .line 1367
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    add-int/lit8 v17, v17, 0x1

    goto :goto_29

    .line 1366
    :cond_50
    const/16 v61, 0x0

    goto :goto_2a

    .line 1369
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_51
    new-instance v29, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, v29

    move/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1370
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1371
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_52

    const/16 v61, 0x1

    :goto_2b
    or-int v21, v21, v61

    .line 1372
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_28

    .line 1385
    .end local v16           #bgIndex:I
    .end local v17           #bgi:I
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v39           #numProc:I
    .end local v44           #pids:[I
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v50           #pss:[J
    :catch_0
    move-exception v61

    .line 1388
    :goto_2c
    if-nez v32, :cond_57

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v61

    move/from16 v1, v37

    if-le v0, v1, :cond_57

    .line 1391
    new-instance v32, Ljava/util/ArrayList;

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1392
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .restart local v17       #bgi:I
    :goto_2d
    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_57

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1394
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_56

    const/16 v61, 0x1

    :goto_2e
    or-int v21, v21, v61

    .line 1395
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    add-int/lit8 v17, v17, 0x1

    goto :goto_2d

    .line 1371
    .restart local v16       #bgIndex:I
    .restart local v39       #numProc:I
    .restart local v44       #pids:[I
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v50       #pss:[J
    :cond_52
    const/16 v61, 0x0

    goto :goto_2b

    .line 1374
    .end local v17           #bgi:I
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_53
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v32, v33

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_28

    .line 1380
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_54
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v61, v0

    const/16 v62, 0xc8

    move/from16 v0, v61

    move/from16 v1, v62

    if-gt v0, v1, :cond_60

    .line 1382
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v61, v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    add-long v23, v23, v61

    move-object/from16 v32, v33

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_26

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_55
    move-object/from16 v32, v33

    .line 1386
    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_2c

    .line 1394
    .end local v16           #bgIndex:I
    .end local v39           #numProc:I
    .end local v44           #pids:[I
    .end local v50           #pss:[J
    .restart local v17       #bgi:I
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_56
    const/16 v61, 0x0

    goto :goto_2e

    .line 1400
    .end local v17           #bgi:I
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_57
    if-eqz v32, :cond_58

    .line 1403
    if-nez v21, :cond_59

    .line 1405
    move-object/from16 v36, v32

    .line 1433
    :cond_58
    const/16 v26, 0x0

    :goto_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v26

    move/from16 v1, v61

    if-ge v0, v1, :cond_5d

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1433
    add-int/lit8 v26, v26, 0x1

    goto :goto_2f

    .line 1409
    :cond_59
    new-instance v36, Ljava/util/ArrayList;

    .end local v36           #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1410
    .restart local v36       #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1411
    .local v6, NB:I
    const/16 v26, 0x0

    :goto_30
    move/from16 v0, v26

    if-ge v0, v6, :cond_5b

    .line 1412
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1413
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_5a

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v61

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1411
    :goto_31
    add-int/lit8 v26, v26, 0x1

    goto :goto_30

    .line 1417
    :cond_5a
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1422
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1423
    .restart local v11       #NU:I
    const/16 v26, 0x0

    :goto_32
    move/from16 v0, v26

    if-ge v0, v11, :cond_58

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1425
    .restart local v60       #user:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_5c

    .line 1426
    const/16 v61, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1427
    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1423
    :cond_5c
    add-int/lit8 v26, v26, 0x1

    goto :goto_32

    .line 1437
    .end local v6           #NB:I
    .end local v11           #NU:I
    .end local v60           #user:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v62, v0

    monitor-enter v62

    .line 1438
    :try_start_a
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1439
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1440
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1441
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1442
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1443
    move-wide/from16 v0, v51

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 1444
    if-eqz v32, :cond_5e

    .line 1445
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1446
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1447
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v61, v0

    if-eqz v61, :cond_5e

    .line 1448
    const/16 v18, 0x1

    .line 1451
    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v61, v0

    if-nez v61, :cond_5f

    .line 1452
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Object;->notifyAll()V

    .line 1455
    :cond_5f
    monitor-exit v62

    .line 1457
    return v18

    .line 1455
    :catchall_1
    move-exception v61

    monitor-exit v62
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v61

    .line 1385
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v16       #bgIndex:I
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v39       #numProc:I
    .restart local v44       #pids:[I
    .restart local v50       #pss:[J
    :catch_1
    move-exception v61

    move-object/from16 v32, v33

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_2c

    .line 1253
    .end local v14           #backgroundProcessMemory:J
    .end local v16           #bgIndex:I
    .end local v21           #diffUsers:Z
    .end local v23           #foregroundProcessMemory:J
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v36           #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v37           #numBackgroundProcesses:I
    .end local v38           #numForegroundProcesses:I
    .end local v39           #numProc:I
    .end local v40           #numServiceProcesses:I
    .end local v44           #pids:[I
    .end local v50           #pss:[J
    .end local v51           #serviceProcessMemory:J
    .restart local v12       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v34       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v35       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v41       #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v57       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catch_2
    move-exception v61

    goto/16 :goto_1e

    .line 1218
    .end local v47           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v22       #firstProc:I
    .restart local v25       #haveAllMerged:Z
    .restart local v27       #i$:Ljava/util/Iterator;
    .restart local v29       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .restart local v31       #needDivider:Z
    .restart local v42       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :catch_3
    move-exception v61

    goto/16 :goto_1b

    .end local v12           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v22           #firstProc:I
    .end local v25           #haveAllMerged:Z
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v29           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31           #needDivider:Z
    .end local v34           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v35           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v41           #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v42           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v57           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v14       #backgroundProcessMemory:J
    .restart local v16       #bgIndex:I
    .restart local v21       #diffUsers:Z
    .restart local v23       #foregroundProcessMemory:J
    .restart local v33       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v36       #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v37       #numBackgroundProcesses:I
    .restart local v38       #numForegroundProcesses:I
    .restart local v39       #numProc:I
    .restart local v40       #numServiceProcesses:I
    .restart local v44       #pids:[I
    .restart local v47       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v50       #pss:[J
    .restart local v51       #serviceProcessMemory:J
    :cond_60
    move-object/from16 v32, v33

    .end local v33           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_26
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1480
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1474
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 805
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    monitor-exit v1

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 761
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 763
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 764
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 766
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 767
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 768
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 774
    monitor-exit v1

    .line 775
    return-void

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1468
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1469
    monitor-exit v1

    .line 1470
    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 781
    monitor-exit v1

    .line 782
    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 794
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    goto :goto_0

    .line 798
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.class public Lcom/android/settings/applications/ManageApplicationsFragment;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "ManageApplicationsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplicationsFragment$AppViewHolder;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field private static final MSG_APPLICATIONSTATE_REBUILD:I = 0x3

.field private static final MSG_CREATE_VIEW:I = 0x1

.field private static final MSG_RESUME_ADAPTER:I = 0x2

.field public static final RESET_APP_PREFERENCES:I = 0x8

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAB_ALL:Ljava/lang/String; = "All"

.field static final TAB_DOWNLOADED:Ljava/lang/String; = "Downloaded"

.field static final TAB_RUNNING:Ljava/lang/String; = "Running"

.field static final TAB_SDCARD:Ljava/lang/String; = "OnSdCard"

.field static final TAG:Ljava/lang/String; = null

.field static final VIEW_LIST:I = 0x1

.field static final VIEW_NOTHING:I = 0x0

.field static final VIEW_RUNNING:I = 0x2


# instance fields
.field m1LineTextStorageBar:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActivityResumed:Z

.field private mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCreatedRunning:Z

.field private mCurView:I

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field private mDefaultTab:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mFilterApps:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsAlignLastControl:Z

.field private mIsOnCreateInBackgroundFinished:Z

.field private mIsViewContentCreated:Z

.field private mIsViewReady:Z

.field private mLastAppStorage:J

.field private mLastFreeStorage:J

.field private mLastShowedInternalStorage:Z

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPrimaryVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field mResetDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mResumedRunning:Z

.field private mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field mSearchTextView:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private mShowBackground:Z

.field private mSortOrder:I

.field mSpaceListener:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

.field private mTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

.field private mUpdateCache:Z

.field private mUseCache:Z

.field mViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ManageApplicationsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    .line 181
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 210
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    .line 212
    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    .line 244
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mLastShowedInternalStorage:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mShowBackground:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsAlignLastControl:Z

    .line 286
    const-string v0, "Downloaded"

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    .line 289
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsFragment$1;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 948
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewReady:Z

    .line 949
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewContentCreated:Z

    .line 950
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsOnCreateInBackgroundFinished:Z

    .line 1570
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplicationsFragment$5;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSpaceListener:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1848
    sget-object v0, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return-void
.end method

.method private PostCreateView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 989
    sget-boolean v4, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 990
    const-string v4, "PostCreateView()"

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V

    .line 995
    :cond_0
    new-instance v4, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    .line 997
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4}, Lcom/android/settings/applications/ApplicationsState;->createMainHandler()V

    .line 999
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04006c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRootView:Landroid/view/View;

    .line 1000
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0900d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;

    .line 1002
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    .line 1005
    .local v2, lv:Lcom/htc/widget/HtcListView;
    new-instance v4, Lcom/android/settings/applications/ManageApplicationsFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplicationsFragment$2;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1038
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1039
    .local v1, emptyView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1042
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mEmptyView:Landroid/view/View;

    .line 1046
    :cond_1
    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1047
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 1048
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 1049
    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1050
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 1051
    invoke-static {v2, v7}, Lcom/android/settings/framework/widget/HtcListViewWrapper;->fillEmptySpace(Lcom/htc/widget/HtcListView;Z)V

    .line 1052
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListView:Lcom/htc/widget/HtcListView;

    .line 1053
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 1054
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1056
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0900d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 1057
    .local v3, progressItem:Lcom/htc/widget/HtcListItem;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "section_divider_top"

    const v6, 0x2080099

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1060
    .local v0, backgroundId:I
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 1062
    const v4, 0x7f0900d9

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->m1LineTextStorageBar:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    .line 1065
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->m1LineTextStorageBar:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSpaceListener:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;

    invoke-virtual {v4, v5}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->setOnGetTotalAvailableSpaceListener(Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar$OnGetTotalAvailableSpaceListener;)V

    .line 1069
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0900da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 1072
    iput-boolean v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    iput-boolean v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCreatedRunning:Z

    .line 1073
    iput v8, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    .line 1075
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mViewContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1078
    iput-boolean v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewReady:Z

    .line 1081
    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    if-nez v4, :cond_2

    .line 1082
    iput-boolean v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    .line 1083
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->showCurrentTab()V

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateOptionsMenu()V

    .line 1086
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->registerSearchContainer()V

    .line 1087
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/ManageApplicationsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getLoadingVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsAlignLastControl:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/ManageApplicationsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/ManageApplicationsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/ManageApplicationsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-static {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mPrimaryVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplicationsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplicationsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/applications/ManageApplicationsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mUpdateCache:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplicationsFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplicationsFragment;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/ManageApplicationsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/ManageApplicationsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/ManageApplicationsFragment;)Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    return-object v0
.end method

.method private getLoadingVisibility()I
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getProgressVisibility()I

    move-result v0

    .line 1108
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 1

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 1102
    :cond_1
    return-void
.end method

.method private onCreate_setupStorageVolumes()V
    .locals 1

    .prologue
    .line 865
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcMediaContainerServiceProxy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->addCallback(Ljava/lang/Object;)V

    .line 868
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getDataStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDataVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 869
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcStorageManager;->getPrimaryStorageVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mPrimaryVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 870
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcAppsStatistician;->getMoveAppTargetVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 874
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDataVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->addCallback(Ljava/lang/Object;)V

    .line 875
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->addCallback(Ljava/lang/Object;)V

    .line 876
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mPrimaryVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->addCallback(Ljava/lang/Object;)V

    .line 877
    return-void
.end method

.method private registerSearchContainer()V
    .locals 4

    .prologue
    .line 1123
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 1124
    .local v1, searchContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-class v3, Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/HtcViewFinder;->findViewsByClass(Landroid/view/View;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1127
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcAutoCompleteTextView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1128
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSearchTextView:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 1129
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSearchTextView:Lcom/htc/widget/HtcAutoCompleteTextView;

    new-instance v3, Lcom/android/settings/applications/ManageApplicationsFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageApplicationsFragment$3;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1149
    :goto_0
    return-void

    .line 1147
    :cond_0
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v3, "can not find HtcAutoCompleteTextView in ActionBar"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectView(I)V
    .locals 8
    .parameter "which"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1743
    if-ne p1, v7, :cond_4

    .line 1744
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    if-eqz v3, :cond_0

    .line 1745
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 1746
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    .line 1748
    :cond_0
    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    if-eq v3, p1, :cond_1

    .line 1749
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 1750
    invoke-direct {p0, v5}, Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z

    .line 1752
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    if-eqz v3, :cond_2

    .line 1755
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1756
    .local v2, nonUiHandler:Landroid/os/Handler;
    if-eqz v2, :cond_2

    .line 1757
    invoke-static {v2, v4, p1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1795
    .end local v2           #nonUiHandler:Landroid/os/Handler;
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    .line 1796
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1797
    .local v1, host:Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 1798
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1800
    :cond_3
    return-void

    .line 1761
    .end local v1           #host:Landroid/app/Activity;
    :cond_4
    if-ne p1, v4, :cond_2

    .line 1762
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCreatedRunning:Z

    if-nez v3, :cond_5

    .line 1763
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 1764
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mShowBackground:Z

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 1765
    iput-boolean v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCreatedRunning:Z

    .line 1767
    :cond_5
    const/4 v0, 0x1

    .line 1768
    .local v0, haveData:Z
    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    if-nez v3, :cond_6

    .line 1769
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v3, p0, v4}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 1770
    iput-boolean v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    .line 1772
    :cond_6
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->pause()V

    .line 1780
    if-eqz v0, :cond_8

    .line 1781
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 1782
    invoke-direct {p0, v6}, Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z

    .line 1783
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1784
    const-string v3, "Response Time (Apps Running tab)"

    invoke-static {v3}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    .line 1791
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1788
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z

    .line 1789
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setLoadingVisibility(I)Z
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1112
    const/4 v0, 0x0

    .line 1113
    .local v0, isSuccess:Z
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 1115
    const/4 v0, 0x1

    .line 1117
    :cond_0
    return v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1289
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1290
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 1293
    .local v0, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0f53

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1295
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_0

    .line 1379
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1380
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0c0f77

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1381
    const v1, 0x7f0c0f78

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1382
    const v1, 0x7f0c0f79

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1383
    const v1, 0x7f0c0c2b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1384
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1385
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1387
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 1803
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1806
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 1807
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageApplicationsFragment;->setLoadingVisibility(I)Z

    .line 1809
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    const-string v0, "Response Time (Apps Running tab)"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->otherFinish(Ljava/lang/String;)V

    .line 1814
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1153
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1154
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->initActionBar()V

    .line 1156
    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    .line 1157
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1281
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1284
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne v0, p1, :cond_0

    .line 1400
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1401
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1403
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1404
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1405
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsFragment$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplicationsFragment$4;-><init>(Lcom/android/settings/applications/ManageApplicationsFragment;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplicationsFragment$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1488
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 835
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 840
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsFragment;->setHasOptionsMenu(Z)V

    .line 843
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 844
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsAlignLastControl:Z

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->onCreate_setupStorageVolumes()V

    .line 852
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->requestHandlers()V

    .line 854
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 887
    sget-boolean v2, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 888
    const-string v2, "onCreateInBackground()"

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 894
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v3, "Activity is destroyed"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 905
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v3, "Activity is destroyed"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :cond_2
    const-string v1, "Downloaded"

    .line 911
    .local v1, defaultTabTag:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 912
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 913
    const-string v2, "tab"

    const-string v3, "Downloaded"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    .line 914
    const-string v2, "sort"

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    .line 915
    const-string v2, "filter"

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    .line 918
    :cond_3
    if-eqz p1, :cond_4

    .line 919
    const-string v2, "showBackground"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mShowBackground:Z

    .line 924
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_5

    .line 925
    sget-object v2, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v3, "Activity is destroyed"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 928
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0f9c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 929
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0f9b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 934
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewContentCreated:Z

    if-nez v2, :cond_6

    .line 935
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewContentCreated:Z

    .line 936
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 941
    :cond_6
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsOnCreateInBackgroundFinished:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1299
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    .line 1302
    const/4 v0, 0x1

    const v1, 0x7f0c0f72

    invoke-interface {p1, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1305
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0c0f73

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1308
    const/4 v0, 0x6

    const v1, 0x7f0c0f74

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1310
    const/4 v0, 0x7

    const v1, 0x7f0c0f75

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1312
    const/16 v0, 0x8

    const v1, 0x7f0c0f76

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1320
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateOptionsMenu()V

    .line 1321
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1161
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->initActionBar()V

    .line 1164
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 1174
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1175
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mViewContainer:Landroid/widget/FrameLayout;

    .line 1179
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mViewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsOnCreateInBackgroundFinished:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewContentCreated:Z

    if-nez v0, :cond_1

    .line 1188
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewContentCreated:Z

    .line 1189
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1268
    .local v1, uiHandler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1269
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1270
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1273
    .local v0, nonUiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 1274
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1276
    :cond_1
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onDestroy()V

    .line 1277
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    .line 1331
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne v0, p1, :cond_0

    .line 1392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1394
    :cond_0
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 975
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 977
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->resume(II)V

    goto :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 956
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 970
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 958
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->PostCreateView()V

    goto :goto_0

    .line 961
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 963
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(II)V

    goto :goto_0

    .line 956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1541
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1547
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_2

    .line 1548
    sget-boolean v1, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, entry is null, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 1555
    :cond_2
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurrentPkgName:Ljava/lang/String;

    .line 1556
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->startApplicationDetailsActivity()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1493
    sget-boolean v4, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1496
    .local v1, out:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n - mApplicationsAdapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n - mRunningProcessesView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1503
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v4, :cond_0

    .line 1504
    const-string v4, " \n - mRunningProcessesView.mAdapter: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1508
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplicationsFragment;->Log(Ljava/lang/String;)V

    .line 1512
    .end local v1           #out:Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1513
    .local v0, menuId:I
    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    if-eqz v4, :cond_5

    .line 1515
    :cond_2
    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    .line 1516
    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 1517
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    iget v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    iget v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->rebuild(II)V

    .line 1535
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateOptionsMenu()V

    move v2, v3

    .line 1536
    :cond_4
    return v2

    .line 1519
    :cond_5
    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    if-eqz v4, :cond_6

    .line 1522
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mShowBackground:Z

    .line 1523
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1524
    :cond_6
    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    if-eqz v4, :cond_7

    .line 1527
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mShowBackground:Z

    .line 1528
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1529
    :cond_7
    const/16 v4, 0x8

    if-ne v0, v4, :cond_4

    .line 1530
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1239
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    .line 1241
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->unregister()V

    .line 1243
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 1246
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    if-eqz v0, :cond_1

    .line 1247
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    .line 1248
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->pause()V

    .line 1249
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 1251
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    .line 1254
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateOptionsMenu()V

    .line 1326
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1204
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mUseCache:Z

    .line 1211
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    if-nez v0, :cond_0

    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->showCurrentTab()V

    .line 1214
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateOptionsMenu()V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    .line 1219
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->register()V

    .line 1221
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1225
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1226
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1227
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1228
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1229
    const-string v0, "defautTabTag"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1232
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1233
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1235
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1199
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onStart()V

    .line 1200
    return-void
.end method

.method public onStatusBarTapEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1854
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mIsViewReady:Z

    if-nez v0, :cond_1

    .line 1874
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivityResumed:Z

    if-eqz v0, :cond_0

    .line 1862
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1863
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResumedRunning:Z

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 1870
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1258
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onStop()V

    .line 1259
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mResetDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1263
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 1843
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->showCurrentTab()V

    .line 1844
    return-void
.end method

.method public showCurrentTab()V
    .locals 4

    .prologue
    .line 1818
    const-string v1, "Downloaded"

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1819
    const/4 v0, 0x1

    .line 1836
    .local v0, newOption:I
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    .line 1837
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->selectView(I)V

    .line 1838
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateStorageUsage()V

    .line 1839
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->updateOptionsMenu()V

    .line 1840
    .end local v0           #newOption:I
    :cond_0
    :goto_1
    return-void

    .line 1820
    :cond_1
    const-string v1, "All"

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1821
    const/4 v0, 0x0

    .restart local v0       #newOption:I
    goto :goto_0

    .line 1822
    .end local v0           #newOption:I
    :cond_2
    const-string v1, "OnSdCard"

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1823
    const/4 v0, 0x2

    .restart local v0       #newOption:I
    goto :goto_0

    .line 1824
    .end local v0           #newOption:I
    :cond_3
    const-string v1, "Running"

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1825
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getInternalActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1829
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplicationsFragment;->selectView(I)V

    goto :goto_1
.end method

.method updateOptionsMenu()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1334
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7}, Landroid/view/Menu;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 1343
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v7, v7, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v7}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v4

    .line 1345
    .local v4, showingBackground:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1346
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1347
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1348
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x7

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-nez v4, :cond_5

    :goto_2
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1349
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v6, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1360
    .end local v4           #showingBackground:Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1362
    .local v2, dm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1363
    .local v0, admins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 1364
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1365
    .local v1, comp:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.threelm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1366
    sget-boolean v6, Lcom/android/settings/applications/ManageApplicationsFragment;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1367
    sget-object v6, Lcom/android/settings/applications/ManageApplicationsFragment;->TAG:Ljava/lang/String;

    const-string v7, "RESET_APP_PREFERENCES is invisible by 3LM which is an active admin"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v6, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v0           #admins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1           #comp:Landroid/content/ComponentName;
    .end local v2           #dm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    move v4, v5

    .line 1343
    goto :goto_1

    .restart local v4       #showingBackground:Z
    :cond_5
    move v6, v5

    .line 1348
    goto :goto_2

    .line 1351
    .end local v4           #showingBackground:Z
    :cond_6
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    if-eq v7, v9, :cond_7

    move v7, v6

    :goto_4
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1352
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mSortOrder:I

    if-eq v7, v10, :cond_8

    move v7, v6

    :goto_5
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1353
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1354
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    const/4 v8, 0x7

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1355
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_7
    move v7, v5

    .line 1351
    goto :goto_4

    :cond_8
    move v7, v5

    .line 1352
    goto :goto_5
.end method

.method updateStorageUsage()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1711
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mCurView:I

    if-ne v0, v1, :cond_0

    .line 1740
    :goto_0
    return-void

    .line 1715
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mFilterApps:I

    if-ne v0, v1, :cond_2

    .line 1716
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mLastShowedInternalStorage:Z

    if-eqz v0, :cond_1

    .line 1717
    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mLastShowedInternalStorage:Z

    .line 1722
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->m1LineTextStorageBar:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTargetVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    .line 1734
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplicationsFragment$ApplicationsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1735
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1724
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mLastShowedInternalStorage:Z

    if-nez v0, :cond_3

    .line 1725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mLastShowedInternalStorage:Z

    .line 1728
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->m1LineTextStorageBar:Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mDataVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/widget/HtcListItem1LineTextStorageBar;->attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    goto :goto_1

    .line 1737
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mCurDialog:Landroid/app/Dialog;

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Lcom/htc/widget/HtcListView;

.field mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mProgressBar:Lcom/htc/widget/HtcProgressBar;

.field mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMyUserId:I

    return-void
.end method

.method private addAutoTestLog(Lcom/htc/widget/HtcListView;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningProcessesView$1;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "process"

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "background"

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0fca

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f0400dc

    invoke-virtual {v2, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    const v5, 0x1020004

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/settings/framework/widget/HtcListViewWrapper;->fillEmptySpace(Lcom/htc/widget/HtcListView;Z)V

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    new-instance v5, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v5, p0, v6}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v5, 0x7f0900d8

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "section_divider_top"

    const v7, 0x2080099

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v5, 0x7f0900d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    const v6, 0x7f0c0fc2

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setPrimaryText(I)V

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcProgressBar;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v5, v3, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v5, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-direct {p0, v5}, Lcom/android/settings/applications/RunningProcessesView;->addAutoTestLog(Lcom/htc/widget/HtcListView;)V

    return-void
.end method

.method public doPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 21

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    check-cast v15, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v3, v15

    check-cast v3, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v15}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->readMemInfo()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v15}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getFreeSize()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getCachedSize()J

    move-result-wide v17

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    move-wide/from16 v17, v0

    sub-long v4, v15, v17

    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-gez v15, :cond_2

    const-wide/16 v4, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v0, v15, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    const-wide/16 v6, 0x0

    :try_start_0
    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v15, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-wide/from16 v17, v0

    cmp-long v15, v17, v4

    if-eqz v15, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v15

    if-eqz v15, :cond_7

    iget-wide v6, v8, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v15, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v17

    sub-long v17, v17, v6

    move-wide/from16 v0, v17

    invoke-static {v15, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " / "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setStampText(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-eqz v15, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v15}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v11, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    add-long v17, v17, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v12, v0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-wide v6, v8, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v15}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v17

    sub-long v13, v17, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    const-wide/16 v17, 0x64

    mul-long v17, v17, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v19

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    monitor-exit v16

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    add-long v6, v17, v19

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    add-long v6, v17, v19

    goto :goto_1

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method updateTimes()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method

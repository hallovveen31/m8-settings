.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
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
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 544
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 93
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 94
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 95
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 96
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 97
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 98
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 99
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 103
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-direct {v0}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    .line 545
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMyUserId:I

    .line 546
    return-void
.end method

.method private addAutoTestLog(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 634
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    if-eqz p1, :cond_0

    .line 639
    new-instance v0, Lcom/android/settings/applications/RunningProcessesView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningProcessesView$1;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 7
    .parameter "mi"

    .prologue
    const/4 v4, 0x0

    .line 523
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 525
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v2, args:Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 527
    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 528
    const-string v1, "process"

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_0
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    const-string v1, "background"

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 534
    .local v0, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0fca

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 537
    .end local v0           #pa:Lcom/htc/preference/HtcPreferenceActivity;
    .end local v2           #args:Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 553
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0400dc

    invoke-virtual {v2, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 554
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    .line 555
    const v5, 0x1020004

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 556
    .local v1, emptyView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 557
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 559
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/settings/framework/widget/HtcListViewWrapper;->fillEmptySpace(Lcom/htc/widget/HtcListView;Z)V

    .line 560
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 561
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 562
    new-instance v5, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v5, p0, v6}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 563
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 565
    const v5, 0x7f0900d8

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem;

    .line 566
    .local v4, progressItem:Lcom/htc/widget/HtcListItem;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "section_divider_top"

    const v7, 0x2080099

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 569
    .local v0, backgroundId:I
    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItem;->setBackgroundResource(I)V

    .line 571
    const v5, 0x7f0900d9

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    .line 573
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    const v6, 0x7f0c0fc2

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->setPrimaryText(I)V

    .line 574
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->m1LineTextProgressBar:Lcom/htc/widget/HtcListItem1LineTextProgressBar;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItem1LineTextProgressBar;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcProgressBar;

    iput-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    .line 576
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 577
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 578
    iget-wide v5, v3, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v5, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 580
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-direct {p0, v5}, Lcom/android/settings/applications/RunningProcessesView;->addAutoTestLog(Lcom/htc/widget/HtcListView;)V

    .line 581
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 585
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 586
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 587
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "owner"
    .parameter "dataAvail"

    .prologue
    const/4 v0, 0x1

    .line 590
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 591
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 592
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 599
    :goto_0
    return v0

    .line 598
    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 599
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
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
    .line 515
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcListView;

    .line 516
    .local v0, l:Lcom/htc/widget/HtcListView;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 517
    .local v1, mi:Lcom/android/settings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 518
    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 519
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 617
    packed-switch p1, :pswitch_data_0

    .line 630
    :goto_0
    return-void

    .line 619
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 622
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 626
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 21
    .parameter "dataChanged"

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v15}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    check-cast v15, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v3, v15

    check-cast v3, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 366
    .local v3, adapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 367
    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 370
    .end local v3           #adapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v15, :cond_1

    .line 371
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    .line 372
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 377
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v15}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->readMemInfo()V

    .line 378
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

    .line 380
    .local v4, availMem:J
    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-gez v15, :cond_2

    .line 381
    const-wide/16 v4, 0x0

    .line 384
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v0, v15, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 386
    const-wide/16 v6, 0x0

    .line 387
    .local v6, freeMem:J
    :try_start_0
    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 388
    .local v8, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v15, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 390
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

    .line 393
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 395
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 418
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 419
    iget-wide v6, v8, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 428
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v15, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, sizeTotalStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

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

    .line 450
    .local v10, sizeUsedStr:Ljava/lang/String;
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

    .line 455
    .end local v9           #sizeTotalStr:Ljava/lang/String;
    .end local v10           #sizeUsedStr:Ljava/lang/String;
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

    .line 459
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v15, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 471
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v15}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v11, v0

    .line 472
    .local v11, totalMem:F
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

    .line 499
    .local v12, totalShownMem:F
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 500
    iget-wide v6, v8, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 509
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/settings/framework/core/storage/HtcMemInfoReader;

    invoke-virtual {v15}, Lcom/android/settings/framework/core/storage/HtcMemInfoReader;->getTotalSize()J

    move-result-wide v17

    sub-long v13, v17, v6

    .line 510
    .local v13, usedMem:J
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

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 511
    monitor-exit v16

    .line 512
    return-void

    .line 422
    .end local v11           #totalMem:F
    .end local v12           #totalShownMem:F
    .end local v13           #usedMem:J
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    add-long v6, v17, v19

    goto/16 :goto_0

    .line 503
    .restart local v11       #totalMem:F
    .restart local v12       #totalShownMem:F
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v19, v0

    add-long v6, v17, v19

    goto :goto_1

    .line 511
    .end local v8           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    .end local v11           #totalMem:F
    .end local v12           #totalShownMem:F
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 603
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 604
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 606
    .local v0, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 613
    .end local v0           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method

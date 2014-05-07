.class public Lcom/android/settings/framework/app/HtcListActivity;
.super Landroid/app/Activity;
.source "HtcListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mFinishedStart:Z

    new-instance v0, Lcom/android/settings/framework/app/HtcListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcListActivity$1;-><init>(Lcom/android/settings/framework/app/HtcListActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mRequestFocus:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/framework/app/HtcListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcListActivity$2;-><init>(Lcom/android/settings/framework/app/HtcListActivity;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcListActivity;->ensureList()V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-boolean v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mFinishedStart:Z

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcListActivity;->ensureList()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcListActivity;->ensureList()V

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcListActivity;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

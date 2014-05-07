.class Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 256
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    .line 257
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 260
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 348
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v4, v3, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 353
    monitor-exit v4

    .line 360
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 356
    .local v2, vh:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 357
    .local v1, item:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 358
    .local v0, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 326
    if-nez p2, :cond_1

    .line 327
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, v:Landroid/view/View;
    :goto_0
    instance-of v1, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 334
    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    .line 337
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 338
    return-object v0

    .line 329
    .end local v0           #v:Landroid/view/View;
    :cond_1
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 344
    return-object v0
.end method

.method refreshItems()V
    .locals 3

    .prologue
    .line 278
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 281
    .local v0, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 282
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 283
    if-nez v0, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 293
    :cond_0
    :goto_1
    return-void

    .line 278
    .end local v0           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 286
    .restart local v0       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method setShowBackground(Z)V
    .locals 1
    .parameter "showBackground"

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 264
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 265
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 271
    :cond_0
    return-void
.end method

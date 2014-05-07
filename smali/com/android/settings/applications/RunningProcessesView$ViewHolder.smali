.class public Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Lcom/htc/widget/HtcListItemColorIcon;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public stampView:Lcom/htc/widget/HtcListItem2LineStamp;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f090008

    const v1, 0x7f09004d

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 176
    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 177
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 178
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->stampView:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem2LineStamp;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem2LineStamp;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 182
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .locals 9
    .parameter "state"
    .parameter "item"
    .parameter "builder"

    .prologue
    .line 187
    iget-object v6, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 188
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 189
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v5, :cond_0

    instance-of v5, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v5, :cond_0

    .line 192
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v3, v0

    .line 193
    .local v3, mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v5, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_0

    .line 194
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 195
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 196
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 200
    .end local v3           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->stampView:Lcom/htc/widget/HtcListItem2LineStamp;

    if-eqz v5, :cond_2

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, bHideSecondaryText:Z
    instance-of v5, p2, Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v5, :cond_3

    .line 203
    const/4 v2, 0x1

    .line 214
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 215
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->stampView:Lcom/htc/widget/HtcListItem2LineStamp;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    .line 221
    .end local v2           #bHideSecondaryText:Z
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 223
    .local v1, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v5, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 224
    iput-object p2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 225
    iput-object p0, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 226
    iget-wide v7, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v7, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 227
    iget-boolean v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v5, :cond_7

    .line 228
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0fbc

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 233
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v7, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p2, v7, p1}, Lcom/android/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 235
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, p3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 236
    monitor-exit v6

    return-object v1

    .line 204
    .end local v1           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .restart local v2       #bHideSecondaryText:Z
    :cond_3
    iget-boolean v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v5, :cond_4

    .line 205
    const/4 v2, 0x1

    goto :goto_0

    .line 206
    :cond_4
    instance-of v5, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v5, :cond_5

    .line 207
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 208
    const/4 v2, 0x1

    goto :goto_0

    .line 210
    :cond_5
    instance-of v5, p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_1

    .line 211
    const/4 v2, 0x1

    goto :goto_0

    .line 217
    :cond_6
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->stampView:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    goto :goto_1

    .line 237
    .end local v2           #bHideSecondaryText:Z
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 230
    .restart local v1       #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

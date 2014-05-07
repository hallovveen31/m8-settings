.class public Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;
.super Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HtcNotificationHistoryAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/NotificationStation;


# direct methods
.method public constructor <init>(Lcom/android/settings/NotificationStation;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;->this$0:Lcom/android/settings/NotificationStation;

    .line 599
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;-><init>(Lcom/android/settings/NotificationStation;Landroid/content/Context;)V

    .line 600
    iput-object p2, p0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;->mContext:Landroid/content/Context;

    .line 601
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;

    .line 643
    .local v2, holder:Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;
    invoke-virtual {p0, p2}, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    .line 654
    .local v3, info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->iconView:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    .line 656
    .local v0, badge:Lcom/htc/widget/QuickContactBadge;
    iget-object v4, v3, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 657
    iget-object v4, v3, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/htc/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Lcom/htc/widget/QuickContactBadge;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 667
    :cond_0
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->titleTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, v3, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->titleTextView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, v3, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 672
    new-instance v1, Landroid/widget/DateTimeView;

    iget-object v4, p0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;)V

    .line 673
    .local v1, dateTimeView:Landroid/widget/DateTimeView;
    iget-wide v4, v3, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v1, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 674
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->stampTextView:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {v1}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 677
    const/4 v4, 0x1

    iget-boolean v5, v3, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-ne v4, v5, :cond_1

    .line 678
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->stampTextView:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    .line 679
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->stampTextView:Lcom/htc/widget/HtcListItem2LineStamp;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->stampTextView:Lcom/htc/widget/HtcListItem2LineStamp;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    .line 683
    iget-object v4, v2, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->stampTextView:Lcom/htc/widget/HtcListItem2LineStamp;

    const v5, 0x7f0c00ef

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(I)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 606
    if-nez p2, :cond_0

    .line 607
    invoke-virtual {p0, p3}, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 613
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;->bindView(Landroid/view/View;I)V

    .line 615
    return-object v0

    .line 610
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 623
    iget-object v2, p0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04006e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 625
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;

    invoke-direct {v0}, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;-><init>()V

    .line 627
    .local v0, holder:Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;
    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->item:Lcom/htc/widget/HtcListItem;

    .line 628
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemQuickContactBadge;

    iput-object v2, v0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->iconView:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 629
    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->titleTextView:Lcom/htc/widget/HtcListItem2LineText;

    .line 630
    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v2, v0, Lcom/android/settings/NotificationStation$HtcNotificationHistoryViewHolder;->stampTextView:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 632
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 634
    return-object v1
.end method

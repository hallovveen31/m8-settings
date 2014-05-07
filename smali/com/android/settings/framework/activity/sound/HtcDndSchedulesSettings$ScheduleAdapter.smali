.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcDndSchedulesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    .line 377
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 378
    iput-object p2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mContext:Landroid/content/Context;

    .line 379
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    .line 382
    return-void
.end method

.method private applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "bEnabled"

    .prologue
    .line 609
    if-eqz p3, :cond_0

    .line 610
    const v0, 0x7f0f002e

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 611
    const/high16 v0, 0x3f80

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 616
    :goto_0
    return-void

    .line 613
    :cond_0
    const v0, 0x7f0f002f

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 614
    const/high16 v0, 0x3f00

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private bindScheduleRepeatDaysView(Landroid/content/Context;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;I)V
    .locals 4
    .parameter "context"
    .parameter "holder"
    .parameter "repeatValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSunView:Landroid/widget/TextView;

    const v1, 0x7f0c06c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 553
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSunView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 560
    :goto_0
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mMonView:Landroid/widget/TextView;

    const v1, 0x7f0c06c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 561
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mMonView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 568
    :goto_1
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mTueView:Landroid/widget/TextView;

    const v1, 0x7f0c06c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 569
    and-int/lit16 v0, p3, 0x100

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mTueView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 576
    :goto_2
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mWedView:Landroid/widget/TextView;

    const v1, 0x7f0c06c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    and-int/lit16 v0, p3, 0x1000

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mWedView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 584
    :goto_3
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mThuView:Landroid/widget/TextView;

    const v1, 0x7f0c06c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 585
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mThuView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 592
    :goto_4
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mFriView:Landroid/widget/TextView;

    const v1, 0x7f0c06c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 593
    const/high16 v0, 0x10

    and-int/2addr v0, p3

    if-eqz v0, :cond_5

    .line 594
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mFriView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 600
    :goto_5
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSatView:Landroid/widget/TextView;

    const v1, 0x7f0c06c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 601
    const/high16 v0, 0x100

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    .line 602
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSatView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 606
    :goto_6
    return-void

    .line 556
    :cond_0
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSunView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mMonView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    goto :goto_1

    .line 572
    :cond_2
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mTueView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    goto :goto_2

    .line 580
    :cond_3
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mWedView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    goto :goto_3

    .line 588
    :cond_4
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mThuView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    goto :goto_4

    .line 596
    :cond_5
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mFriView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    goto :goto_5

    .line 604
    :cond_6
    iget-object v0, p2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSatView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->applyTextStyle(Landroid/content/Context;Landroid/widget/TextView;Z)V

    goto :goto_6
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 10
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 503
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    .line 506
    .local v2, item:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    iget v4, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 548
    :goto_0
    return-void

    .line 508
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;

    .line 509
    .local v1, categoryHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;
    iget-object v4, v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;->mSeparator:Lcom/htc/widget/HtcListItemSeparator;

    iget-object v5, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mCategoryString:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    .end local v1           #categoryHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;

    .line 515
    .local v3, scheduleHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;
    iget-object v4, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mScheduleStartTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    iget v6, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartHour:I

    iget v7, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartMinute:I

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getScheduleTimeText(ZII)Ljava/lang/String;
    invoke-static {v5, v9, v6, v7}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v4, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mScheduleEndTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    iget v6, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndHour:I

    iget v7, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndMinute:I

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getScheduleTimeText(ZII)Ljava/lang/String;
    invoke-static {v5, v8, v6, v7}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v4, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mAllowedContacts:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    iget-object v6, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mContext:Landroid/content/Context;

    iget v7, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mAllowedContacts:I

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getAllowedContactsInText(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1300(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v4, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mContext:Landroid/content/Context;

    iget v5, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mRepeat:I

    invoke-direct {p0, v4, v3, v5}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->bindScheduleRepeatDaysView(Landroid/content/Context;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;I)V

    .line 524
    iget-object v4, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    .line 525
    iget-object v4, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    iget v5, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcCheckBox;->setTag(Ljava/lang/Object;)V

    .line 526
    iget-object v4, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    iget-boolean v5, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEnable:Z

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 528
    iget-object v4, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleItemCheckedListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;
    invoke-static {v5}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1400(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcCheckBox;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 532
    .end local v3           #scheduleHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;

    .line 534
    .local v0, calendarHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;
    iget-object v4, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mScheduleStartTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    iget v6, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartHour:I

    iget v7, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartMinute:I

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getScheduleTimeText(ZII)Ljava/lang/String;
    invoke-static {v5, v9, v6, v7}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v4, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mScheduleEndTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    iget v6, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndHour:I

    iget v7, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndMinute:I

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getScheduleTimeText(ZII)Ljava/lang/String;
    invoke-static {v5, v8, v6, v7}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v4, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    iget-object v6, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventTitle:Ljava/lang/String;

    iget v7, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventColor:I

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getColoredText(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    invoke-static {v5, v6, v7}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1500(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v4, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventRepeatSummary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private newView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 10
    .parameter "parent"
    .parameter "position"

    .prologue
    const v9, 0x7f090217

    const v8, 0x7f090216

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 457
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    .line 458
    .local v2, item:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    const/4 v4, 0x0

    .line 460
    .local v4, v:Landroid/view/View;
    iget v5, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 499
    :goto_0
    return-object v4

    .line 462
    :pswitch_0
    new-instance v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;

    invoke-direct {v1, v6}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    .line 463
    .local v1, categoryHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;
    new-instance v4, Lcom/htc/widget/HtcListItemSeparator;

    .end local v4           #v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;)V

    .line 464
    .restart local v4       #v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCurOrientation:I
    invoke-static {v5}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$800(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)I

    move-result v5

    iput v5, v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;->mOrientation:I

    move-object v5, v4

    .line 465
    check-cast v5, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v5, v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;->mSeparator:Lcom/htc/widget/HtcListItemSeparator;

    .line 466
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    .end local v1           #categoryHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;
    :pswitch_1
    new-instance v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;

    invoke-direct {v3, v6}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    .line 471
    .local v3, scheduleHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400f7

    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 472
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCurOrientation:I
    invoke-static {v5}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$800(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)I

    move-result v5

    iput v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mOrientation:I

    .line 473
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mScheduleStartTime:Landroid/widget/TextView;

    .line 474
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mScheduleEndTime:Landroid/widget/TextView;

    .line 475
    const v5, 0x7f090219

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mAllowedContacts:Landroid/widget/TextView;

    .line 476
    const v5, 0x7f09021b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSunView:Landroid/widget/TextView;

    .line 477
    const v5, 0x7f09021c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mMonView:Landroid/widget/TextView;

    .line 478
    const v5, 0x7f09021d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mTueView:Landroid/widget/TextView;

    .line 479
    const v5, 0x7f09021e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mWedView:Landroid/widget/TextView;

    .line 480
    const v5, 0x7f09021f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mThuView:Landroid/widget/TextView;

    .line 481
    const v5, 0x7f090220

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mFriView:Landroid/widget/TextView;

    .line 482
    const v5, 0x7f090221

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mSatView:Landroid/widget/TextView;

    .line 483
    const v5, 0x7f090222

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcCheckBox;

    iput-object v5, v3, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 484
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 488
    .end local v3           #scheduleHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;
    :pswitch_2
    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;

    invoke-direct {v0, v6}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    .line 489
    .local v0, calendarHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400f6

    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 490
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mScheduleStartTime:Landroid/widget/TextView;

    .line 491
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mScheduleEndTime:Landroid/widget/TextView;

    .line 492
    const v5, 0x7f090021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v5, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    .line 493
    iget-object v5, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 494
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCurOrientation:I
    invoke-static {v5}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$800(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)I

    move-result v5

    iput v5, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;->mOrientation:I

    .line 495
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDividerType(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 679
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v3

    .line 683
    :cond_1
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 684
    .local v0, count:I
    if-ltz v0, :cond_0

    if-ge p1, v0, :cond_0

    .line 689
    add-int/lit8 v5, p1, 0x1

    if-lt v5, v0, :cond_2

    move v3, v4

    .line 690
    goto :goto_0

    .line 693
    :cond_2
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    .line 694
    .local v1, curItem:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    if-eqz v1, :cond_0

    .line 698
    iget v5, v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    if-eqz v5, :cond_0

    .line 702
    iget-object v5, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    .line 703
    .local v2, nextItem:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    if-eqz v2, :cond_3

    iget v5, v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    if-eqz v5, :cond_0

    :cond_3
    move v3, v4

    .line 708
    goto :goto_0
.end method

.method public getItem(I)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->getItem(I)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->getItem(I)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    move-result-object v0

    .line 621
    .local v0, item:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    if-nez v0, :cond_0

    .line 622
    const/4 v1, 0x0

    .line 625
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    goto :goto_0
.end method

.method public getSchedulingCount()I
    .locals 5

    .prologue
    .line 661
    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 662
    const/4 v0, 0x0

    .line 675
    :cond_0
    return v0

    .line 665
    :cond_1
    const/4 v0, 0x0

    .line 667
    .local v0, count:I
    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 668
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    .line 670
    .local v1, item:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    iget v3, v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 438
    if-nez p2, :cond_0

    .line 440
    invoke-direct {p0, p3, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->newView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 451
    .local v1, v:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->bindView(Landroid/view/View;I)V

    .line 453
    return-object v1

    .line 442
    .end local v1           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;

    .line 443
    .local v0, baseHolder:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCurOrientation:I
    invoke-static {v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$800(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)I

    move-result v2

    iget v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;->mOrientation:I

    if-eq v2, v3, :cond_1

    .line 445
    invoke-direct {p0, p3, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->newView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .line 448
    .end local v1           #v:Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->getItem(I)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    move-result-object v0

    .line 392
    .local v0, item:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    iget v2, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    if-eqz v2, :cond_0

    .line 400
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;>;"
    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    .line 405
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->notifyDataSetInvalidated()V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateScheduleEnabled(IZ)V
    .locals 6
    .parameter "scheduleId"
    .parameter "bEnabled"

    .prologue
    .line 634
    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 635
    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScheduleEnabled, data is empty, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->mData:Ljava/util/ArrayList;

    .line 646
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 647
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    .line 649
    .local v0, item:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 653
    iget v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mId:I

    if-ne v3, p1, :cond_2

    .line 654
    iput-boolean p2, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEnable:Z

    goto :goto_0
.end method

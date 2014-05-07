.class public Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcDndSchedulesSettings.java"

# interfaces
.implements Lcom/htc/widget/IDividerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;,
        Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;,
        Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;,
        Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CategoryViewHolder;,
        Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;,
        Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;,
        Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ITEM_TYPE_CALENDAR:I = 0x2

.field private static final ITEM_TYPE_CATEGORY:I = 0x0

.field private static final ITEM_TYPE_COUNT:I = 0x3

.field private static final ITEM_TYPE_SCHEDULE:I = 0x1

.field private static final MSG_UPDATE_LIST:I = 0x1001

.field private static final NONUI_REFRESH_LIST:I = 0x1001

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mCalendar:Ljava/util/Calendar;

.field private mCurOrientation:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDndEnabledObserver:Landroid/database/ContentObserver;

.field private mEmptyView:Lcom/htc/widget/HtcEmptyView;

.field private mIsActivityResumed:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mList:Lcom/htc/widget/HtcListView;

.field private mScheduleItemCheckedListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

.field private mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

.field private mScheduleRecordComparator:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;

.field private mSupportAllCaps:Z

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mIsActivityResumed:Z

    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleItemCheckedListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->performRefreshListByCheck()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZII)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getScheduleTimeText(ZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getAllowedContactsInText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleItemCheckedListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getColoredText(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->startEditFragment(ZIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->startCalendarDetails(IJJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCurOrientation:I

    return v0
.end method

.method private getAllowedContactsInText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0c06b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c06b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c06ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getColoredText(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private getScheduleData()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;",
            ">;"
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleRecordComparator:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    const/4 v3, 0x0

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mCategoryString:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    new-instance v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    const/4 v3, 0x1

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mId:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartHour()I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartHour:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getStartMinute()I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartMinute:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndHour()I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndHour:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getEndMinute()I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndMinute:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getRepeat()I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mRepeat:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getAllowedContacts()I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mAllowedContacts:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->isEnabled()Z

    move-result v3

    iput-boolean v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEnable:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v8, 0x1e

    invoke-static {v3, v8, v9}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getCalendarEvent(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    const/4 v3, 0x0

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mCategoryString:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v18, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    :cond_1
    new-instance v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    const/4 v3, 0x2

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mId:I

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventTitle:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventColor:I

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v3, 0x7

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v6, v7, v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustStartMillis(Landroid/text/format/Time;IJI)J

    move-result-wide v24

    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartHour:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/format/Time;->minute:I

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mStartMinute:I

    move-wide/from16 v0, v24

    iput-wide v0, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventStartMillis:J

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v13, v14, v12}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndMillis(Landroid/text/format/Time;IJI)J

    move-result-wide v24

    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndHour:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/text/format/Time;->minute:I

    iput v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEndMinute:I

    move-wide/from16 v0, v24

    iput-wide v0, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventEndMillis:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mSupportAllCaps:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mDateFormat:Ljava/text/DateFormat;

    iget-wide v8, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventStartMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    :goto_1
    const/16 v3, 0xa

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const/16 v22, 0x0

    iput-object v10, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventRepeatSummary:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v16

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mDateFormat:Ljava/text/DateFormat;

    iget-wide v8, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventStartMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/htc/util/calendar/EventRecurrenceUtils;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v8, 0x1

    move/from16 v0, v19

    if-ne v0, v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    const/4 v9, 0x1

    move/from16 v0, v19

    if-ne v0, v9, :cond_7

    const-string v9, "UTC"

    :goto_4
    invoke-direct/range {v3 .. v9}, Lcom/htc/util/calendar/EventRecurrenceUtils;-><init>(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/htc/util/calendar/EventRecurrenceUtils;->getRepeatString()Ljava/lang/String;

    move-result-object v22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventRepeatSummary:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    goto :goto_4
.end method

.method private getScheduleTimeText(ZII)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mDndEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initActionBar()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x208

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    new-instance v2, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$2;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    return-void
.end method

.method private performRefreshListByCheck()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->TAG:Ljava/lang/String;

    const-string v1, "performRefreshListByCheck, refresh list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1001

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private refreshScheduleData()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->getScheduleData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showLoadingView(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mEmptyView:Lcom/htc/widget/HtcEmptyView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEmptyView;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mEmptyView:Lcom/htc/widget/HtcEmptyView;

    const v1, 0x7f0c06b1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEmptyView;->setText(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private showMaxSchedulingDialog()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->TAG:Ljava/lang/String;

    const-string v2, "showMaxSchedulingDialog, unabled to get activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06bd

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c06be

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040258

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private startCalendarDetails(IJJ)V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->TAG:Ljava/lang/String;

    const-string v2, "startCalendarDetails, unable to get activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->TAG:Ljava/lang/String;

    const-string v2, "startCalendarDetails, unabled to get calendar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    int-to-long v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->generateEventUri(JJJ)Landroid/net/Uri;

    move-result-object v8

    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startEditFragment(ZIZ)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->TAG:Ljava/lang/String;

    const-string v3, "startEditFragment, adapter is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->getSchedulingCount()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->showMaxSchedulingDialog()V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "add_schedule"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "schedule_id"

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "schedule_enabled"

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c06b0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mIsActivityResumed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->setData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public getDividerType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->getDividerType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c06a2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->initActionBar()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCurOrientation:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mSupportAllCaps:Z

    new-instance v1, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setDividerController(Lcom/htc/widget/IDividerController;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcEmptyView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mEmptyView:Lcom/htc/widget/HtcEmptyView;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->showLoadingView(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mEmptyView:Lcom/htc/widget/HtcEmptyView;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    new-instance v1, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400f7

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCurOrientation:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleRecordComparator:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->requestHandlers()V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->init()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x2080001

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f040020

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onDestroy()V

    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mIsActivityResumed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->refreshScheduleData()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mIsActivityResumed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mIsActivityResumed:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_feature_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mIsActivityResumed:Z

    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResumeInBackground()V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->refreshScheduleData()V

    return-void
.end method

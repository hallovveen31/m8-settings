.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;
.super Ljava/lang/Object;
.source "HtcDndSchedulesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleItem"
.end annotation


# instance fields
.field public mAllowedContacts:I

.field public mCategoryString:Ljava/lang/String;

.field public mEnable:Z

.field public mEndHour:I

.field public mEndMinute:I

.field public mEventColor:I

.field public mEventEndMillis:J

.field public mEventRepeatSummary:Ljava/lang/String;

.field public mEventStartMillis:J

.field public mEventTitle:Ljava/lang/String;

.field public mId:I

.field public mRepeat:I

.field public mStartHour:I

.field public mStartMinute:I

.field public mType:I

.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V

    return-void
.end method

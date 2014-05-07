.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;
.super Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;
.source "HtcDndSchedulesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarViewHolder"
.end annotation


# instance fields
.field public mScheduleEndTime:Landroid/widget/TextView;

.field public mScheduleStartTime:Landroid/widget/TextView;

.field public mText:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$CalendarViewHolder;-><init>()V

    return-void
.end method

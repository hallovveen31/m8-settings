.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;
.super Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;
.source "HtcDndSchedulesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScheduleViewHolder"
.end annotation


# instance fields
.field public mAllowedContacts:Landroid/widget/TextView;

.field public mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field public mFriView:Landroid/widget/TextView;

.field public mMonView:Landroid/widget/TextView;

.field public mSatView:Landroid/widget/TextView;

.field public mScheduleEndTime:Landroid/widget/TextView;

.field public mScheduleStartTime:Landroid/widget/TextView;

.field public mSunView:Landroid/widget/TextView;

.field public mThuView:Landroid/widget/TextView;

.field public mTueView:Landroid/widget/TextView;

.field public mWedView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ViewHolder;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleViewHolder;-><init>()V

    return-void
.end method

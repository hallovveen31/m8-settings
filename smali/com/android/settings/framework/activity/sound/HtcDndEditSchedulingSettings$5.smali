.class Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;
.super Ljava/lang/Object;
.source "HtcDndEditSchedulingSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$300(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$300(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$500(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$400(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$500(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$400(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$500(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mTodayCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$400(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mStartTimeCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$300(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->mEndTimeCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$500(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->adjustEndTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings$5;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->refreshScheduleUI()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;->access$600(Lcom/android/settings/framework/activity/sound/HtcDndEditSchedulingSettings;)V

    return-void
.end method

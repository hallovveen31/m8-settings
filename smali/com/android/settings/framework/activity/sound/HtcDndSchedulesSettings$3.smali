.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;
.super Ljava/lang/Object;
.source "HtcDndSchedulesSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$300(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemClick, adapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;
    invoke-static {v0}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$300(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->getItem(I)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, item is null, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, v6, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, category item, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    const/4 v1, 0x0

    iget v2, v6, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mId:I

    iget-boolean v3, v6, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEnable:Z

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->startEditFragment(ZIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$200(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;ZIZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$3;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    iget v1, v6, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mId:I

    iget-wide v2, v6, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventStartMillis:J

    iget-wide v4, v6, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleItem;->mEventEndMillis:J

    #calls: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->startCalendarDetails(IJJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$600(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;IJJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;
.super Ljava/lang/Object;
.source "HtcDndSchedulesSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;
    invoke-static {v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1600(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCheckedChanged, schedule mgr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;
    invoke-static {v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1600(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->getRecordById(I)Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged, can find record for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged, schedule id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", checked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1, p2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mScheduleMgr:Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;
    invoke-static {v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$1600(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleManager;->addRecord(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)Z

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;
    invoke-static {v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$300(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    #getter for: Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->mAdapter:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;
    invoke-static {v2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;->access$300(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleAdapter;->updateScheduleEnabled(IZ)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$4;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->rescheduleEventTimer(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

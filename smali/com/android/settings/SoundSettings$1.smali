.class Lcom/android/settings/SoundSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x8

    const-wide/16 v7, 0x12c

    const/4 v6, 0x7

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v5}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHasDockModeProjects:Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v3}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/SoundSettings;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v3, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "SoundSettings"

    const-string v4, "RINGER_MODE_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->updateState(Z)V
    invoke-static {v3, v10}, Lcom/android/settings/SoundSettings;->access$600(Lcom/android/settings/SoundSettings;Z)V

    :cond_6
    :goto_2
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->getSoundMode(I)I
    invoke-static {v4, v2}, Lcom/android/settings/SoundSettings;->access$700(Lcom/android/settings/SoundSettings;I)I

    move-result v4

    #calls: Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V
    invoke-static {v3, v4}, Lcom/android/settings/SoundSettings;->access$800(Lcom/android/settings/SoundSettings;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->notifyVolumeChange()V
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mSilentlist:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcDialogPreference;->onActivityDestroy()V

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->isSupportCustomSoundProfile()Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "SoundSettings"

    const-string v4, "VOLUME_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->updateState(Z)V
    invoke-static {v3, v10}, Lcom/android/settings/SoundSettings;->access$600(Lcom/android/settings/SoundSettings;Z)V

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->notifyVolumeChange()V
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.soundprofile.profile_switched"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "SoundSettings"

    const-string v4, "action_sound_profile_switched"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.soundprofile.profile_compare_done"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "SoundSettings"

    const-string v4, "action_sound_profile_compare_done"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    iget-object v3, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SoundSettings$1;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

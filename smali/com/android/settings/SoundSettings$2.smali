.class Lcom/android/settings/SoundSettings$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$900(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$1000(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/SoundSettings;->UpdateCustomizeProfileEntry()V

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v2, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1100(Lcom/android/settings/SoundSettings;)I

    move-result v2

    #calls: Lcom/android/settings/SoundSettings;->getSoundMode(I)I
    invoke-static {v1, v2}, Lcom/android/settings/SoundSettings;->access$700(Lcom/android/settings/SoundSettings;I)I

    move-result v1

    #calls: Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V
    invoke-static {v0, v1}, Lcom/android/settings/SoundSettings;->access$800(Lcom/android/settings/SoundSettings;I)V

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->showSoundProfile()V
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$1200(Lcom/android/settings/SoundSettings;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "SoundSettings"

    const-string v1, "MSG_NOTIFY_PROFILE_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->notifyVolumeChange()V
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)V

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_5
    const-string v0, "SoundSettings"

    const-string v1, "MSG_CHECK_CUSTOMIZE_PROFILE_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v2, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->getRingerModeFromMM()I
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1100(Lcom/android/settings/SoundSettings;)I

    move-result v2

    #calls: Lcom/android/settings/SoundSettings;->getSoundMode(I)I
    invoke-static {v1, v2}, Lcom/android/settings/SoundSettings;->access$700(Lcom/android/settings/SoundSettings;I)I

    move-result v1

    #calls: Lcom/android/settings/SoundSettings;->updateSilentListSummaryAndNotify(I)V
    invoke-static {v0, v1}, Lcom/android/settings/SoundSettings;->access$800(Lcom/android/settings/SoundSettings;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$1300(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$1400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$1500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$1300(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SoundSettings"

    const-string v1, "add mRingtoneSlot2 in CallCategory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mCallCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$1500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$1300(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v0, p0, Lcom/android/settings/SoundSettings$2;->this$0:Lcom/android/settings/SoundSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/SoundSettings;->mIsPostCreateDone:Z
    invoke-static {v0, v1}, Lcom/android/settings/SoundSettings;->access$1602(Lcom/android/settings/SoundSettings;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

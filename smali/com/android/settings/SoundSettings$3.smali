.class Lcom/android/settings/SoundSettings$3;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
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
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 698
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 699
    const-string v3, "SoundSettings"

    const-string v4, "ThreadDelayShowControl.join"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v3, v3, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    .line 702
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v3, v3, Lcom/android/settings/SoundSettings;->mThreadDelayShowControl:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 757
    :cond_1
    :goto_1
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 705
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 708
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v3, "SoundSettings"

    const-string v4, "DelayShowControl should call first!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 713
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$1700(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 714
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->getSupportDualSimSlot1Mode()Lcom/android/settings/SoundSettings$dual_ring_mode;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$1800(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$dual_ring_mode;

    move-result-object v3

    sget-object v4, Lcom/android/settings/SoundSettings$dual_ring_mode;->dual_ring_cdma:Lcom/android/settings/SoundSettings$dual_ring_mode;

    if-ne v3, v4, :cond_b

    .line 715
    const-string v1, "mode_cdma"

    .line 718
    .local v1, strRingMode1:Ljava/lang/String;
    :goto_2
    const-string v2, "mode_gsm"

    .line 722
    .local v2, strRingMode2:Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 725
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$900(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 726
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_4

    .line 727
    const-string v3, "SoundSettings"

    const-string v4, "lookup default ringtone name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v4, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$900(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    #calls: Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    invoke-static {v3, v6, v4, v6, v1}, Lcom/android/settings/SoundSettings;->access$1900(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V

    .line 731
    :cond_5
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 733
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$1300(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->isSupportDualSimMode()Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$1700(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 734
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_6

    .line 735
    const-string v3, "SoundSettings"

    const-string v4, "lookup ringtone2 name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_6
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v4, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtoneSlot2:Lcom/htc/preference/HtcPreference;
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$1300(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    const/16 v5, 0x9

    #calls: Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    invoke-static {v3, v6, v4, v5, v2}, Lcom/android/settings/SoundSettings;->access$1900(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V

    .line 739
    :cond_7
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 741
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$1000(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 742
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_8

    .line 743
    const-string v3, "SoundSettings"

    const-string v4, "lookup notifucation sound name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_8
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v4, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;
    invoke-static {v4}, Lcom/android/settings/SoundSettings;->access$1000(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    #calls: Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    invoke-static {v3, v7, v4, v7, v2}, Lcom/android/settings/SoundSettings;->access$1900(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V

    .line 747
    :cond_9
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mIsPause:Z
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$000(Lcom/android/settings/SoundSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 749
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$1400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 750
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_a

    .line 751
    const-string v3, "SoundSettings"

    const-string v4, "lookup alarm sound name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_a
    iget-object v3, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mAlarmSound:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/settings/SoundSettings;->access$1400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    const/16 v6, 0xa

    #calls: Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V
    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/settings/SoundSettings;->access$1900(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 717
    .end local v1           #strRingMode1:Ljava/lang/String;
    .end local v2           #strRingMode2:Ljava/lang/String;
    :cond_b
    const-string v1, "mode_wcdma"

    .restart local v1       #strRingMode1:Ljava/lang/String;
    goto/16 :goto_2

    .line 720
    .end local v1           #strRingMode1:Ljava/lang/String;
    :cond_c
    const-string v2, "mode_gsm"

    .restart local v2       #strRingMode2:Ljava/lang/String;
    move-object v1, v2

    .restart local v1       #strRingMode1:Ljava/lang/String;
    goto/16 :goto_3
.end method

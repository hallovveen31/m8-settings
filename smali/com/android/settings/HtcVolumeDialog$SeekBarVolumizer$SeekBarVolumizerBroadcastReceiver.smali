.class Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarVolumizerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;Lcom/android/settings/HtcVolumeDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-lez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    #setter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsHeadsetPlugged:Z
    invoke-static {v4, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$502(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;Z)Z

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$200(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_HEADSET_PLUG mIsHeadsetPlugged =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mIsHeadsetPlugged:Z
    invoke-static {v5}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$500(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$SeekBarVolumizerBroadcastReceiver;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mDelayUpdateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$600(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

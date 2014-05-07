.class Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;
.super Landroid/os/Handler;
.source "HtcVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$900(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I
    invoke-static {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    #setter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v1, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$802(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;I)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$200(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delay update message mOriginalStreamVolume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$800(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sStreamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I
    invoke-static {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$900(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I
    invoke-static {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_FLAG:Z
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$100(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$200(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StreamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I
    invoke-static {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is mute show as volume zero"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$1000(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$900(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$1;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->sStreamType:I
    invoke-static {v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$700(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    #setter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v1, v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$802(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;I)I

    goto/16 :goto_0
.end method

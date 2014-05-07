.class Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3;
.super Ljava/lang/Object;
.source "HtcVolumeDialog.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


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

    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    new-instance v0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3$1;-><init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3;)V

    iget-object v1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$3;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #getter for: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->mRingtoneCleanup:Z
    invoke-static {v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$1300(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, "RingerVolume"

    const-string v2, "getRingtone skip"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

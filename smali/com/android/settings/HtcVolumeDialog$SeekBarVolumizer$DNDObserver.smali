.class Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;
.super Landroid/database/ContentObserver;
.source "HtcVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DNDObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer$DNDObserver;->this$1:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    #calls: Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->getDNDStateInBackgroud()V
    invoke-static {v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->access$1800(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V

    return-void
.end method

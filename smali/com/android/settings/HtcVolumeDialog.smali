.class public Lcom/android/settings/HtcVolumeDialog;
.super Lcom/android/settings/HtcVolumeDialogBase;
.source "HtcVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcVolumeDialog$1;,
        Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;,
        Lcom/android/settings/HtcVolumeDialog$SavedState;,
        Lcom/android/settings/HtcVolumeDialog$VolumeStore;
    }
.end annotation


# static fields
.field private static final DND_UPDTDATE_ACTION:Ljava/lang/String; = "com.htc.settings.action.dnd.QS_UPDATE"

.field private static final HTC_PERMISSION_PLATFORM:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "RingerVolume"


# instance fields
.field private mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

.field private mStreamType:I

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/HtcVolumeDialog;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialogBase;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/HtcVolumeDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/HtcVolumeDialog;->mStreamType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/HtcVolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/HtcVolumeDialog;->LOGD:Z

    return v0
.end method

.method private cleanup()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10202fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stop()V

    iput-object v4, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog;->cleanup()V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase;->onBindDialogView(Landroid/view/View;)V

    const v1, 0x10202fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialogBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;-><init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog;->mVoiceCapable:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/HtcVolumeDialog;->mStreamType:I

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog;->cleanup()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :sswitch_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    :sswitch_2
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onSampleStarting(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

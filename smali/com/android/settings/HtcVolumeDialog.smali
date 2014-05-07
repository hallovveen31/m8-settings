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

    .prologue
    .line 75
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/HtcVolumeDialog;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialogBase;-><init>()V

    .line 269
    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/HtcVolumeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/settings/HtcVolumeDialog;->mStreamType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/HtcVolumeDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/settings/HtcVolumeDialog;->LOGD:Z

    return v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 156
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10202fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    .line 163
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stop()V

    .line 164
    iput-object v4, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    .line 167
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog;->cleanup()V

    .line 147
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase;->onBindDialogView(Landroid/view/View;)V

    .line 97
    const v1, 0x10202fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 98
    .local v0, seekBar:Landroid/widget/SeekBar;
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/HtcVolumeDialog;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;-><init>(Lcom/android/settings/HtcVolumeDialog;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    .line 103
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 106
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 107
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/HtcVolumeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/HtcVolumeDialog;->mVoiceCapable:Z

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/HtcVolumeDialog;->mStreamType:I

    .line 92
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase;->onDialogClosed(Z)V

    .line 137
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->revertVolume()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HtcVolumeDialog;->cleanup()V

    .line 142
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 111
    iget-object v3, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 113
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 130
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_2
    move v0, v2

    .line 112
    goto :goto_1

    .line 115
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 120
    :sswitch_1
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 125
    :sswitch_2
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onSampleStarting(Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog;->mSeekBarVolumizer:Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings/HtcVolumeDialog$SeekBarVolumizer;->stopSample()V

    .line 173
    :cond_0
    return-void
.end method

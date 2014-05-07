.class public Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;
.super Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;
.source "HtcHarmanLiveStageSwitchPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mItems:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->DEBUG:Z

    .line 25
    const-class v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->mItems:[Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->mItems:[Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->mItems:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->mItems:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->mItems:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 44
    const v0, 0x7f0c06d4

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->setDialogTitle(I)V

    .line 45
    return-void
.end method

.method private static logV(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 169
    sget-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method private static logW(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 173
    sget-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIconResource()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f020160

    return v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "getCustomSummaryOff()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/HarmanSettings;->setLiveStageTurnedOn(Landroid/content/Context;Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->getLiveStageSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "getCustomSummaryOn()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/HarmanSettings;->setLiveStageTurnedOn(Landroid/content/Context;Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0c06d4

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 132
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->mItems:[Ljava/lang/String;

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): [error] out of bound. which=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->logW(Ljava/lang/String;)V

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 166
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/android/settings/HarmanSettings;->isLiveStageEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    sget-boolean v1, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): igonre, LiveStage is not enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->logV(Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings/HarmanSettings;->setLiveStageProfileByNameIndex(Landroid/content/Context;I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/HarmanSettings;->setLiveStageTurnedOn(Landroid/content/Context;Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->mItems:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    .line 154
    .local v0, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-nez v0, :cond_5

    .line 155
    const-string v1, "onClick(): [error] toggleButton==null"

    invoke-static {v1}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->logW(Ljava/lang/String;)V

    .line 161
    :goto_1
    sget-boolean v1, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->logV(Ljava/lang/String;)V

    .line 165
    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->TAG:Ljava/lang/String;

    const-string v1, "onGetValueInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-static {}, Lcom/android/settings/HarmanSettings;->isLiveStageEnabled()Z

    move-result v0

    invoke-static {p1}, Lcom/android/settings/HarmanSettings;->isLiveStageTurnedOn(Landroid/content/Context;)Z

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 55
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/HarmanSettings;->getLiveStageProfileInNameIndex(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 125
    const v0, 0x7f0c0116

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 126
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 50
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 113
    sget-boolean v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanLiveStageSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetValueInBackground(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

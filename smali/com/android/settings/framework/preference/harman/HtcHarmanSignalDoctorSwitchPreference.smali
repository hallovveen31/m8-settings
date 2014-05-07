.class public Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;
.super Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;
.source "HtcHarmanSignalDoctorSwitchPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


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

    const-class v1, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->DEBUG:Z

    .line 25
    const-class v0, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomHeaderViewType()Lcom/android/settings/framework/activity/HtcWrapHeader$Type;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    return-object v0
.end method

.method protected getCustomIconResource()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f020151

    return v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0c06d2

    return v0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 3
    .parameter "button"
    .parameter "newState"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsIconTogglePreference;->onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/HarmanSettings;->setSignalDoctorTurnedOn(Landroid/content/Context;Z)V

    .line 100
    sget-boolean v0, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/HarmanSettings;->isSignalDoctorTurnedOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 49
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 44
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/harman/HtcHarmanSignalDoctorSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/HarmanSettings;->setSignalDoctorTurnedOn(Landroid/content/Context;Z)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;
.super Lcom/android/settings/framework/preference/HtcAbsTogglePreference;
.source "HtcDoNotDisturbSwitchPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDndEnabledObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->TAG:Ljava/lang/String;

    .line 27
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->DEBUG:Z

    .line 29
    const-class v0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;)Lcom/android/settings/framework/os/HtcMessageDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;)Lcom/android/settings/framework/os/HtcMessageDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference$1;-><init>(Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->mDndEnabledObserver:Landroid/database/ContentObserver;

    .line 60
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c106f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const v3, 0x7f0c106e

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getCurrentDndMode(Landroid/content/Context;)I

    move-result v0

    .line 89
    .local v0, mode:I
    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 97
    :goto_0
    return-object v2

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getUntilMillisInText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, timeText:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c06bc

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0c06a2

    return v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    invoke-static {p1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_feature_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v5, 0x1

    .line 126
    invoke-static {p1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 129
    .local v1, oldState:Z
    if-eq p2, v1, :cond_1

    .line 131
    if-ne p2, v5, :cond_2

    .line 132
    invoke-static {p1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOnDndFeature(Landroid/content/Context;)V

    .line 143
    :goto_0
    sget-boolean v2, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetValueInBackground, oldState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.dnd.UPDATE_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "intent_key_update_ringer_mode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-class v2, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return v5

    .line 136
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.dnd_disable_running_event"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    invoke-static {p1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOffDndFeature(Landroid/content/Context;)V

    goto :goto_0
.end method

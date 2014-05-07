.class public Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcDndOffByTimerPreference.java"

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
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->TAG:Ljava/lang/String;

    .line 26
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->DEBUG:Z

    .line 28
    const-class v0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->refreshEnabledStatusByMode()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference$1;-><init>(Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->mDndEnabledObserver:Landroid/database/ContentObserver;

    .line 50
    return-void
.end method

.method private refreshEnabledStatusByMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 68
    sget-boolean v1, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->TAG:Ljava/lang/String;

    const-string v2, "refreshEnabledStatusByMode, context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->getCurrentDndMode(Landroid/content/Context;)I

    move-result v0

    .line 75
    .local v0, mode:I
    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->setEnabled(Z)V

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->setSelectable(Z)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->setEnabled(Z)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->setSelectable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, entries:[Ljava/lang/String;
    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0800c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, values:[Ljava/lang/String;
    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 108
    const/4 v0, 0x0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_dnd_off_by_timer"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 115
    sget-object v1, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetValueInBackground, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    if-nez v0, :cond_0

    .line 120
    sget-boolean v1, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 121
    sget-object v1, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->TAG:Ljava/lang/String;

    const-string v2, "onGetValueInBackground, use default value: -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    const-string v0, "-1"

    goto :goto_0
.end method

.method protected onMapValueToIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    :goto_0
    return-object v2

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    .local v1, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 137
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_dnd_feature_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->refreshEnabledStatusByMode()V

    .line 59
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 146
    if-nez p1, :cond_1

    .line 147
    const/4 v2, 0x0

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_dnd_off_by_timer"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    invoke-static {p1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 155
    .local v0, bDndEnabled:Z
    sget-boolean v3, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 156
    sget-object v3, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetValueInBackground, newValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bDndEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    if-ne v0, v2, :cond_0

    .line 162
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.settings.action.dnd.UPDATE_NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

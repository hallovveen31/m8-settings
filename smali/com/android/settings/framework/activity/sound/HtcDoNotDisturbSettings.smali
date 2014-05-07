.class public Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcDoNotDisturbSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDndEnabledObserver:Landroid/database/ContentObserver;

.field private mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

.field private mLastEnabledState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->TAG:Ljava/lang/String;

    .line 44
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->updateEnabledSwitchButton()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 77
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    .line 78
    .local v3, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 79
    .local v4, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v5, 0x7f0c06a2

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 85
    new-instance v2, Lcom/android/settings/framework/preference/sound/HtcDndDescriptionPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/sound/HtcDndDescriptionPreference;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->addCallback(Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x7f0c06a3

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 94
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 97
    new-instance v2, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/sound/HtcDndOffByTimerPreference;-><init>(Landroid/content/Context;)V

    .line 98
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->addCallback(Ljava/lang/Object;)V

    .line 102
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x7f0c06a4

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 104
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    new-instance v2, Lcom/android/settings/framework/preference/sound/HtcDndContactsPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/sound/HtcDndContactsPreference;-><init>(Landroid/content/Context;)V

    .line 108
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->addCallback(Ljava/lang/Object;)V

    .line 112
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x7f0c0136

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 114
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 117
    new-instance v2, Lcom/android/settings/framework/preference/sound/HtcDndAlarmAndTimerPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/sound/HtcDndAlarmAndTimerPreference;-><init>(Landroid/content/Context;)V

    .line 118
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 119
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->addCallback(Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 123
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x7f0c06a5

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 124
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    new-instance v2, Lcom/android/settings/framework/preference/sound/HtcDndSchedulesPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/sound/HtcDndSchedulesPreference;-><init>(Landroid/content/Context;)V

    .line 128
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->addCallback(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->requestHandlers()V

    .line 132
    return-void
.end method

.method private initObserver()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings$1;-><init>(Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mDndEnabledObserver:Landroid/database/ContentObserver;

    .line 66
    return-void
.end method

.method private updateEnabledSwitchButton()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mLastEnabledState:Z

    .line 172
    iget-object v0, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mLastEnabledState:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 173
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-class v0, Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 217
    const v0, 0x7f0c0920

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 144
    .local v1, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 146
    .end local v1           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 147
    return-void
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-ne p1, v2, :cond_1

    .line 178
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mLastEnabledState:Z

    .line 179
    .local v0, bLastState:Z
    if-eq p2, v0, :cond_1

    .line 183
    if-eqz p2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOnDndFeature(Landroid/content/Context;)V

    .line 195
    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mLastEnabledState:Z

    .line 197
    sget-boolean v2, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 198
    sget-object v2, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged, isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.dnd.UPDATE_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "intent_key_update_ringer_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    .end local v0           #bLastState:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 188
    .restart local v0       #bLastState:Z
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.settings.action.dnd_disable_running_event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/framework/app/HtcDndCommandService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->turnOffDndFeature(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->doPlugin()V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->initObserver()V

    .line 56
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/core/sound/HtcDndUtils;->isDndFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mLastEnabledState:Z

    .line 162
    iget-object v1, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mEnabledSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v2, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 165
    const-string v1, "htc_dnd_feature_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/framework/activity/sound/HtcDoNotDisturbSettings;->mDndEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    return-void
.end method

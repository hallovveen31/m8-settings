.class public Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcDeveloperAdvanceSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 63
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    .line 64
    .local v3, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 65
    .local v4, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v5, 0x7f0c0cd4

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 66
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 70
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x7f0c11ec

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 72
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 74
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowLayoutBoundsPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowLayoutBoundsPreference;-><init>(Landroid/content/Context;)V

    .line 75
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 78
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcForceRTLLayoutPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcForceRTLLayoutPreference;-><init>(Landroid/content/Context;)V

    .line 79
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 82
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowGPUViewUpdatePreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowGPUViewUpdatePreference;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 86
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 90
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowHwLayersUpdatesPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowHwLayersUpdatesPreference;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 94
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;-><init>(Landroid/content/Context;)V

    .line 95
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 98
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowNonRectClipPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowNonRectClipPreference;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 102
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 106
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcForceHardwareUIPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcForceHardwareUIPreference;-><init>(Landroid/content/Context;)V

    .line 107
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 110
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcForceMsaaPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcForceMsaaPreference;-><init>(Landroid/content/Context;)V

    .line 111
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 114
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x7f0c11ee

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 121
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 124
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 125
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 135
    :goto_0
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowCpuUsagePreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowCpuUsagePreference;-><init>(Landroid/content/Context;)V

    .line 136
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 139
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcProfileGpuRenderingPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcProfileGpuRenderingPreference;-><init>(Landroid/content/Context;)V

    .line 140
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 143
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcOpenGLTracesPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcOpenGLTracesPreference;-><init>(Landroid/content/Context;)V

    .line 144
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 150
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 151
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 157
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v5, 0x7f0c120f

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 158
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 165
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcImmediatelyDestroyActivitiesPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcImmediatelyDestroyActivitiesPreference;-><init>(Landroid/content/Context;)V

    .line 166
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 167
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 169
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcAppProcessLimitPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcAppProcessLimitPreference;-><init>(Landroid/content/Context;)V

    .line 170
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 173
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowAllAnrPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowAllAnrPreference;-><init>(Landroid/content/Context;)V

    .line 174
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->requestHandlers()V

    .line 178
    return-void

    .line 129
    :cond_0
    new-instance v2, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->addCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f0c1029

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->doPlugin()V

    .line 52
    return-void
.end method

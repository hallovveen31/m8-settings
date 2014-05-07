.class public Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcDeveloperAdvanceSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const v5, 0x7f0c0cd4

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c11ec

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowLayoutBoundsPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowLayoutBoundsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcForceRTLLayoutPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcForceRTLLayoutPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowGPUViewUpdatePreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowGPUViewUpdatePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowScreenUpdatesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowHwLayersUpdatesPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowHwLayersUpdatesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcDebugHwOverdrawPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowNonRectClipPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowNonRectClipPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcDisableHwOverlaysPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcForceHardwareUIPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcForceHardwareUIPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcForceMsaaPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcForceMsaaPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcOverlayDisplayDevicesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c11ee

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/settings/framework/preference/developer/HtcStrictModePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :goto_0
    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowCpuUsagePreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowCpuUsagePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcProfileGpuRenderingPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcProfileGpuRenderingPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcOpenGLTracesPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcOpenGLTracesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Lcom/android/settings/framework/preference/developer/HtcAnimationCategory;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c120f

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcImmediatelyDestroyActivitiesPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcImmediatelyDestroyActivitiesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcAppProcessLimitPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcAppProcessLimitPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/settings/framework/preference/developer/HtcShowAllAnrPreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/HtcShowAllAnrPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :cond_0
    new-instance v2, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c1029

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/developer/HtcDeveloperAdvanceSettings;->doPlugin()V

    return-void
.end method

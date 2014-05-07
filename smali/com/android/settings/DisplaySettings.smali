.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEY_NOTIFICATION_FLASH_SETTINGS:Ljava/lang/String; = "notification_flash_settings"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field private mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v10, 0x0

    sget-boolean v11, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "DisplaySettings"

    const-string v12, "onCreate() start"

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v10}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    const-string v11, "DisplaySettings"

    invoke-virtual {v10}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v11, 0x7f060018

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportAutoRotateScreen(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v6, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    move v4, v5

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportFontStyle(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v6, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;-><init>(Landroid/content/Context;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    move v4, v5

    :cond_4
    new-instance v6, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;-><init>(Landroid/app/Activity;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    const-string v11, "notification_pulse"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_e

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110027

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0c0166

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportMenuButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_5
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v11

    if-gtz v11, :cond_6

    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_6
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGestures(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0c0156

    invoke-virtual {v3, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const/16 v11, 0xb

    invoke-virtual {v3, v11}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportGestures()Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v6, Lcom/android/settings/framework/preference/display/HtcGesturesPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcGesturesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_7
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportEasyAccess(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v6, Lcom/android/settings/framework/preference/display/HtcEasyAccessGesturesPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcEasyAccessGesturesPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_8
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportNotificationFlash()Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "notification_flash_settings"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_9
    const-string v11, "BRIGHTNESS"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_a
    const-string v11, "SCREEN_TIMEOUT"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_b
    const-string v11, "screensaver"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportDreamSettings(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :goto_3
    const-string v11, "gyro_calibration"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGyroCalibration()Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "gsensor_group"

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz v8, :cond_c

    const v11, 0x7f0c04c7

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    :cond_c
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    sget-boolean v11, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "DisplaySettings"

    invoke-virtual {v10}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "DisplaySettings"

    const-string v12, "onCreate() end"

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    :try_start_0
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "notification_light_pulse"

    invoke-static {v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_f

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    const-string v11, "DisplaySettings"

    const-string v12, "notification_light_pulse not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    const/4 v11, 0x0

    goto :goto_5

    :cond_10
    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportRecentAppsButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_11

    new-instance v6, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_11
    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportBackButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_12

    new-instance v6, Lcom/android/settings/framework/preference/display/HtcBackButtonPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcBackButtonPreference;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_12
    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportHomeButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_13

    new-instance v6, Lcom/android/settings/framework/preference/display/HtcHomeButtonPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcHomeButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v6, Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DisplaySettings"

    const-string v2, "onResume() start"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    const-string v1, "DisplaySettings"

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getReloadFontStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    sget-boolean v1, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DisplaySettings"

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DisplaySettings"

    const-string v2, "onResume() end"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

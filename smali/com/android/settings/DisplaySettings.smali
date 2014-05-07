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

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const/4 v10, 0x0

    .line 83
    .local v10, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v11, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 84
    const-string v11, "DisplaySettings"

    const-string v12, "onCreate() start"

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v10, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v10           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v10}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 86
    .restart local v10       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const-string v11, "DisplaySettings"

    invoke-virtual {v10}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v11, 0x7f060018

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 96
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    .line 98
    .local v7, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    const/4 v4, 0x1

    .line 103
    .local v4, index:I
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportAutoRotateScreen(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 104
    new-instance v6, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;-><init>(Landroid/content/Context;)V

    .line 105
    .local v6, preference:Lcom/htc/preference/HtcPreference;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 106
    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    move v4, v5

    .line 137
    .end local v5           #index:I
    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    .restart local v4       #index:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportFontStyle(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 138
    new-instance v6, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 140
    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 141
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    move v4, v5

    .line 145
    .end local v5           #index:I
    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    .restart local v4       #index:I
    :cond_4
    new-instance v6, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;-><init>(Landroid/app/Activity;)V

    .line 146
    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 147
    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 148
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 151
    const-string v11, "notification_pulse"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 152
    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110027

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_e

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 166
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 167
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, buttonCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const v11, 0x7f0c0166

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 170
    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceCategory;->setOrder(I)V

    .line 171
    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 173
    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportMenuButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 174
    const/4 v6, 0x0

    .line 189
    :goto_2
    if-eqz v6, :cond_5

    .line 190
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 194
    :cond_5
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v11

    if-gtz v11, :cond_6

    .line 195
    invoke-virtual {v7, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 206
    .end local v1           #buttonCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_6
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGestures(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 207
    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 209
    .local v3, gesturesCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const v11, 0x7f0c0156

    invoke-virtual {v3, v11}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 210
    const/16 v11, 0xb

    invoke-virtual {v3, v11}, Lcom/htc/preference/HtcPreferenceCategory;->setOrder(I)V

    .line 211
    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 213
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportGestures()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 214
    new-instance v6, Lcom/android/settings/framework/preference/display/HtcGesturesPreference;

    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcGesturesPreference;-><init>(Landroid/content/Context;)V

    .line 215
    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 219
    :cond_7
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportEasyAccess(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 220
    new-instance v6, Lcom/android/settings/framework/preference/display/HtcEasyAccessGesturesPreference;

    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcEasyAccessGesturesPreference;-><init>(Landroid/content/Context;)V

    .line 221
    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 228
    .end local v3           #gesturesCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_8
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportNotificationFlash()Z

    move-result v11

    if-nez v11, :cond_9

    .line 229
    const-string v11, "notification_flash_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 234
    :cond_9
    const-string v11, "BRIGHTNESS"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 235
    if-eqz v6, :cond_a

    .line 236
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 241
    :cond_a
    const-string v11, "SCREEN_TIMEOUT"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 242
    if-eqz v6, :cond_b

    .line 243
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 247
    :cond_b
    const-string v11, "screensaver"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 248
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportDreamSettings(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 249
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 254
    :goto_3
    const-string v11, "gyro_calibration"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_d

    .line 256
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportGyroCalibration()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 257
    const-string v11, "gsensor_group"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceCategory;

    .line 258
    .local v8, sensorCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v8, :cond_c

    .line 259
    const v11, 0x7f0c04c7

    invoke-virtual {v8, v11}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 261
    :cond_c
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 267
    .end local v8           #sensorCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->requestHandlers()V

    .line 269
    sget-boolean v11, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 270
    const-string v11, "DisplaySettings"

    invoke-virtual {v10}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v11, "DisplaySettings"

    const-string v12, "onCreate() end"

    invoke-static {v11, v12}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    :cond_e
    :try_start_0
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 160
    :catch_0
    move-exception v9

    .line 161
    .local v9, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v11, "DisplaySettings"

    const-string v12, "notification_light_pulse not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 157
    .end local v9           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_f
    const/4 v11, 0x0

    goto :goto_5

    .line 175
    .restart local v1       #buttonCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_10
    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportRecentAppsButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 176
    new-instance v6, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;

    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcRecentAppsButtonPreference;-><init>(Landroid/content/Context;)V

    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    goto/16 :goto_2

    .line 177
    :cond_11
    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportBackButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 178
    new-instance v6, Lcom/android/settings/framework/preference/display/HtcBackButtonPreference;

    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcBackButtonPreference;-><init>(Landroid/content/Context;)V

    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    goto/16 :goto_2

    .line 179
    :cond_12
    invoke-static {v2}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportHomeButton(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 180
    new-instance v6, Lcom/android/settings/framework/preference/display/HtcHomeButtonPreference;

    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/HtcHomeButtonPreference;-><init>(Landroid/content/Context;)V

    .line 181
    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->addCallback(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 184
    new-instance v6, Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;

    .end local v6           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v6, v0}, Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;-><init>(Landroid/content/Context;)V

    .restart local v6       #preference:Lcom/htc/preference/HtcPreference;
    goto/16 :goto_2

    .line 186
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 251
    .end local v1           #buttonCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3

    .line 263
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 303
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    .end local v0           #value:Z
    :goto_1
    return v2

    .line 303
    .restart local v0       #value:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 307
    .end local v0           #value:Z
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v1, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "DisplaySettings"

    const-string v2, "onResume() start"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    .end local v0           #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    invoke-direct {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 281
    .restart local v0       #timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    const-string v1, "DisplaySettings"

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 288
    invoke-static {}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getReloadFontStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    :cond_1
    sget-boolean v1, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 294
    const-string v1, "DisplaySettings"

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v1, "DisplaySettings"

    const-string v2, "onResume() end"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    return-void
.end method

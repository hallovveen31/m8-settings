.class public Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;
.super Ljava/lang/Object;
.source "HtcSoundFeatureFlags.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HtcSoundFeatureFlags"

.field public static final supportPhoneRingtone:Z = true

.field public static final supportPulseNotificationLight:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRingVolumeDivider()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40c0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final disableVibrateModeForDock()Z
    .locals 5

    const-string v0, "Settings"

    const-string v1, "disable_vibrate_mode_for_dock"

    const-string v2, "Settings"

    const-string v3, "disable_vibrate_mode_for_dock"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private static geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    move v3, p2

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcSoundFeatureFlags"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ACC]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return v3

    :cond_1
    const-string v4, "HtcSoundFeatureFlags"

    const-string v5, "[ACC]reader = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "HtcSoundFeatureFlags"

    const-string v5, "[ACC]HtcCustomizationManager.getInstance failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static supportDoNotDisturbFeature()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportFlipToMute()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40c0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportKDDIHasRingBackTone()Z
    .locals 5

    const-string v0, "Volume_Controller"

    const-string v1, "support_ringback_tone"

    const-string v2, "Volume_Controller"

    const-string v3, "support_ringback_tone"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static supportNFCSoundInCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final supportOutDoorMode()Z
    .locals 5

    const-string v0, "Android_Multimedia"

    const-string v1, "support_outdoor_mode"

    const-string v2, "Android_Multimedia"

    const-string v3, "support_outdoor_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static final supportRingAndVibrateMode()Z
    .locals 5

    const-string v0, "Settings"

    const-string v1, "support_ring_and_vibrate_mode"

    const-string v2, "Settings"

    const-string v3, "support_ring_and_vibrate_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static final supportToogleUseRingVolumeForNotify()Z
    .locals 5

    const-string v0, "Volume_Controller"

    const-string v1, "support_toogle_use_ring_volume_for_notify"

    const-string v2, "Volume_Controller"

    const-string v3, "support_toogle_use_ring_volume_for_notify"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/settings/framework/flag/feature/HtcSoundFeatureFlags;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static supportUseRingtoneForNotifications()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useSounPickerInterntActionInsteasofSpeifyPackageName()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

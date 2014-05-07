.class public final Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcPocketModePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "PCOKET_MODE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->initialize()V

    return-void
.end method

.method private getCustomSummaryRes()I
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const v0, 0x7f0c0ae9

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0c069a

    goto :goto_0
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 4

    const/4 v1, 0x1

    const-string v2, "PCOKET_MODE"

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f0c0699

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const v2, 0x7f0c069a

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pocket_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->getCustomSummaryRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOn(I)V

    invoke-direct {p0}, Lcom/android/settings/framework/preference/sound/HtcPocketModePreference;->getCustomSummaryRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummaryOff(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pocket_mode"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "pocket_mode"

    const-string v2, "com.android.phone"

    const-string v3, "settings_pocketMode"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/framework/flag/UserProfilingUtils;->userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

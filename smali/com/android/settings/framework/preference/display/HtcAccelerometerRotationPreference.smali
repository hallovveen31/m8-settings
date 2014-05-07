.class public Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcAccelerometerRotationPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseInBackgroundListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# instance fields
.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference$1;-><init>(Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 65
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 77
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->onResumeInBackground(Landroid/app/Activity;)V

    .line 84
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 96
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAccelerometerRotationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "custom_orientation"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    :cond_0
    return v1

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

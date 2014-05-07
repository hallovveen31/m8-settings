.class public Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcShowAllQuickTipsPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 72
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setKey(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setKey(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setKey(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getShowQuickTip(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->setShowQuickTip(Landroid/content/Context;Z)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

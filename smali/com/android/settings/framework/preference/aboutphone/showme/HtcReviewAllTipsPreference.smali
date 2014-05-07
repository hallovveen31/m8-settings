.class public Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcReviewAllTipsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020171

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    :cond_0
    const v0, 0x7f0c02f3

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const v0, 0x7f0c02f4

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    const v0, 0x7f0c02f5

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogMessage(I)V

    const v0, 0x2040151

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setPositiveButtonText(I)V

    const v0, 0x2040152

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020171

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    :cond_0
    const v0, 0x7f0c02f3

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const v0, 0x7f0c02f4

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    const v0, 0x7f0c02f5

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogMessage(I)V

    const v0, 0x2040151

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setPositiveButtonText(I)V

    const v0, 0x2040152

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020171

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    :cond_0
    const v0, 0x7f0c02f3

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    const v0, 0x7f0c02f4

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    const v0, 0x7f0c02f5

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogMessage(I)V

    const v0, 0x2040151

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setPositiveButtonText(I)V

    const v0, 0x2040152

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setNegativeButtonText(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->setShowQuickTip(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

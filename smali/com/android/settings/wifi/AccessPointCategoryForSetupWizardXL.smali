.class public Lcom/android/settings/wifi/AccessPointCategoryForSetupWizardXL;
.super Lcom/android/settings/ProgressCategoryBase;
.source "AccessPointCategoryForSetupWizardXL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public setProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    return-void
.end method

.class public Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcFingerprintQuickLaunchRecord.java"


# instance fields
.field private mActionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

.field private mCustDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustSummary:Ljava/lang/String;

.field private mCustTitle:Ljava/lang/String;

.field private mFingerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    iput-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mActionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    iput-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mActionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    iput-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mActionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mActionType:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "finger_id"

    iget v2, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mFingerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustSummary:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustTitle:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCusTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustTitle:Ljava/lang/String;

    return-void
.end method

.method public setCustDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCustFingerId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mFingerId:I

    return-void
.end method

.method public setCustSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->mCustSummary:Ljava/lang/String;

    return-void
.end method

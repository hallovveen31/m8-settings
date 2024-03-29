.class public Lcom/android/settings/framework/preference/display/HtcBackButtonPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcBackButtonPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0168

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->getBackButton(Landroid/content/Context;)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->toBackButton(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setBackButton(Landroid/content/Context;Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;)Z

    move-result v1

    return v1
.end method

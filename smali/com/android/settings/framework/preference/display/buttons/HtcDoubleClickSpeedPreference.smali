.class public Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;
.super Lcom/android/settings/framework/preference/HtcAbsListPreference;
.source "HtcDoubleClickSpeedPreference.java"


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
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getEntryValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0169

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->getDoubleClickSpeed(Landroid/content/Context;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->toDoubleClickSpeed(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setDoubleClickSpeed(Landroid/content/Context;Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;)Z

    move-result v1

    return v1
.end method

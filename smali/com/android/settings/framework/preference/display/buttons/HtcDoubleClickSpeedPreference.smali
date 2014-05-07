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
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getCustomEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getEntryValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/buttons/HtcDoubleClickSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0169

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/android/settings/framework/core/display/HtcButtonManager;->getDoubleClickSpeed(Landroid/content/Context;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v0

    .line 59
    .local v0, speed:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    invoke-virtual {v0}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 67
    invoke-static {p2}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->toDoubleClickSpeed(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v0

    .line 68
    .local v0, speed:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    invoke-static {p1, v0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setDoubleClickSpeed(Landroid/content/Context;Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;)Z

    move-result v1

    return v1
.end method

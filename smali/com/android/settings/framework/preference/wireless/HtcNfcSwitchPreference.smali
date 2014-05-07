.class public Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;
.super Lcom/android/settings/framework/preference/HtcAbsTogglePreference;
.source "HtcNfcSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsTogglePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->getCustomTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0c12ec

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    .line 66
    .local v0, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcToggleButton;->isChecked()Z

    move-result v1

    .line 69
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 1
    .parameter "button"
    .parameter "state"

    .prologue
    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/wireless/HtcNfcSwitchPreference;->getToggleButton()Lcom/android/settings/framework/widget/HtcToggleButton;

    move-result-object v0

    .line 59
    .local v0, toggleButton:Lcom/android/settings/framework/widget/HtcToggleButton;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lcom/android/settings/framework/widget/HtcToggleButton;->setChecked(Z)V

    .line 62
    :cond_0
    return-void
.end method

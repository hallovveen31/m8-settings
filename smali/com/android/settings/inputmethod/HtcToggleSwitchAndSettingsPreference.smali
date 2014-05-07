.class public Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcToggleSwitchAndSettingsPreference.java"


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f


# instance fields
.field protected mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private mSetingsButton:Landroid/view/View;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSummaryText:Landroid/widget/TextView;

.field protected mTitleText:Landroid/widget/TextView;

.field private mToggleSwitch:Lcom/android/settings/inputmethod/HtcToggleSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->setLayoutResource(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->setLayoutResource(I)V

    .line 54
    return-void
.end method

.method private enableSettingsButton()V
    .locals 3

    .prologue
    const v2, 0x3ecccccd

    .line 105
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->isChecked()Z

    move-result v0

    .line 110
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    if-nez v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 59
    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/HtcToggleSwitch;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mToggleSwitch:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    .line 60
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mToggleSwitch:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    new-instance v1, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;-><init>(Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/HtcToggleSwitch;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mToggleSwitch:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/HtcToggleSwitch;->setChecked(Z)V

    .line 68
    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    .line 69
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 70
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->enableSettingsButton()V

    .line 72
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onSettingsButtonClicked()V

    .line 79
    :cond_0
    return-void
.end method

.method protected onSettingsButtonClicked()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->enableSettingsButton()V

    .line 85
    return-void
.end method

.method public setFragmentIntent(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "fragment"
    .parameter "intent"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 89
    iput-object p2, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 90
    return-void
.end method

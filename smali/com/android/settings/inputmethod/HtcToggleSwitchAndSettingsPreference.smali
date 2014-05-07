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

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    return-void
.end method

.method private enableSettingsButton()V
    .locals 3

    const v2, 0x3ecccccd

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/HtcToggleSwitch;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mToggleSwitch:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mToggleSwitch:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    new-instance v1, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference$1;-><init>(Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mToggleSwitch:Lcom/android/settings/inputmethod/HtcToggleSwitch;

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/HtcToggleSwitch;->setChecked(Z)V

    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->enableSettingsButton()V

    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 0

    return-void
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->onSettingsButtonClicked()V

    :cond_0
    return-void
.end method

.method protected onSettingsButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->enableSettingsButton()V

    return-void
.end method

.method public setFragmentIntent(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/HtcToggleSwitchAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    return-void
.end method

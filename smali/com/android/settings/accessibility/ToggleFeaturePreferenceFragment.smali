.class public abstract Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "ToggleFeaturePreferenceFragment.java"


# instance fields
.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSummaryPreference:Lcom/htc/preference/HtcPreference;

.field protected mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/accessibility/ToggleSwitch;
    .locals 2
    .parameter "activity"

    .prologue
    .line 136
    new-instance v0, Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-direct {v0, p1}, Lcom/android/settings/accessibility/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, toggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;
    instance-of v1, p1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v1, :cond_0

    .line 141
    check-cast p1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 156
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f0c105b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 63
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 64
    new-instance v1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    .line 88
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    const v2, 0x7f040102

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 125
    .local v0, menuItem:Landroid/view/MenuItem;
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 129
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 110
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroyView()V

    .line 111
    return-void
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/accessibility/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    .line 133
    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arguments"

    .prologue
    .line 161
    const-string v4, "preference_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 163
    const-string v4, "checked"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 164
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-virtual {v4, v1}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 167
    .local v0, activity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 169
    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivityHandlerWrapper()Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->setTitle(Ljava/lang/String;)V

    .line 180
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    const-string v4, "summary"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    .local v2, summary:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

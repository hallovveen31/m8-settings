.class public Lcom/android/settings/wifi/WifiOffloadSettingsFragment;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiOffloadSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiOffloadSettingsFragment"


# instance fields
.field mPreTapResId:I

.field mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

.field mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

.field mTitleCaterory:Lcom/htc/preference/HtcPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    const v0, 0x7f0c0897

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPreTapResId:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;-><init>(Lcom/android/settings/wifi/WifiOffloadSettingsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    const v1, 0x7f0c0d43

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mTitleCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mTitleCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    const v1, 0x7f0c0d2a

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mTitleCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mTitleCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mTitleCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    return-void
.end method

.method public setInstructionText(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPreTapResId:I

    return-void
.end method

.method protected updateAccessPoints()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mTitleCaterory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

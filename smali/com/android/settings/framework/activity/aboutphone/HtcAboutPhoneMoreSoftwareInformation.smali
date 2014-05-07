.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneMoreSoftwareInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0c06e8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->performPlugin()V

    .line 44
    return-void
.end method

.method protected onPlugin(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcKernelVersionPreference;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBasebandVersionPreference;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addStickyCallbacks(Lcom/htc/preference/HtcPreferenceGroup;[Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcCustomizationWizardVersionPreference;

    new-instance v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    .line 69
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/software/VzwSoftwareRootedStatus;

    new-instance v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation$2;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation$2;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addStickyCallback(Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/Class;Lcom/android/settings/framework/app/HtcActivityCallbackProxy$ICallbackPreChecker;)V

    .line 79
    return-void
.end method

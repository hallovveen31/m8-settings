.class public Lcom/android/settings/SecondDisplaySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "SecondDisplaySettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_WIRELESS_HDMI_MIRROR_MODE:Ljava/lang/String; = "wireless_hdmi_mirror_mode"

.field private static final TAG:Ljava/lang/String; = "SecondDisplaySettings"


# instance fields
.field final REQUEST_CODE_RESOLUTION_PICKER:I

.field private mAnimations:Lcom/htc/preference/HtcListPreference;

.field private mIntent:Landroid/content/Intent;

.field private mResolutionType:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/SecondDisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SecondDisplaySettings;->mResolutionType:I

    return-void
.end method

.method private updateState(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/android/settings/SecondDisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SecondDisplaySettings;->mResolutionType:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wireless_hdmi_mirror_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "display_resolution_entry"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.intent.action.Resolution_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/SecondDisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecondDisplaySettings;->updateState(Z)V

    return-void
.end method

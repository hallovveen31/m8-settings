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

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SecondDisplaySettings;->getActivity()Landroid/app/Activity;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/SecondDisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SecondDisplaySettings;->mResolutionType:I

    return-void
.end method

.method private updateState(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 113
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/SecondDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 70
    iget v1, p0, Lcom/android/settings/SecondDisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_0

    .line 71
    const-string v1, "com.htc.content.intent.extra.Extra_DEF_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SecondDisplaySettings;->mResolutionType:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SecondDisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SecondDisplaySettings;->finish()V

    .line 60
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, key:Ljava/lang/String;
    const-string v1, "wireless_hdmi_mirror_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 130
    if-eqz p2, :cond_1

    const-string v0, "display_resolution_entry"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    .line 134
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.intent.action.Resolution_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/settings/SecondDisplaySettings;->mIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/SecondDisplaySettings;->REQUEST_CODE_RESOLUTION_PICKER:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecondDisplaySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecondDisplaySettings;->updateState(Z)V

    .line 82
    return-void
.end method

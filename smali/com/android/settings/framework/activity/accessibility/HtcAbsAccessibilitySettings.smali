.class public Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAbsAccessibilitySettings.java"


# static fields
.field private static final CAPTIONING_PREFERENCE_SCREEN:Ljava/lang/String; = "captioning_preference_screen"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    const-string v2, "system_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 73
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    new-instance v1, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;-><init>(Landroid/app/Activity;)V

    .line 74
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->addCallback(Ljava/lang/Object;)V

    .line 79
    const-string v2, "captioning_preference_screen"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->addCallback(Ljava/lang/Object;)V

    .line 86
    :cond_0
    const-string v2, "toggle_large_text_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 92
    :cond_1
    sget-object v2, Lcom/android/settings/framework/preference/accessibility/HtcMagnifierPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAccessibilityFeatureFlags;->supportMagnifierSetting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->addCallback(Ljava/lang/Object;)V

    .line 102
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/accessibility/HtcAbsAccessibilitySettings;->requestHandlers()V

    .line 103
    return-void

    .line 97
    :cond_3
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

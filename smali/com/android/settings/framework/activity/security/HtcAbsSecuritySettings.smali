.class public Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAbsSecuritySettings.java"


# static fields
.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_SIM_LOCK_DUAL:Ljava/lang/String; = "sim_lock_dual_setting"

.field private static final KEY_SIM_LOCK_NEW:Ljava/lang/String; = "sim_lock_new_setting"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_UIM_LOCK_DUAL:Ljava/lang/String; = "uim_lock_dual_setting"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"


# instance fields
.field private mEncryptionCategory:Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->mEncryptionCategory:Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;

    return-void
.end method


# virtual methods
.method protected applyDemoMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 99
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v3, "unlock_set_or_change"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 106
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 111
    :cond_2
    const-string v3, "visiblepattern"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 118
    :cond_3
    const-string v3, "sim_lock"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 125
    :cond_4
    const-string v3, "sim_lock_new_setting"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 132
    :cond_5
    const-string v3, "uim_lock_dual_setting"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 139
    :cond_6
    const-string v3, "sim_lock_dual_setting"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 146
    :cond_7
    const-string v3, "show_password"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_8

    .line 149
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 153
    :cond_8
    const-string v3, "toggle_install_applications"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 155
    .local v0, cbPreference:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v1, :cond_a

    .line 156
    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    .line 157
    invoke-static {v0, v2}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 159
    :cond_9
    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 163
    :cond_a
    const-string v3, "credentials_management"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportShowEncryptionOptionOnSecurityPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->mEncryptionCategory:Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;

    .line 65
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->mEncryptionCategory:Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->setup(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onSuperPostResume()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 78
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "reset_credentials"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 81
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method protected pluginAutoStartManagerPerference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "preferenceGroup"

    .prologue
    .line 227
    if-nez p2, :cond_1

    .line 228
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 229
    const-class v1, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " ERROR: no root preference group"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportAutoStartManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Lcom/android/settings/framework/preference/security/permission/HtcAutoStartManagerPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/permission/HtcAutoStartManagerPreference;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, pref:Lcom/android/settings/framework/preference/security/permission/HtcAutoStartManagerPreference;
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->addCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected pluginEncryptionCategory(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "fragment"
    .parameter "root"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->mEncryptionCategory:Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->mEncryptionCategory:Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;

    invoke-virtual {v0, p0, p2}, Lcom/android/settings/framework/preference/security/encryption/HtcEncryptionPreferenceCategory;->pluginGroupComponentsOnResume(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected pluginPermissionManagerPerference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "preferenceGroup"

    .prologue
    .line 197
    if-nez p2, :cond_1

    .line 198
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 199
    const-class v1, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " ERROR: no root preference group"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSecurityFeatureFlags;->supportPermissionManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Lcom/android/settings/framework/preference/security/permission/HtcPermissionManagerPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/security/permission/HtcPermissionManagerPreference;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, pref:Lcom/android/settings/framework/preference/security/permission/HtcPermissionManagerPreference;
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcAbsSecuritySettings;->addCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

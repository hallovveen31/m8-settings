.class public Lcom/android/settings/RestrictedSettingsFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# static fields
.field private static final EXTRA_CHECKBOX_STATE:Ljava/lang/String; = "isChecked"

.field private static final EXTRA_PREFERENCE:Ljava/lang/String; = "pref"

.field private static final KEY_CHALLENGE_REQUESTED:Ljava/lang/String; = "chrq"

.field private static final KEY_CHALLENGE_SUCCEEDED:Ljava/lang/String; = "chsc"

.field private static final KEY_RESUME_ACTION_BUNDLE:Ljava/lang/String; = "rsmb"

.field private static final REQUEST_PIN_CHALLENGE:I = 0x3015

.field protected static final RESTRICTIONS_PIN_SET:Ljava/lang/String; = "restrictions_pin_set"


# instance fields
.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private final mProtectedByRestictionsPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictionKey:Ljava/lang/String;

.field private mResumeActionBundle:Landroid/os/Bundle;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "restrictionKey"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mProtectedByRestictionsPrefs:Ljava/util/HashSet;

    .line 69
    new-instance v0, Lcom/android/settings/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedSettingsFragment$1;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 87
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/RestrictedSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/RestrictedSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RestrictedSettingsFragment;Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin(Lcom/htc/preference/HtcPreference;)V

    return-void
.end method

.method private ensurePin(Lcom/htc/preference/HtcPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 175
    iget-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v2, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 177
    .local v1, um:Landroid/os/UserManager;
    iget-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-nez v2, :cond_1

    .line 178
    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    const-string v3, "pref"

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    instance-of v2, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    const-string v3, "isChecked"

    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, requestPin:Landroid/content/Intent;
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 193
    .end local v0           #requestPin:Landroid/content/Intent;
    .end local v1           #um:Landroid/os/UserManager;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 194
    return-void
.end method


# virtual methods
.method ensurePinRestrictedPreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mProtectedByRestictionsPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "restrictions_pin_set"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->restrictionsPinCheck(Ljava/lang/String;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasChallengeSucceeded()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    return v0
.end method

.method protected isRestrictedAndNotPinProtected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "restrictions_pin_set"

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 138
    const/16 v5, 0x3015

    if-ne p1, v5, :cond_4

    .line 139
    iget-object v4, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 140
    .local v4, resumeActionBundle:Landroid/os/Bundle;
    iput-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 141
    iput-boolean v6, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 142
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 143
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 144
    if-nez v4, :cond_2

    .line 146
    .local v3, prefKey:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {p0, v3}, Lcom/android/settings/RestrictedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 148
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_1

    .line 151
    instance-of v5, v1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    const-string v5, "isChecked"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const-string v5, "isChecked"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, isChecked:Z
    move-object v5, v1

    .line 155
    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 157
    .end local v0           #isChecked:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 159
    .local v2, prefIntent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    .end local v2           #prefIntent:Landroid/content/Intent;
    .end local v3           #prefKey:Ljava/lang/String;
    .end local v4           #resumeActionBundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 144
    .restart local v4       #resumeActionBundle:Landroid/os/Bundle;
    :cond_2
    const-string v5, "pref"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->finishFragment()V

    goto :goto_1

    .line 171
    .end local v4           #resumeActionBundle:Landroid/os/Bundle;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const-string v0, "chsc"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 97
    const-string v0, "chrq"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 98
    const-string v0, "rsmb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    .line 100
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 118
    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin(Lcom/htc/preference/HtcPreference;)V

    .line 125
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void

    .line 123
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "chrq"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "rsmb"

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mResumeActionBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "chsc"

    iget-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    :cond_1
    return-void
.end method

.method protected protectByRestrictions(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mProtectedByRestictionsPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    return-void
.end method

.method protected protectByRestrictions(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 261
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->protectByRestrictions(Lcom/htc/preference/HtcPreference;)V

    .line 262
    return-void
.end method

.method protected restrictionsPinCheck(Ljava/lang/String;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "restrictionsKey"
    .parameter "preference"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0, p2}, Lcom/android/settings/RestrictedSettingsFragment;->ensurePin(Lcom/htc/preference/HtcPreference;)V

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldBePinProtected(Ljava/lang/String;)Z
    .locals 4
    .parameter "restrictionKey"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return v2

    .line 233
    :cond_0
    const-string v3, "restrictions_pin_set"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    .line 235
    .local v0, restricted:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    .end local v0           #restricted:Z
    :cond_2
    move v0, v2

    .line 233
    goto :goto_1

    .restart local v0       #restricted:Z
    :cond_3
    move v1, v2

    .line 235
    goto :goto_2
.end method

.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneHelp.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->TAG:Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private addGenericEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "context"
    .parameter "root"

    .prologue
    .line 111
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowMe(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 118
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowAllQuickTips()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 122
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    const v1, 0x7f0c02f1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 123
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 126
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 131
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;-><init>(Landroid/content/Context;)V

    .line 132
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 136
    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 138
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    return-void
.end method

.method private addVerizonEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 5
    .parameter "context"
    .parameter "root"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 157
    .local v1, incomingIntent:Landroid/content/Intent;
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/VzwBasicDefinitionPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwBasicDefinitionPreference;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->finish()V

    .line 252
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 168
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcHowToVideoPreference;

    .end local v0           #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcHowToVideoPreference;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v0       #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->finish()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 179
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;

    .end local v0           #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;-><init>(Landroid/content/Context;)V

    .line 180
    .restart local v0       #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->finish()V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 190
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcIconGlossaryPreference;

    .end local v0           #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcIconGlossaryPreference;-><init>(Landroid/content/Context;)V

    .line 191
    .restart local v0       #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->finish()V

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 201
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowMe(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 202
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;

    .end local v0           #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;-><init>(Landroid/content/Context;)V

    .line 203
    .restart local v0       #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->finish()V

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 214
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x40a0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    .line 215
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;

    .end local v0           #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;-><init>(Landroid/content/Context;)V

    .line 216
    .restart local v0       #actionPreference:Lcom/android/settings/framework/preference/HtcAbsActionPreference;
    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->finish()V

    goto :goto_0

    .line 220
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 227
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowAllQuickTips()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 231
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v2, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 232
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    const v3, 0x7f0c02f1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 233
    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 236
    new-instance v2, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;-><init>(Landroid/content/Context;)V

    .line 237
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 241
    new-instance v2, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v2, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;-><init>(Landroid/content/Context;)V

    .line 242
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addCallback(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 246
    sget-object v3, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 251
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->applyVerizonSearchButton()V

    goto/16 :goto_0
.end method

.method private applyVerizonSearchButton()V
    .locals 6

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, context:Landroid/content/Context;
    move-object v1, p0

    .line 289
    .local v1, host:Lcom/android/settings/framework/app/HtcIInternalHost;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.htc.iconglossary"

    const-string v5, "com.htc.iconglossary.SearchHelpActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 294
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    sget-boolean v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 296
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Does not support the intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    new-instance v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addSearchButtonToActionBarExt(Landroid/view/View$OnClickListener;)Lcom/htc/widget/ActionBarItemView;

    goto :goto_0
.end method

.method private doPlugin(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    .line 84
    .local v0, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 85
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v2, 0x7f0c02f0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 88
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-direct {p0, p1, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addVerizonEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->requestHandlers()V

    .line 95
    return-void

    .line 91
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addGenericEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    goto :goto_0
.end method


# virtual methods
.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->isCallerInsideSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 261
    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->doPlugin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->TAG:Ljava/lang/String;

    const-string v2, "Failed to add entries."

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneHelp.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private addGenericEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowMe(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowAllQuickTips()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c02f1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private addVerizonEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/VzwBasicDefinitionPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwBasicDefinitionPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcHowToVideoPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcHowToVideoPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwPasswordAndSecurityPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcIconGlossaryPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcIconGlossaryPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowMe(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x40a0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;->redirectCustomIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowAllQuickTips()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v2, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c02f1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v2, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;

    invoke-direct {v2, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v2, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;

    invoke-direct {v2, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcReviewAllTipsPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    sget-object v3, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->applyVerizonSearchButton()V

    goto/16 :goto_0
.end method

.method private applyVerizonSearchButton()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.htc.iconglossary"

    const-string v5, "com.htc.iconglossary.SearchHelpActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->DEBUG:Z

    if-eqz v3, :cond_0

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    new-instance v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp$1;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addSearchButtonToActionBarExt(Landroid/view/View$OnClickListener;)Lcom/htc/widget/ActionBarItemView;

    goto :goto_0
.end method

.method private doPlugin(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const v2, 0x7f0c02f0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addVerizonEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->addGenericEntries(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    goto :goto_0
.end method


# virtual methods
.method protected enabledBackupButton()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->isCallerInsideSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->doPlugin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHelp;->TAG:Ljava/lang/String;

    const-string v2, "Failed to add entries."

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

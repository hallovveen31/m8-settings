.class public Lcom/android/settings/framework/preference/HtcPreferencePluginManager;
.super Ljava/lang/Object;
.source "HtcPreferencePluginManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pluginPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;II)Lcom/htc/preference/HtcPreference;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static pluginPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "II",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/preference/HtcPreferenceScreen;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2, p4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/preference/HtcPreferenceScreen;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public static pluginPreferenceScreenIfAvailable(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    goto :goto_0
.end method

.method public static pluginPreferenceScreenIfAvailable(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    goto :goto_0
.end method

.method public static pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;II)Lcom/android/settings/framework/preference/HtcStatusPreference;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/settings/framework/preference/HtcStatusPreference;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcStatusPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

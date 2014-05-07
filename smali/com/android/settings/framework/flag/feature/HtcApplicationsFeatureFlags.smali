.class public Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;
.super Ljava/lang/Object;
.source "HtcApplicationsFeatureFlags.java"


# static fields
.field private static final UNKNOWN_SOURCES_VISIBILITY_KEY:Ljava/lang/String; = "unknown_sources_visibility"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppsTitleResId()I
    .locals 3

    const v0, 0x7f0c0f49

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x40b0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c0aaa

    :cond_0
    return v0
.end method

.method public static getUnknownSourcesVisibility(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "unknown_sources_visibility"

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "unknown_sources_visibility"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "unknown_sources_visibility"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const-string v4, "unknown_sources_visibility"

    invoke-static {p0, v4, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "unknown_sources_visibility"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v3, v2

    goto :goto_0
.end method

.method public static setUnknownSourcesVisibility(Landroid/content/Context;Z)Z
    .locals 4

    const-string v0, "unknown_sources_visibility"

    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "unknown_sources_visibility"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static final supportAutomaticStartup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final supportNotification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

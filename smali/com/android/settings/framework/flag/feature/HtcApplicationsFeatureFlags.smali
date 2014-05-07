.class public Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;
.super Ljava/lang/Object;
.source "HtcApplicationsFeatureFlags.java"


# static fields
.field private static final UNKNOWN_SOURCES_VISIBILITY_KEY:Ljava/lang/String; = "unknown_sources_visibility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppsTitleResId()I
    .locals 3

    .prologue
    .line 103
    const v0, 0x7f0c0f49

    .line 106
    .local v0, resId:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x40b0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const v0, 0x7f0c0aaa

    .line 111
    :cond_0
    return v0
.end method

.method public static getUnknownSourcesVisibility(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 30
    const-string v0, "unknown_sources_visibility"

    .line 32
    .local v0, KEY:Ljava/lang/String;
    const/4 v2, 0x1

    .line 35
    .local v2, visible:Z
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v4, "unknown_sources_visibility"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    const-string v4, "unknown_sources_visibility"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v3, v2

    .line 46
    .end local v2           #visible:Z
    .local v3, visible:Z
    :goto_0
    return v3

    .line 42
    .end local v3           #visible:Z
    .restart local v2       #visible:Z
    :cond_0
    const-string v4, "unknown_sources_visibility"

    invoke-static {p0, v4, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 44
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "unknown_sources_visibility"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v3, v2

    .line 46
    .end local v2           #visible:Z
    .restart local v3       #visible:Z
    goto :goto_0
.end method

.method public static setUnknownSourcesVisibility(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "visible"

    .prologue
    .line 58
    const-string v0, "unknown_sources_visibility"

    .line 61
    .local v0, KEY:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, sp:Landroid/content/SharedPreferences;
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

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public static final supportNotification()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

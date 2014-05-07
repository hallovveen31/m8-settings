.class public Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcLocAGPSSyncTimePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$1;,
        Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->initial()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->initial()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->initial()V

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0192

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0190

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "(name=\'sync_time_with_gps_enabled\')"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, systemSettingsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;

    .line 95
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v7, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 97
    .end local v6           #systemSettingsCursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, isGpsEnabled:Z
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetValueInBackground(): isGpsEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    if-eqz v0, :cond_1

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->setEnabledInForeground(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getGpsTimeSyncEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 150
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->setEnabledInForeground(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v4}, Lcom/android/settings/framework/util/HtcLocationUtil;->setGpsTimeSyncEnabled(Landroid/content/Context;ZZ)V

    .line 152
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->setCheckedInForeground(Z)V

    .line 153
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 117
    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 107
    :cond_1
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v0, 0x1

    .line 160
    if-nez p2, :cond_0

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;->setCheckedInForeground(Z)V

    .line 163
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->setGpsTimeSyncEnabled(Landroid/content/Context;ZZ)V

    .line 164
    return v0
.end method

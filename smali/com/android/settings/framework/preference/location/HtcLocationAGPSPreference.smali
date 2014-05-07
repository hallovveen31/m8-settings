.class public Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcLocationAGPSPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

.field private mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->KEY:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getCustomSummaryOff()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c04dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getCustomSummaryOn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c04dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c04dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;-><init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "(name=\'assisted_gps_enabled\')"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v7, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "initOberver: contentResolver = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getSystemAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getUserAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    :cond_0
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSystemAgpsEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUserAgpsEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setEnabledInForeground(Z)V

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setEnabledInForeground(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->setEnabledInForeground(Z)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    :cond_2
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    :cond_2
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->showUseAgpsWarningDialog(Landroid/content/Context;)V

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateAGpsUISettings(Landroid/content/Context;Z)V

    goto :goto_0
.end method

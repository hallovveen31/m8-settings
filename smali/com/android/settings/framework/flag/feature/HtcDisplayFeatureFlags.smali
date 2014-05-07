.class public final Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;
.super Ljava/lang/Object;
.source "HtcDisplayFeatureFlags.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mSupportTVOut:Ljava/lang/Boolean;

.field private static sSupportFontSizeWithHuge:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->DEBUG:Z

    .line 224
    sput-object v2, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    .line 322
    sput-object v2, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->sSupportFontSizeWithHuge:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static keepShowingStayAwake(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "context"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_stay_awake_visible"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, isVisible:Z
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keepShowingStayAwake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 509
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method public static final support3DHomeScreen()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public static final supportAutoRotateScreen(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportBackButton(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 417
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v0

    .line 419
    .local v0, support:Z
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasRecentAppsButtonKey()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 422
    and-int/lit8 v0, v0, 0x0

    .line 424
    return v0

    .line 419
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static supportButtons(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isIddaDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->keepShowingStayAwake(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    :cond_2
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportHomeButton(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 368
    .local v0, defaultValue:Ljava/lang/Boolean;
    const-string v1, "def_support_button_default_option"

    invoke-static {p0, v1, v0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->getDefaultValueByTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static final supportDreamSettings(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final supportFontSizeWithHuge(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 297
    sget-object v3, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->sSupportFontSizeWithHuge:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 298
    sget-object v3, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->sSupportFontSizeWithHuge:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 316
    :goto_0
    return v2

    .line 301
    :cond_0
    const-string v0, "support_font_size_huge"

    .line 302
    .local v0, SIE_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x40a0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    const/4 v1, 0x1

    .line 305
    .local v1, defaultValue:Z
    :goto_1
    const-string v3, "support_font_size_huge"

    invoke-static {p0, v3, v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 308
    .local v2, support:Z
    sget-boolean v3, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SIE][Settings_properties][support_font_size_huge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "support_font_size_huge"

    invoke-static {p0, v4}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->log(Ljava/lang/String;)V

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Settings/Display/Font size#Huge][support="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->log(Ljava/lang/String;)V

    .line 315
    :cond_1
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v3, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->sSupportFontSizeWithHuge:Ljava/lang/Boolean;

    goto :goto_0

    .line 302
    .end local v1           #defaultValue:Z
    .end local v2           #support:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static supportFontStyle(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 163
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40c0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportGestures(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 343
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportGestures()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportEasyAccess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGoogleOrVoiceSearch(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 467
    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportHidiServices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportGyroCalibration()Z
    .locals 4

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 498
    .local v2, isSupported:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/bin/gyro_user"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v1, gyroUser:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    const/4 v2, 0x1

    .line 505
    .end local v1           #gyroUser:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static supportHomeButton(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 458
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasHomeButtonKey()Z

    move-result v0

    return v0
.end method

.method public static supportMenuButton(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 401
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasMenuButtonKey()Z

    move-result v0

    return v0
.end method

.method public static final supportNotificationFlash()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 483
    const-string v1, "ro.product.nled_off"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static supportRecentAppsButton(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 388
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v0

    .line 389
    .local v0, support:Z
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasRecentAppsButtonKey()Z

    move-result v1

    and-int/2addr v0, v1

    .line 390
    return v0
.end method

.method public static final supportScreenAutoBrightnessMax()Z
    .locals 2

    .prologue
    .line 492
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x40b0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportStayAwake(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 148
    const-string v1, "support_stay_awake"

    .line 149
    .local v1, SIE_KEY:Ljava/lang/String;
    const/4 v0, 0x1

    .line 150
    .local v0, DEFAULT_VALUE:Z
    const-string v3, "support_stay_awake"

    invoke-static {p0, v3, v2}, Lcom/android/settings/framework/content/custom/property/HtcSettingsProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->keepShowingStayAwake(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final supportTVOut(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 240
    sget-object v6, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 241
    sget-object v5, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 262
    :goto_0
    return v5

    .line 250
    :cond_0
    const-string v1, "com.htc.android.tvout"

    .line 251
    .local v1, TARGET_PACKAGE:Ljava/lang/String;
    const-string v0, "com.htc.android.tvout.SettingActivity"

    .line 252
    .local v0, TARGET_CLASS:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 256
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.htc.android.tvout"

    const-string v8, "com.htc.android.tvout.SettingActivity"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 260
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 261
    .local v4, size:I
    if-lez v4, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    .line 262
    sget-object v5, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method

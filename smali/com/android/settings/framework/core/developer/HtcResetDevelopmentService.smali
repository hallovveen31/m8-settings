.class public Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;
.super Landroid/app/IntentService;
.source "HtcResetDevelopmentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final ACTION_CUSTOMIZATION:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final DEBUG:Z = false

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final REASON_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->setIntentRedelivery(Z)V

    .line 41
    return-void
.end method

.method private cleanDeveloperResetValues()V
    .locals 4

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_developer_options_reset_values"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_developer_options_reset_values"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 498
    :cond_0
    return-void
.end method

.method private isDeveloperOptionsTurnedOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "development_settings_enabled"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, value:I
    if-ne v0, v1, :cond_0

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetAllowMockLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 229
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    :cond_0
    return-void
.end method

.method private resetBluetoothHciSnoopLog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 243
    .local v1, value:I
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 249
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 250
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private resetBugReportInPowerMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    :cond_0
    return-void
.end method

.method private resetDebugAppOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug_app"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wait_for_debugger"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, value:I
    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wait_for_debugger"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    :cond_1
    return-void
.end method

.method private resetDeveloperSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 476
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    :cond_0
    return-void
.end method

.method private resetDontKeepActivities()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_finish_activities"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 443
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private resetForceGpuRendering()V
    .locals 3

    .prologue
    .line 365
    const-string v1, "persist.sys.ui.hw"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "persist.sys.ui.hw"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method private resetForceRTLLayoutDirection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "debug.force_rtl"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 352
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "debug.force_rtl"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    const-string v1, "debug.force_rtl"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method

.method private resetOptions()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetDontKeepActivities()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetShowAllAnrs()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetBugReportInPowerMenu()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetAllowMockLocation()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetBluetoothHciSnoopLog()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetDebugAppOptions()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetWirelessDisplayCertification()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetShowTouches()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetPointerLocation()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetPerformanceMode()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetForceRTLLayoutDirection()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetForceGpuRendering()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetOverlayDisplayDevices()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetStrictMode()V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetShowCpuUsage()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->pokeSystemProperties()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetDeveloperSettings()V

    .line 209
    return-void
.end method

.method private resetOverlayDisplayDevices()V
    .locals 4

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "overlay_display_devices"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "overlay_display_devices"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    :cond_0
    return-void
.end method

.method private resetPerformanceMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_performance_mode_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 338
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_performance_mode_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    :cond_0
    return-void
.end method

.method private resetPointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 324
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    :cond_0
    return-void
.end method

.method private resetShowAllAnrs()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 462
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    :cond_0
    return-void
.end method

.method private resetShowCpuUsage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 423
    .local v1, value:I
    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->stopService(Landroid/content/Intent;)Z

    .line 437
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private resetShowTouches()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 310
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    :cond_0
    return-void
.end method

.method private resetStrictMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "strict_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, value:I
    if-eqz v1, :cond_0

    .line 395
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 397
    .local v0, mgr:Landroid/view/IWindowManager;
    :try_start_0
    const-string v2, ""

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "strict_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    const-string v2, "persist.sys.strictmode.profile"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .end local v0           #mgr:Landroid/view/IWindowManager;
    :cond_0
    return-void

    .line 402
    .restart local v0       #mgr:Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private resetWirelessDisplayCertification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 296
    .local v0, value:I
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 46
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->isDeveloperOptionsTurnedOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService;->resetOptions()V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/core/developer/HtcResetDevelopmentService$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method

.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_BLUETOOTH:I = 0x4

.field private static final BUTTON_BRIGHTNESS:I = 0x1

.field private static final BUTTON_GPS:I = 0x3

.field private static final BUTTON_SYNC:I = 0x2

.field private static final BUTTON_WIFI:I = 0x0

.field private static final FULL_BRIGHTNESS_THRESHOLD:F = 0.8f

.field private static final HALF_BRIGHTNESS_THRESHOLD:F = 0.3f

.field private static HTC_DEBUG:Z = false

.field private static final IND_DRAWABLE_MID:[I = null

.field private static final IND_DRAWABLE_OFF:[I = null

.field private static final IND_DRAWABLE_ON:[I = null

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sContext:Landroid/content/Context;

.field private static final sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 68
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    .line 70
    sput-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 93
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 99
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 105
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 116
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 117
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 118
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 119
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 121
    sput-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sContext:Landroid/content/Context;

    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x21t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0x1et 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_2
    .array-data 0x4
        0x24t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 1581
    return-void
.end method

.method static synthetic access$1000()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 1144
    sget-boolean v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1145
    const-string v1, "buildUpdate() --- BEGIN ---"

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1148
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040114

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1150
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f090276

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1152
    const v1, 0x7f090282

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1155
    const v1, 0x7f09027f

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1158
    const v1, 0x7f09027c

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1160
    const v1, 0x7f090279

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1164
    invoke-static {v0, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 1166
    sget-boolean v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v1, :cond_1

    .line 1167
    const-string v1, "buildUpdate() --- END ---"

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1170
    :cond_1
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1007
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 1008
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 1010
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 1012
    sget-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1013
    const-string v0, "checkObserver() start observing ..."

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1016
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1460
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1463
    .local v0, brightness:I
    sget-boolean v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v2, :cond_0

    .line 1464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightness() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    .end local v0           #brightness:I
    :cond_0
    :goto_0
    return v0

    .line 1468
    :catch_0
    move-exception v1

    .line 1469
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1471
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1482
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1484
    .local v1, brightnessMode:I
    if-ne v1, v0, :cond_1

    .line 1486
    .local v0, bAuto:Z
    :goto_0
    sget-boolean v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v4, :cond_0

    .line 1487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_2

    const-string v4, "auto"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1496
    .end local v0           #bAuto:Z
    .end local v1           #brightnessMode:I
    :cond_0
    :goto_2
    return v0

    .restart local v1       #brightnessMode:I
    :cond_1
    move v0, v3

    .line 1484
    goto :goto_0

    .line 1487
    .restart local v0       #bAuto:Z
    :cond_2
    const-string v4, "manual"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1491
    .end local v0           #bAuto:Z
    .end local v1           #brightnessMode:I
    :catch_0
    move-exception v2

    .line 1492
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v4, :cond_3

    .line 1493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    :cond_3
    move v0, v3

    .line 1496
    goto :goto_2
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 1270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1271
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1272
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1274
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1276
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1644
    const-string v0, "SettingsAppWidgetProvider"

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    return-void
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1505
    sget-boolean v6, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v6, :cond_0

    .line 1506
    const-string v6, "toggleBrightness() --- BEGIN ---"

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1510
    :cond_0
    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 1512
    .local v5, power:Landroid/os/IPowerManager;
    if-eqz v5, :cond_4

    .line 1513
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1514
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1515
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v6, "screen_brightness"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1517
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 1519
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1521
    const-string v6, "screen_brightness_mode"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1525
    :cond_1
    sget-boolean v6, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v6, :cond_2

    .line 1526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightness1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightnessMode1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1532
    :cond_2
    const/4 v6, 0x1

    if-ne v1, v6, :cond_6

    .line 1533
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 1534
    const/4 v1, 0x0

    .line 1544
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1547
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1555
    :goto_1
    sget-boolean v6, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v6, :cond_3

    .line 1556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightness2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightnessMode2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1560
    :cond_3
    if-nez v1, :cond_4

    .line 1561
    invoke-interface {v5, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 1562
    const-string v6, "screen_brightness"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1575
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #pm:Landroid/os/PowerManager;
    .end local v5           #power:Landroid/os/IPowerManager;
    :cond_4
    :goto_2
    sget-boolean v6, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v6, :cond_5

    .line 1576
    const-string v6, "toggleBrightness() --- END ---"

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1578
    :cond_5
    return-void

    .line 1535
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #pm:Landroid/os/PowerManager;
    .restart local v5       #power:Landroid/os/IPowerManager;
    :cond_6
    :try_start_1
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 1536
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 1537
    :cond_7
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 1538
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 1540
    :cond_8
    const/4 v1, 0x1

    .line 1541
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 1552
    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    .line 1565
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #pm:Landroid/os/PowerManager;
    .end local v5           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 1566
    .local v3, e:Landroid/os/RemoteException;
    sget-boolean v6, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v6, :cond_4

    .line 1567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1569
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1570
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-boolean v6, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v6, :cond_4

    .line 1571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11
    .parameter "views"
    .parameter "context"

    .prologue
    const v10, 0x7f0c1151

    const v9, 0x7f090283

    const v8, 0x7f090282

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1203
    sget-boolean v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v4, :cond_0

    .line 1204
    const-string v4, "updateButtons() --- BEGIN ---"

    invoke-static {v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1207
    :cond_0
    sget-object v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 1208
    sget-object v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 1209
    sget-object v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 1210
    sget-object v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 1212
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1213
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c1152

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1216
    const v4, 0x7f020076

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1218
    const v4, 0x7f090284

    const v5, 0x7f020025

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1257
    :goto_0
    sget-boolean v4, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v4, :cond_1

    .line 1258
    const-string v4, "updateButtons() --- END ---"

    invoke-static {v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1260
    :cond_1
    return-void

    .line 1221
    :cond_2
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 1222
    .local v0, brightness:I
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1224
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 1226
    .local v1, full:I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 1228
    .local v2, half:I
    if-le v0, v1, :cond_3

    .line 1229
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c1153

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1232
    const v4, 0x7f020077

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1248
    :goto_1
    if-le v0, v2, :cond_5

    .line 1249
    const v4, 0x7f090284

    const v5, 0x7f020025

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 1234
    :cond_3
    if-le v0, v2, :cond_4

    .line 1235
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c1154

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1238
    const v4, 0x7f020078

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 1241
    :cond_4
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c1155

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1244
    const v4, 0x7f020079

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 1252
    :cond_5
    const v4, 0x7f090284

    const v5, 0x7f020022

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1179
    sget-boolean v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v2, :cond_0

    .line 1180
    const-string v2, "updateWidget() --- BEGIN ---"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1183
    :cond_0
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1186
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1187
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 1189
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 1191
    sget-boolean v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v2, :cond_1

    .line 1192
    const-string v2, "updateWidget() --- END ---"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1194
    :cond_1
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "newOptions"

    .prologue
    const/4 v0, 0x0

    .line 1444
    const-string v1, "com.htc.launcher.widget_visibility"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1445
    .local v0, isVisible:Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppWidgetOptionsChanged, isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1447
    if-eqz v0, :cond_1

    .line 1448
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 1450
    :cond_1
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1087
    sget-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1088
    const-string v0, "onDisabled() --- BEGIN ---"

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1091
    :cond_0
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_1

    .line 1092
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 1093
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 1095
    sget-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1096
    const-string v0, "stop observing ..."

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1100
    :cond_1
    sput-object p1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sContext:Landroid/content/Context;

    .line 1102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$2;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1135
    sget-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v0, :cond_2

    .line 1136
    const-string v0, "onDisabled() --- END ---"

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1138
    :cond_2
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1040
    sget-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1041
    const-string v0, "onEnabled() --- BEGIN ---"

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1044
    :cond_0
    sput-object p1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sContext:Landroid/content/Context;

    .line 1046
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1078
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 1080
    sget-boolean v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1081
    const-string v0, "onEnabled() --- END ---"

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1083
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1288
    new-instance v18, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct/range {v18 .. v18}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    .line 1290
    .local v18, timer:Lcom/android/settings/framework/os/HtcPerformanceTimer;
    sget-boolean v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v20, :cond_0

    .line 1291
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ">>onReceive("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1296
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, action:Ljava/lang/String;
    const-string v20, "com.htc.settings.action.SAWP_WIFI_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1301
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1426
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 1429
    sget-boolean v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v20, :cond_2

    .line 1430
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1431
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<<onReceive("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1434
    :cond_2
    :goto_1
    return-void

    .line 1302
    :cond_3
    const-string v20, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1303
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1304
    :cond_4
    const-string v20, "android.device_admin.action.STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1305
    const-string v20, "device_admin_SERVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1306
    .local v16, service:Ljava/lang/String;
    const-string v20, "device_admin_service_BT"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1307
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1309
    .end local v16           #service:Ljava/lang/String;
    :cond_5
    const-string v20, "android.location.PROVIDERS_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1310
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1312
    :cond_6
    sget-object v20, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1325
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1326
    :cond_7
    const-string v20, "android.intent.category.ALTERNATIVE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1328
    .local v5, data:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1329
    .local v4, buttonId:I
    if-nez v4, :cond_10

    .line 1331
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 1334
    .local v11, isRadioWifiAllowed:Z
    const-string v20, "ro.st.blockw"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1337
    .local v14, isStBlockWifi:Z
    const/4 v9, 0x1

    .line 1338
    .local v9, isEasWifiAllowed:Z
    const-string v20, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 1339
    .local v6, dpMgr:Landroid/app/admin/DevicePolicyManager;
    if-eqz v6, :cond_8

    .line 1340
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v7

    .line 1341
    .local v7, estate:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_8

    .line 1342
    const/4 v9, 0x0

    .line 1347
    .end local v7           #estate:I
    :cond_8
    const/4 v12, 0x1

    .line 1348
    .local v12, isSprintWifiAllowed:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v20

    if-nez v20, :cond_9

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v20

    if-nez v20, :cond_9

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintBoostSku()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1351
    :cond_9
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    .line 1352
    .local v19, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v19, :cond_a

    invoke-static/range {v19 .. v19}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->isWifiRestricted(Landroid/net/wifi/WifiManager;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1353
    const/4 v12, 0x0

    .line 1354
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->showDialog(Landroid/content/Context;I)V

    .line 1358
    .end local v19           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_a
    sget-boolean v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v20, :cond_b

    .line 1359
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isRadioWifiAllowed = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v11, :cond_c

    const-string v20, "true"

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1360
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isStBlockWifi = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v14, :cond_d

    const-string v20, "true"

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1361
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isEasWifiAllowed = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v9, :cond_e

    const-string v20, "true"

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1362
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isSprintWifiAllowed = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v12, :cond_f

    const-string v20, "true"

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1366
    :cond_b
    if-eqz v11, :cond_1

    if-nez v14, :cond_1

    if-eqz v9, :cond_1

    if-eqz v12, :cond_1

    .line 1367
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1359
    :cond_c
    const-string v20, "false"

    goto :goto_2

    .line 1360
    :cond_d
    const-string v20, "false"

    goto :goto_3

    .line 1361
    :cond_e
    const-string v20, "false"

    goto :goto_4

    .line 1362
    :cond_f
    const-string v20, "false"

    goto :goto_5

    .line 1370
    .end local v6           #dpMgr:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #isEasWifiAllowed:Z
    .end local v11           #isRadioWifiAllowed:Z
    .end local v12           #isSprintWifiAllowed:Z
    .end local v14           #isStBlockWifi:Z
    :cond_10
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_11

    .line 1371
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1372
    :cond_11
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v4, v0, :cond_12

    .line 1373
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1374
    :cond_12
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v4, v0, :cond_13

    .line 1375
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1376
    :cond_13
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v4, v0, :cond_1

    .line 1378
    const-string v20, "bluetooth"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    .line 1381
    .local v10, isRadioBtAllowed:Z
    const-string v20, "ro.st.blockb"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1384
    .local v13, isStBlockBt:Z
    const/4 v8, 0x1

    .line 1385
    .local v8, isEasBtAllowed:Z
    const-string v20, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 1386
    .restart local v6       #dpMgr:Landroid/app/admin/DevicePolicyManager;
    if-eqz v6, :cond_14

    .line 1387
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v7

    .line 1388
    .restart local v7       #estate:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_14

    .line 1389
    const/4 v8, 0x0

    .line 1395
    .end local v7           #estate:I
    :cond_14
    const/16 v17, 0x1

    .line 1396
    .local v17, systemSupportBt:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1397
    .local v15, pm:Landroid/content/pm/PackageManager;
    if-eqz v15, :cond_15

    const-string v20, "android.hardware.bluetooth"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    .line 1399
    :cond_15
    sget-boolean v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v20, :cond_16

    .line 1400
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isRadioBtAllowed = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v10, :cond_17

    const-string v20, "true"

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1401
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isStBlockBt = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v13, :cond_18

    const-string v20, "true"

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1402
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isEasBtAllowed = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v8, :cond_19

    const-string v20, "true"

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1403
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "systemSupportBt = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v17, :cond_1a

    const-string v20, "true"

    :goto_9
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1407
    :cond_16
    if-eqz v10, :cond_1

    if-nez v13, :cond_1

    if-eqz v8, :cond_1

    if-eqz v17, :cond_1

    .line 1408
    sget-object v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1400
    :cond_17
    const-string v20, "false"

    goto :goto_6

    .line 1401
    :cond_18
    const-string v20, "false"

    goto :goto_7

    .line 1402
    :cond_19
    const-string v20, "false"

    goto :goto_8

    .line 1403
    :cond_1a
    const-string v20, "false"

    goto :goto_9

    .line 1417
    .end local v4           #buttonId:I
    .end local v5           #data:Landroid/net/Uri;
    .end local v6           #dpMgr:Landroid/app/admin/DevicePolicyManager;
    .end local v8           #isEasBtAllowed:Z
    .end local v10           #isRadioBtAllowed:Z
    .end local v13           #isStBlockBt:Z
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    .end local v17           #systemSupportBt:Z
    :cond_1b
    sget-boolean v20, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v20, :cond_2

    .line 1418
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1419
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<<onReceive("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "): return"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 1022
    sget-boolean v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v2, :cond_0

    .line 1023
    const-string v2, "onUpdate() --- BEGIN ---"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1027
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1029
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 1030
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    sget-boolean v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->HTC_DEBUG:Z

    if-eqz v2, :cond_2

    .line 1034
    const-string v2, "onUpdate() --- END ---"

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V

    .line 1036
    :cond_2
    return-void
.end method

.method showDialog(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "dialogType"

    .prologue
    .line 1634
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1635
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/widget/SettingsAppWidgetDialog;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1636
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1637
    const-string v1, "dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1639
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1640
    return-void
.end method

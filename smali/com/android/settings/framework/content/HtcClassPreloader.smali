.class public Lcom/android/settings/framework/content/HtcClassPreloader;
.super Ljava/lang/Object;
.source "HtcClassPreloader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/content/HtcClassPreloader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcClassPreloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/HtcClassPreloader;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static preload(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/16 v6, 0xf

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.android.settings.AirplaneModeEnabler"

    aput-object v7, v1, v6

    const-string v6, "com.android.settings.MobileDataEnabler"

    aput-object v6, v1, v8

    const/4 v6, 0x2

    const-string v7, "com.android.settings.R"

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-string v7, "com.android.settings.Settings"

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, "com.android.settings.Utils"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-string v7, "com.android.settings.bluetooth.BluetoothEnabler"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "com.android.settings.framework.activity.HtcWrapHeader"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const-string v7, "com.android.settings.framework.activity.HtcEntryProxy"

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, "com.android.settings.framework.activity.HtcHeaderAdapter"

    aput-object v7, v1, v6

    const/16 v6, 0x9

    const-string v7, "com.android.settings.framework.flag.feature.HtcInfraredFeatureFlags"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    const-string v7, "com.android.settings.framework.widget.HtcPreferenceCategoryView"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    const-string v7, "com.android.settings.framework.widget.HtcPreferenceHeaderItemView"

    aput-object v7, v1, v6

    const/16 v6, 0xc

    const-string v7, "com.android.settings.framework.widget.HtcPreferenceHeaderSwitchItemView"

    aput-object v7, v1, v6

    const/16 v6, 0xd

    const-string v7, "com.android.settings.wifi.WifiEnabler"

    aput-object v7, v1, v6

    const/16 v6, 0xe

    const-string v7, "com.android.settings.wimax.WimaxEnabler"

    aput-object v7, v1, v6

    array-length v0, v1

    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    new-instance v5, Lcom/android/settings/framework/os/HtcPerformanceTimer;

    invoke-direct {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;-><init>()V

    const-string v6, ">> preload(...)"

    invoke-static {v6}, Lcom/android/settings/framework/content/HtcClassPreloader;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->start()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/content/HtcClassPreloader;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t loading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/content/HtcClassPreloader;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v4, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, Lcom/android/settings/framework/content/HtcClassPreloader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/settings/framework/os/HtcPerformanceTimer;->stop()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/content/HtcClassPreloader;->log(Ljava/lang/String;)V

    const-string v6, "<< preload(...)"

    invoke-static {v6}, Lcom/android/settings/framework/content/HtcClassPreloader;->log(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

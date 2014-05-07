.class Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcWifiManagerWrapper"
.end annotation


# static fields
.field private static sMethod_getWanDetectionEnabled:Ljava/lang/reflect/Method;

.field private static sMethod_setWanDetectionEnabled:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 780
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "getWanDetectionEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->sMethod_getWanDetectionEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "setWanDetectionEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->sMethod_setWanDetectionEnabled:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 789
    :goto_1
    return-void

    .line 781
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 782
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "no getWanDetectionEnabled method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 786
    :catch_1
    move-exception v0

    .line 787
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "no setWanDetectionEnabled method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWanDetectionEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 5
    .parameter "wifiManager"

    .prologue
    const/4 v2, 0x0

    .line 792
    if-nez p0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v2

    .line 795
    :cond_1
    sget-object v3, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->sMethod_getWanDetectionEnabled:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 799
    :try_start_0
    sget-object v3, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->sMethod_getWanDetectionEnabled:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 800
    .local v1, result:Ljava/lang/Object;
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AdvancedWifiSettings"

    const-string v4, "failed to invoke isWanDetectionEnabled (...)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setWanDetectionEnabled(Landroid/net/wifi/WifiManager;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 808
    if-nez p0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    sget-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->sMethod_setWanDetectionEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 815
    :try_start_0
    sget-object v1, Lcom/android/settings/wifi/AdvancedWifiSettings$HtcWifiManagerWrapper;->sMethod_setWanDetectionEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "failed to invoke isWanDetectionEnabled (...)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

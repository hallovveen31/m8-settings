.class public Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;
.super Ljava/lang/Object;
.source "HtcRefWrapWifiManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sMethod_getAssociationManual:Ljava/lang/reflect/Method;

.field private static sMethod_setAssociationManual:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->DEBUG:Z

    .line 34
    :try_start_0
    const-class v1, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;

    const-string v2, "setAssociationManual"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/wifi/WifiManager;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->sMethod_setAssociationManual:Ljava/lang/reflect/Method;

    .line 36
    const-class v1, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;

    const-string v2, "getAssociationManual"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/wifi/WifiManager;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->sMethod_getAssociationManual:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    return-void

    .line 38
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 39
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    sget-boolean v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssociationManual(Landroid/net/wifi/WifiManager;)I
    .locals 7
    .parameter "wifiManager"

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->sMethod_getAssociationManual:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 72
    :goto_0
    return v2

    .line 67
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->sMethod_getAssociationManual:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, result:Ljava/lang/Object;
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->TAG:Ljava/lang/String;

    const-string v4, "failed to invoke getAssociationManual(...)"

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAssociationManual(Landroid/net/wifi/WifiManager;I)Z
    .locals 8
    .parameter "wifiManager"
    .parameter "isManual"

    .prologue
    const/4 v2, 0x0

    .line 47
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->sMethod_setAssociationManual:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 57
    :goto_0
    return v2

    .line 52
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->sMethod_setAssociationManual:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, result:Ljava/lang/Object;
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/reflect/com/htc/wrap/android/net/wifi/HtcRefWrapWifiManager;->TAG:Ljava/lang/String;

    const-string v4, "failed to invoke setAssociationManual(...)"

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

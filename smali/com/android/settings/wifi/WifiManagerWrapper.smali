.class public Lcom/android/settings/wifi/WifiManagerWrapper;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static para:[Ljava/lang/Class;

.field private static sMethod_getVFAutoJoin:Ljava/lang/reflect/Method;

.field private static sMethod_setVFAutoJoin:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x1

    const-class v1, Lcom/android/settings/wifi/WifiManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Class;

    sput-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->para:[Ljava/lang/Class;

    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "setVFAutoJoin"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_setVFAutoJoin:Ljava/lang/reflect/Method;

    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "getVFAutoJoin"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_getVFAutoJoin:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_setVFAutoJoin:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "get setVFAutoJoin() method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_getVFAutoJoin:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "get getVFAutoJoin() method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "no setVFAutoJoin() method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "no getVFAutoJoin() method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVFAutoJoin(Landroid/net/wifi/WifiManager;I)I
    .locals 7

    const/4 v2, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v3, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_getVFAutoJoin:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_getVFAutoJoin:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "failed to invoke getWQEEnabled(...)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setVFAutoJoin(Landroid/net/wifi/WifiManager;ZI)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_setVFAutoJoin:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setVFAutoJoin called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->sMethod_setVFAutoJoin:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/wifi/WifiManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "failed to invoke setWQEEnabled(...)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

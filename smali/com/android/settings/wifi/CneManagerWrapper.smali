.class public Lcom/android/settings/wifi/CneManagerWrapper;
.super Ljava/lang/Object;
.source "CneManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCneManager:Ljava/lang/Object;

.field private static para:[Ljava/lang/Class;

.field private static sMethod_getWQEEnabled:Ljava/lang/reflect/Method;

.field private static sMethod_setWQEEnabled:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x1

    const-class v2, Lcom/android/settings/wifi/CneManagerWrapper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Class;

    sput-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->para:[Ljava/lang/Class;

    :try_start_0
    const-string v2, "com.quicinc.cneapiclient.CNEManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->mCneManager:Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->mCneManager:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const-string v2, "setWQEEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_setWQEEnabled:Ljava/lang/reflect/Method;

    const-string v2, "getWQEEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_getWQEEnabled:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_setWQEEnabled:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    const-string v3, "get setWQEEnabled() method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_getWQEEnabled:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    const-string v3, "get getWQEEnabled() method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    const-string v3, "NoSuchMethodException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWQEEnabled()Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/wifi/CneManagerWrapper;->mCneManager:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v3, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_getWQEEnabled:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "getWQEEnabled called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v3, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_getWQEEnabled:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/android/settings/wifi/CneManagerWrapper;->mCneManager:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "failed to invoke getWQEEnabled(...)"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setWQEEnabled(Z)V
    .locals 6

    sget-object v1, Lcom/android/settings/wifi/CneManagerWrapper;->mCneManager:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_setWQEEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "setWQEEnabled called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/settings/wifi/CneManagerWrapper;->sMethod_setWQEEnabled:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/settings/wifi/CneManagerWrapper;->mCneManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/wifi/CneManagerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "failed to invoke setWQEEnabled(...)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

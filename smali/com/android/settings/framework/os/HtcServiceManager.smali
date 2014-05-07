.class public final Lcom/android/settings/framework/os/HtcServiceManager;
.super Ljava/lang/Object;
.source "HtcServiceManager.java"


# static fields
.field private static sDeviceManager3lm:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/service/DeviceManager3LM;",
            ">;"
        }
    .end annotation
.end field

.field private static sDevicePolicyManager:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/admin/HtcIfDevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sWifiManager:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceManager3LM(Landroid/content/Context;)Lcom/htc/service/DeviceManager3LM;
    .locals 3

    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDeviceManager3lm:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDeviceManager3lm:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DeviceManager3LM;

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "DeviceManager3LM"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DeviceManager3LM;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDeviceManager3lm:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    goto :goto_0
.end method

.method public static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;
    .locals 3

    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDevicePolicyManager:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDevicePolicyManager:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDevicePolicyManager:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    goto :goto_0
.end method

.method public static getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 3

    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sWifiManager:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sWifiManager:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sWifiManager:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    goto :goto_0
.end method

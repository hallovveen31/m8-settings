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

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceManager3LM(Landroid/content/Context;)Lcom/htc/service/DeviceManager3LM;
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDeviceManager3lm:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 86
    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDeviceManager3lm:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DeviceManager3LM;

    .line 87
    .local v0, service:Lcom/htc/service/DeviceManager3LM;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 98
    .end local v0           #service:Lcom/htc/service/DeviceManager3LM;
    .local v1, service:Lcom/htc/service/DeviceManager3LM;
    :goto_0
    return-object v1

    .line 94
    .end local v1           #service:Lcom/htc/service/DeviceManager3LM;
    :cond_0
    const-string v2, "DeviceManager3LM"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DeviceManager3LM;

    .line 96
    .restart local v0       #service:Lcom/htc/service/DeviceManager3LM;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDeviceManager3lm:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 98
    .end local v0           #service:Lcom/htc/service/DeviceManager3LM;
    .restart local v1       #service:Lcom/htc/service/DeviceManager3LM;
    goto :goto_0
.end method

.method public static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDevicePolicyManager:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDevicePolicyManager:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 61
    .local v0, service:Landroid/app/admin/HtcIfDevicePolicyManager;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 72
    .end local v0           #service:Landroid/app/admin/HtcIfDevicePolicyManager;
    .local v1, service:Landroid/app/admin/HtcIfDevicePolicyManager;
    :goto_0
    return-object v1

    .line 68
    .end local v1           #service:Landroid/app/admin/HtcIfDevicePolicyManager;
    :cond_0
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 70
    .restart local v0       #service:Landroid/app/admin/HtcIfDevicePolicyManager;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sDevicePolicyManager:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 72
    .end local v0           #service:Landroid/app/admin/HtcIfDevicePolicyManager;
    .restart local v1       #service:Landroid/app/admin/HtcIfDevicePolicyManager;
    goto :goto_0
.end method

.method public static getWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sWifiManager:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 35
    sget-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sWifiManager:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 36
    .local v0, service:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 46
    .end local v0           #service:Landroid/net/wifi/WifiManager;
    .local v1, service:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 43
    .end local v1           #service:Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 45
    .restart local v0       #service:Landroid/net/wifi/WifiManager;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/settings/framework/os/HtcServiceManager;->sWifiManager:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 46
    .end local v0           #service:Landroid/net/wifi/WifiManager;
    .restart local v1       #service:Landroid/net/wifi/WifiManager;
    goto :goto_0
.end method

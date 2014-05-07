.class public Lcom/android/settings/framework/util/HtcMdmUtil;
.super Ljava/lang/Object;
.source "HtcMdmUtil.java"


# static fields
.field public static final DB_KEY_DEVICE_ADMIN_LOCKED:Ljava/lang/String; = "mdm_device_admin_locked"

.field public static final DB_KEY_UNKNOWN_SOURCES_LOCKED:Ljava/lang/String; = "mdm_unknown_sources_locked"

.field public static final DB_KEY_USB_DEBUGGING_LOCKED:Ljava/lang/String; = "mdm_usb_debugging_locked"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeviceAdminLocked(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mdm_device_admin_locked"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMDMApiSupported()Z
    .locals 1

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->isMDMAPIPhase2Supported()Z

    move-result v0

    return v0
.end method

.method public static isUnknownSourcesLocked(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mdm_unknown_sources_locked"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsbDebuggingLocked(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mdm_usb_debugging_locked"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

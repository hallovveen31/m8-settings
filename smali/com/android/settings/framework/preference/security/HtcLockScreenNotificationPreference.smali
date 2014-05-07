.class public Lcom/android/settings/framework/preference/security/HtcLockScreenNotificationPreference;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcLockScreenNotificationPreference.java"


# static fields
.field private static final CATEGORY_HTCLOCKSCREEN:Ljava/lang/String; = "HtcLoccksreen"

.field public static final HIGH_END_DEVICE:I = 0x50

.field private static final KEY_DEVICE_PERFORMANCE_LEVEL:Ljava/lang/String; = "device_performance_level"

.field public static final LOW_END_DEVICE:I = 0x64

.field public static final MIDDLE_END_DEVICE:I = 0x5a


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.widget.notification"

    const-string v2, "com.htc.widget.notification.ProductivitySettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcLockScreenNotificationPreference;->showProductivityViewOnLockScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c01d7

    return v0
.end method

.method public getDevicePerformanceLevel()I
    .locals 6

    new-instance v1, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v1}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    const/4 v2, 0x0

    const/16 v0, 0x50

    if-eqz v1, :cond_0

    const-string v3, "HtcLoccksreen"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "device_performance_level"

    const/16 v4, 0x50

    invoke-virtual {v2, v3, v4}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public showProductivityViewOnLockScreen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcLockScreenNotificationPreference;->getDevicePerformanceLevel()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

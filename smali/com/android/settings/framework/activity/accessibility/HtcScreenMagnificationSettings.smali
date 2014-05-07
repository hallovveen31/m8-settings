.class public Lcom/android/settings/framework/activity/accessibility/HtcScreenMagnificationSettings;
.super Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;
.source "HtcScreenMagnificationSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/settings/framework/activity/accessibility/HtcScreenMagnificationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/accessibility/HtcScreenMagnificationSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDescriptionText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/accessibility/HtcScreenMagnificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c1061

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0c105c

    return v0
.end method

.method protected getToggleButtonStateInBackground()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/accessibility/HtcScreenMagnificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 35
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onToggleButtonChecked(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/accessibility/HtcScreenMagnificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 27
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

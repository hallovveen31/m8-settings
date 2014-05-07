.class public Lcom/android/settings/AccessibilitySettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;,
        Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleSwitch;,
        Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_MARKET_LINK:Ljava/lang/String; = "market://search?q=pname:com.google.android.marvin.talkback"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DIALOG_ID_NO_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field private static final EXTRA_DISABLE_WARNING_MESSAGE:Ljava/lang/String; = "disable_warning_message"

.field private static final EXTRA_DISABLE_WARNING_TITLE:Ljava/lang/String; = "disable_warning_title"

.field private static final EXTRA_ENABLE_WARNING_MESSAGE:Ljava/lang/String; = "enable_warning_message"

.field private static final EXTRA_ENABLE_WARNING_TITLE:Ljava/lang/String; = "enable_warning_title"

.field private static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field private static final EXTRA_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "service_component_name"

.field private static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field private static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field private static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_INSTALL_ACCESSIBILITY_SERVICE_OFFERED_ONCE:Ljava/lang/String; = "key_install_accessibility_service_offered_once"

.field private static final LARGE_FONT_SCALE:F = 1.3f

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final SYSTEM_PROPERTY_MARKET_URL:Ljava/lang/String; = "ro.screenreader.market"

.field private static final TAG:Ljava/lang/String; = "AccessibilitySettings"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final TOGGLE_SPEAK_PASSWORD_PREFERENCE:Ljava/lang/String; = "toggle_speak_password_preference"

.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

.field private mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mToggleLockScreenRotationPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mToggleSpeakPasswordPreference:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 164
    new-instance v0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 166
    new-instance v0, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/android/settings/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1079
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Set;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    return-object v0
.end method

.method private static createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 3
    .parameter "activity"

    .prologue
    .line 639
    new-instance v1, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 641
    .local v1, toggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    instance-of v2, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 642
    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 644
    .local v0, internalActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 647
    .end local v0           #internalActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_0
    return-object v1
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 595
    const-string v4, ""

    .line 597
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 598
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 599
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 600
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 601
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 604
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 605
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 280
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 290
    const-string v6, "services_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 291
    const-string v6, "system_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 299
    new-instance v2, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;-><init>(Landroid/app/Activity;)V

    .line 300
    .local v2, preference:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;
    invoke-virtual {v2, v8}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->setOrder(I)V

    .line 301
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v6, v2}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings;->addCallback(Ljava/lang/Object;)V

    .line 305
    const-string v6, "screen_magnification_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 306
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->addCallback(Ljava/lang/Object;)V

    .line 311
    :cond_0
    const-string v6, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 313
    const/16 v6, 0x1a

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 315
    :cond_1
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 319
    :cond_2
    const-string v6, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 323
    const-string v6, "toggle_speak_password_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 327
    const-string v6, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_3

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->addCallback(Ljava/lang/Object;)V

    .line 332
    :cond_3
    sget-object v6, Lcom/android/settings/framework/preference/accessibility/HtcMagnifierPreference;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_4

    .line 334
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAccessibilityFeatureFlags;->supportMagnifierSetting()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->addCallback(Ljava/lang/Object;)V

    .line 342
    :cond_4
    :goto_0
    const-string v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcListPreference;

    iput-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    .line 344
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 345
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, timeoutValues:[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, timeoutTitles:[Ljava/lang/String;
    array-length v4, v5

    .line 352
    .local v4, timeoutValueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 353
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v0

    aget-object v8, v3, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    .end local v0           #i:I
    .end local v3           #timeoutTitles:[Ljava/lang/String;
    .end local v4           #timeoutValueCount:I
    .end local v5           #timeoutValues:[Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mSystemsCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 357
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->requestHandlers()V

    .line 358
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 579
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    sget-object v4, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 580
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 581
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 582
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 583
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 584
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v1           #installedService:Landroid/content/ComponentName;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 531
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    if-eq v3, v4, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 535
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "key_install_accessibility_service_offered_once"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 537
    .local v0, offerInstallService:Z
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 542
    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateSystemPreferences()V

    .line 363
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 523
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 527
    :cond_0
    return-void

    .line 524
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 23

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 375
    .local v4, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 377
    .local v13, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 379
    .local v9, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "accessibility_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 382
    .local v3, accessibilityEnabled:Z
    :goto_0
    const/4 v11, 0x0

    .local v11, i:I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .local v7, count:I
    :goto_1
    if-ge v11, v7, :cond_5

    .line 383
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 385
    .local v12, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v14

    .line 387
    .local v14, preference:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 389
    .local v18, title:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 390
    .local v16, serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .local v6, componentName:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    if-eqz v3, :cond_3

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v15, 0x1

    .line 398
    .local v15, serviceEnabled:Z
    :goto_2
    if-eqz v15, :cond_4

    .line 399
    const v19, 0x7f0c106e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    :goto_3
    invoke-virtual {v14, v11}, Lcom/htc/preference/HtcPreferenceScreen;->setOrder(I)V

    .line 405
    const-class v19, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 406
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setPersistent(Z)V

    .line 408
    invoke-virtual {v14}, Lcom/htc/preference/HtcPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 409
    .local v10, extras:Landroid/os/Bundle;
    const-string v19, "preference_key"

    invoke-virtual {v14}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v19, "checked"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, description:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 415
    const v19, 0x7f0c1093

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 417
    :cond_0
    const-string v19, "summary"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 421
    .local v5, applicationLabel:Ljava/lang/CharSequence;
    const-string v19, "enable_warning_title"

    const v20, 0x7f0c0091

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v19, "enable_warning_message"

    const v20, 0x7f0c0092

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v19, "disable_warning_title"

    const v20, 0x7f0c0093

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v19, "disable_warning_message"

    const v20, 0x7f0c0094

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v17

    .line 434
    .local v17, settingsClassName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 435
    const-string v19, "settings_title"

    const v20, 0x7f0c106d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v19, "settings_component_name"

    new-instance v20, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_1
    const-string v19, "service_component_name"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 382
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 379
    .end local v3           #accessibilityEnabled:Z
    .end local v5           #applicationLabel:Ljava/lang/CharSequence;
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v7           #count:I
    .end local v8           #description:Ljava/lang/String;
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v11           #i:I
    .end local v12           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14           #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v15           #serviceEnabled:Z
    .end local v16           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v17           #settingsClassName:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 396
    .restart local v3       #accessibilityEnabled:Z
    .restart local v6       #componentName:Landroid/content/ComponentName;
    .restart local v7       #count:I
    .restart local v11       #i:I
    .restart local v12       #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v14       #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v16       #serviceInfo:Landroid/content/pm/ServiceInfo;
    .restart local v18       #title:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 401
    .restart local v15       #serviceEnabled:Z
    :cond_4
    const v19, 0x7f0c106f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 447
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v12           #info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v14           #preference:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v15           #serviceEnabled:Z
    .end local v16           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v18           #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v19

    if-nez v19, :cond_7

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 450
    new-instance v19, Lcom/htc/preference/HtcPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0c1090

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 479
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 481
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 495
    const/16 v7, 0x1a

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "incall_power_button_behavior"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 500
    .local v0, incallPowerBehavior:I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    move v2, v5

    .line 502
    .local v2, powerButtonEndsCall:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 506
    .end local v0           #incallPowerBehavior:I
    .end local v2           #powerButtonEndsCall:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "speak_password"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v3, v5

    .line 511
    .local v3, speakPasswordEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "long_press_timeout"

    iget v7, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 516
    .local v1, longPressTimeout:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 518
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    return-void

    .end local v1           #longPressTimeout:I
    .end local v3           #speakPasswordEnabled:Z
    .end local v4           #value:Ljava/lang/String;
    .restart local v0       #incallPowerBehavior:I
    :cond_1
    move v2, v6

    .line 500
    goto :goto_0

    .end local v0           #incallPowerBehavior:I
    :cond_2
    move v3, v6

    .line 509
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->initializeAllPreferences()V

    .line 203
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    .line 548
    packed-switch p1, :pswitch_data_0

    .line 571
    :goto_0
    return-object v0

    .line 550
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c1091

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c1092

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AccessibilitySettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 223
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 224
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 228
    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    const/4 v1, 0x1

    .line 235
    .end local v0           #stringValue:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 246
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 255
    :goto_0
    return v0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v0, p2, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    .line 255
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateAllPreferences()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Lcom/htc/preference/HtcPreference;

    if-ne v0, v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 216
    return-void
.end method
